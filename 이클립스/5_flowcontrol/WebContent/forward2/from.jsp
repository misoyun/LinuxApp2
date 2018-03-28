<%@page import="java.util.Calendar"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>	

		<!-- jsp:forward
			request.setAttribute 를 이용하여 전송 !! 
		 --> 
	    jsp:forward를 이용한 페이지 이동.... 
	    <%
	    	 Calendar cal =  Calendar.getInstance(); 
	    	 
			 request.setAttribute("time",     cal  );
	    	 request.setAttribute("param1", "1234" );
	    
	    %>
	    <jsp:forward page="to.jsp"></jsp:forward>
</body>
</html>

















