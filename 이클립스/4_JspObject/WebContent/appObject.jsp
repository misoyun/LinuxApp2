<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import ="java.util.Calendar" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

		1. 서버 정보 <%= application.getServerInfo() %>
		2. 버전 정보 <%= application.getMajorVersion() %>
		3. 로그 기록 <% 
						
					Calendar d = Calendar.getInstance();
					application.log("["+  d.getTime()   + "]"); 
		
		
					%>

</body>
</html>