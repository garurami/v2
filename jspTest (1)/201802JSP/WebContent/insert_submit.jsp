<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="model.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String s_id = session.getAttribute("s_id").toString();
	String s_name = session.getAttribute("s_name").toString();
	
	
	int res = 0;
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	Board board = null;
	List<Board> lsboard = null;
	
	try {
		String url = "jdbc:mysql://localhost:3306/bbs?useUnicode=yes&characterEncoding=UTF-8";
		String id = "root";
		String pw = "apmsetup";
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url, id, pw);
		String sql = "INSERT INTO board(btitle,bcontent,bdate,id) VALUES(?,?,CURRENT_TIMESTAMP,?)";
		
		
		
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,title);
		pstmt.setString(2,content);
		pstmt.setString(3,s_id);
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


	if(res==1){
		response.sendRedirect("list.jsp");
	}
	else{
		response.sendRedirect("insert.jsp");
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>회원가입</title>

<script>
</script>

<style>
</style>

</head>
<body>
	
</body>
</html>



