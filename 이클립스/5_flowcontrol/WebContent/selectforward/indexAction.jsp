<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>  

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
		<%
			String site =  request.getParameter("site"); 
			StringBuffer url = new StringBuffer(); 
			
			switch( site)
			{
			case "네이버": url.append("naver.jsp"); 	break;
			case "구글":   url.append("google.jsp");	break;
			case "다음":   url.append("daum.jsp"); 	break;
			 
			}
		%>
		<jsp:forward page="<%=url.toString()%>"></jsp:forward>
</body>
</html>











