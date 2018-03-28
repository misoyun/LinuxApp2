<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>	
		<%
			String param1 = request.getParameter("param1"); 
			String param2 = request.getParameter("param2"); 
		
		%>
		to.jsp    : 		<br>
		param1 :  <%= param1 %><br>
		param2 :  <%= param2 %><br>
		<%= new java.util.Date() %>
		
</body>
</html>