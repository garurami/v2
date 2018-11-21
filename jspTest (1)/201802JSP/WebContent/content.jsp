<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="model.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<!-- Login Chk -->
<%@include file="/include/sessionChk.jsp" %>

<%
	Integer bid = Integer.parseInt(request.getParameter("bid"));	

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
		/*
		String sql = "SELECT b.bid,b.btitle,b.bpass,b.bdate,b.id,(select name from member m where m.id=b.id) name "+ 
				 	 "FROM board b" +
				 	 "WHERE b.bid = 1";
		*/
		String sql = "SELECT bid,btitle,bdate,bcontent,budate,id,(select name from member m where m.id=b.id) name FROM board b WHERE bid="+bid;
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		while (rs.next()) {
			board = new Board();
			board.setBid(rs.getInt("bid"));
			board.setBtitle(rs.getString("btitle"));
			board.setBcontent(rs.getString("bcontent"));
			board.setBdate(rs.getString("bdate"));
			board.setBudate(rs.getString("budate"));
		    board.setId(rs.getString("id"));
		    board.setName(rs.getString("name"));
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
	request.setAttribute("board", board);
	request.setAttribute("s_id", s_id);

	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<title>게시판</title>

<script>
$(document).ready(function(){
	$("#btnList").click(function(){
		location.href="list.jsp";		
	});
	$("#btnEdit").click(function(){
		location.href="edit.jsp?bid=${board.bid}";
	});
	$("#btnDel").click(function(){
		var result = confirm("삭제하시겠습니까?");

		if(result){
			location.href="del_submit.jsp?bid=${board.bid}";

		}else {
		  alert("취소되었습니다.");
		}
		
		
		
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
	글쓴이 : ${board.name}  <small>[${board.id}]</small>  <br/>
	작성일 : ${board.bdate}   <br/>
	<c:if test="${board.budate ne NULL}">
		수정일 : ${board.budate} <br/>
	</c:if>
	제목 :  ${board.btitle} <br/> 
	내용 :  ${board.bcontent} <br/>
	
	
	<button id="btnList">돌아가기</button>
	
	
	<c:if test="${board.id == s_id}">
		<button id="btnEdit">수정하기</button>
		<button id="btnDel">삭제하기</button>
	</c:if>
	




</body>
</html>


