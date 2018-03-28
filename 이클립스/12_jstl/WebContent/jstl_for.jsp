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
		<!-- 반복문의 3요소 : 초기값, 조건, 증감 -->
		
		<%
			for(int i = 0; i < 5 ; i++)
			{
		%>		
				<h1> 값: <%= i %> </h1>
		<%		
			}
		%>
		<hr>
		<!--JSTL로 위의 것을 구현해보자! ( JSTL은 어떤 타입이건 무조건 "" 주어야 한다!!) -->
		<!--  step 을 생략하면 1씩 움직인다 (default = "1") -->
		<c:forEach var = "i" begin = "0" end= "4" step = "1">
		
		<h1> 값: ${i} </h1>

		</c:forEach>

		
</body>
</html>