<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="model.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String t_id = request.getParameter("id");
	String t_pw = request.getParameter("pw");
	String t_name = request.getParameter("name");
	
	
	int res = 0;
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
		String sql = "INSERT INTO member(id,pass,name) VALUES(?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,t_id);
		pstmt.setString(2,t_pw);
		pstmt.setString(3,t_name);
		res = pstmt.executeUpdate();

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

	request.setAttribute("res", res);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>회원가입</title>

<script>
	if(${res}==0){
		alert("회원가입 실패  (id 중복)");
		location.href="join.jsp";
	}
	else if(${res}==1){
		alert("회원가입 성공 ");
		location.href="index.jsp";
	}
</script>

<style>
</style>

</head>
<body>
	
</body>
</html>


