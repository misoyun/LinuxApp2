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
		// String msg = request.getParameter("msg"); 이전 방식! 새로운 방식을 써보자!
		%>

		<h1>${ param.msg }   </h1>    <!-- 우와.. 이렇게도 되네 -->

		

</body>
</html>