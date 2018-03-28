
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>	
		<!-- 현재 시간 출력 !!  -->		
		<%!
			Calendar cal =  Calendar.getInstance();
			String naver = "http://www.naver.com";
		%>
			
			
		<%
			for(int i = 0; i<5; i++)
			{
		%>
				<h1> <%=  cal.getTime()  %> </h1> 
		<%
			}
		%>	
		<a href="<%= naver %>">  네이버  </a>		
</body>
</html>




















