<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="model.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%


%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>메인</title>

<style>
</style>

</head>
<body>

	<form action="login.jsp" method="POST">
		id : <input type="text" name="id" /> 
		pw : <input type="password"	name="pw" />
		<button type="submit">로그인</button>
	</form>

	<a href="join.jsp"> 회원가입 </a>
</body>
</html>


