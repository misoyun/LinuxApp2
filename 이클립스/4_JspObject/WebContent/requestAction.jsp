<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

		<%
			String[] infos = request.getParameterValues("info");
		
			for(String s : infos)
				
				out.println(s + "<br>");
			
		%>
		<hr>
		-----------------request info---------------------
		<hr>
		1. 클라이언트 IP <%=request.getRemoteAddr() %>
		<hr>
		2. 전송방식 <%= request.getMethod() %>		
		<hr>
		3. 프로토콜 <%= request.getProtocol() %>
		<hr>
		4. 요청 URL <%= request.getRequestURI() %>
		<hr>
		5. 쿼리스트링 <%= request.getQueryString() %>
		<hr>

</body>
</html>