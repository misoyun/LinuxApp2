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
		<%	
			// Object타입으로 저장 !! 따라서 캐스팅 해줘야 변수에 저장할 수 있다.
			String param1 = (String)request.getAttribute("param1"); 
			Calendar time = (Calendar)request.getAttribute("time");
			
		%>
		to.jsp    : 		<br>
		param1 :  <%= param1 %><br>
		time : <%=  time.getTime()	 %>
		
</body>
</html>