<%@ taglib uri="http://java.sun.com/jsp/jstl/core"      prefix="c" %> <!-- 기본기능 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"       prefix="fmt" %> <!-- 포맷 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> <!-- 함수기능 -->



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
			if( request.getParameter("color").equals("RED"))
			{	
		%>
			<span style= "color:red"> 빨강 </span>
		<% 
			}
			else if( request.getParameter("color").equals("BLUE"))
			{
		%>
			<span style= "color:blue"> 파랑 </span>
		<%
			}
			else
			{
		%>
			<span style= "color:green"> 초록 </span>
		<%
			}    // 이렇게 복잡한 코딩을 보완하기 위해 jstl lib 사용!
		%>	



</body>
</html>