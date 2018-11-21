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
<title>회원가입 완료</title>

<style>
</style>

<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

<script>
	$(document).ready(function(){
		$("#btnSubmit").click(function(){
			if($("#pw").val()==$("#pw2").val()){
				$("#frm").submit();
			}
			else{
				alert("PW확인값이 일치하지 않습니다. ");
			}
		});
		
	});
	

</script>

</head>
<body>
	<form id="frm" action="join_submit.jsp" method="POST">
		id : <input type="text" name="id" /> 
		pw : <input type="password" id="pw"	name="pw" />
		re_pw : <input type="password" id="pw2"	name="pw2" />
		이름 : <input type="text"	name="name" />
		<button type="button" id="btnSubmit">가입</button>
	</form>

	<a href="index.jsp"> 이전으로 </a>
</body>
</html>


