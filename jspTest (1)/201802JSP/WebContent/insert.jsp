<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="model.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!-- Login Chk -->
<%@include file="/include/sessionChk.jsp" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>메인</title>

<style>
</style>

<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
</head>
<body>

	<form action="insert_submit.jsp" method="POST">
		제목 : <input type="text" name="title" />  <br> 
		내용 : <textarea	name="content" ></textarea>	
		
		
		<button type="submit">작성완료</button>
	</form>

	<a href="list.jsp"> 목록 </a>
</body>
</html>


