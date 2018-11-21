<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="model.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<!-- Login Chk -->
<%@include file="/include/sessionChk.jsp" %>

<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	Board board = null;
	List<Board> lsboard = null;
	try {
		String url = "jdbc:mysql://localhost:3306/bbs?useUnicode=true&amp;characterEncoding=utf8";
		String id = "root";
		String pw = "apmsetup";
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url, id, pw);
		String sql = "select b.bid,b.btitle,b.bpass,b.bdate,b.id,(select name from member m where m.id=b.id)name "+ 
					 "from board b";
		pstmt = conn.prepareStatement(sql);
		//pstmt.setString(1,"test");
		rs = pstmt.executeQuery();

		lsboard = new ArrayList<Board>();

		while (rs.next()) {
			board = new Board();
			board.setBid(rs.getInt("bid"));
			board.setId(rs.getString("id"));
			board.setName(rs.getString("name"));
			board.setBtitle(rs.getString("btitle"));
			board.setBpass(rs.getString("bpass"));
			board.setBdate(rs.getString("bdate"));
			board.setId(rs.getString("id"));

			lsboard.add(board);
		}

	} catch (Exception e) {
		System.out.println(e.toString());
	}
	finally{
		if(rs!=null){
			rs.close();
		}
		if(pstmt!=null){
			pstmt.close();
		}
		if(conn!=null){
			conn.close();
		}
	}

	request.setAttribute("lsboard", lsboard);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<title>게시판</title>

<script>
$(document).ready(function(){
	$("#btnLogout").click(function(){
		location.href="logout.jsp";
	});
	$("#btnInsert").click(function(){
		location.href="insert.jsp";
	});
	
});


</script>

<style>
td {
	text-align: center;
}
</style>

</head>
<body>



	<table width="100%" cellpadding="0" cellspacing="0" border="0">
		<tr height="5">
			<td width="5"></td>
		</tr>
		<tr style="text-align: center;">

			<td width="73">번호</td>
			<td width="379">제목</td>
			<td width="73">작성자</td>
			<td width="164">작성일</td>

		</tr>
		<tr height="25" align="center">
		</tr>
		<tr height="1" bgcolor="#D2D2D2">
			<td colspan="6"></td>
		</tr>

		
		<c:forEach var="board" items="${lsboard}">
			<tr>
				<td>${board.bid}</td>
				<td><a href="content.jsp?bid=${board.bid}">${board.btitle}</a></td>
				<td>${board.name}  <small>[${board.id}]</small></td>
				<td>${board.bdate}</td>
			</tr>
		</c:forEach>
		

		<tr height="1" bgcolor="#82B5DF">
			<td colspan="6" width="752"></td>
		</tr>
	</table>

	<table width="100%" cellpadding="0" cellspacing="0" border="0">
		<tr>
			<td colspan="4" height="5"></td>
		</tr>
		<tr align="center">
			<td><input type=button id="btnInsert" value="글쓰기"></td>
		</tr>
		<tr align="center">
			<td><input type=button id="btnLogout" value="로그아웃"></td>
		</tr>
	</table>
</body>
</html>


