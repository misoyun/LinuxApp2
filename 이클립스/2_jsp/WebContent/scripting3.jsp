<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>	
		<!-- 1~100까지의 합 !!    -->
		<%! 
			int i; 
			int result = 0;
		%>
		<% 
			for(i = 1; i<=100; i++)
				result += i;
		%>	
		
		
		<h1> <%= result %> </h1>		
		
		
		
</body>
</html>




















