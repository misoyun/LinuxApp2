<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
		<!--  response.sendRedirect  
			- 클라이언트에서 포워딩하는 방법 !! 
		
		  -->
		<%
			Random r =  new Random();
			int val = r.nextInt(); 
			//get 			
			response.sendRedirect("to.jsp?no="+val);
	
		%>
</body>
</html>













