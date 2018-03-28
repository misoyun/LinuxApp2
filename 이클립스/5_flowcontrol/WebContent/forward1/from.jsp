<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>	
		<% String code = "4885"; %>
		<!-- jsp:forward --> 
	    jsp:forward를 이용한 페이지 이동.... 
	    <jsp:forward page="to.jsp">
	    	<jsp:param value="1234" name="param1"/>
	    	<jsp:param value="5678" name="param2"/>
	    </jsp:forward>
</body>
</html>

















