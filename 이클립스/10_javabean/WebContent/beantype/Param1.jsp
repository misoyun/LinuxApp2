<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
		<jsp:useBean id = "user" class= "com.big2018.beans.User"> </jsp:useBean>
		<jsp:setProperty property="id" param="id" name="user" />
		<jsp:setProperty property="pw" param="pw" name="user" />
		
		<%
			//  String id = request.getParameter("id");   원래의 방식  --> bean을 써보자!
			
			out.println(user.getId()+ ":" + user.getPw());

		%>


</body>
</html>