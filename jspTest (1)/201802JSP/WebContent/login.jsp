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
	
	int res = 0;
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String s_id = null;
	String s_name = null;
	
	try {
		String url = "jdbc:mysql://localhost:3306/bbs?useUnicode=true&amp;characterEncoding=utf8";
		String id = "root";
		String pw = "apmsetup";
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url, id, pw);
		String sql = "SELECT id,name FROM member WHERE id=? AND pass=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,t_id);
		pstmt.setString(2,t_pw);
		
		rs = pstmt.executeQuery();
		while(rs.next()){
			s_id = rs.getString("id");
			s_name = rs.getString("name");
			
			session.setAttribute("s_id", s_id);
			session.setAttribute("s_name", s_name);		
			res = 1;
			
			
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
		request.setAttribute("res", res);
	}
	
	


	
	
	
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title></title>

<script>
	if(${res}==1){
		alert("환영합니다.");
		location.href="list.jsp";
	}else{
		alert("로그인 정보가 일치하지 않습니다.");
		location.href="index.jsp";
	}
</script>

<style>
</style>

</head>
<body>
	
</body>
</html>



