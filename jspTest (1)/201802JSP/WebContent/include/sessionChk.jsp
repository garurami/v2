<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	//session Chk
	String s_id=null;
	try{
		s_id = session.getAttribute("s_id").toString();	
	}
	catch(Exception e){
	
	}
	if(s_id==null){
		response.sendRedirect("index.jsp");
	}
%>