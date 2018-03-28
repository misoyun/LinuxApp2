<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>	
		
		<!-- 선언  -->
		<%!
			int i; 
			
			public int add( int x ,  int y ) {return x + y;}
			
		%>
		<!-- java   -->
		<%	
			for(i = 0; i< 10; i++) 
				out.println( add( i , i) + "<br>");
		
		%> 
		<!--  표현식 (익스프레션 )--> 
		<%= 10 + 10  %>
		
		
</body>
</html>




















