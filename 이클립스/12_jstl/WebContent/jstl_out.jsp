<%@ taglib uri="http://java.sun.com/jsp/jstl/core"      prefix="c" %> <!-- 기본기능 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"       prefix="fmt" %> <!-- 포맷 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> <!-- 함수기능 -->



<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/css/admin/main.css" rel="stylesheet" type ="text/css">

<title>Insert title here</title>
</head>

	
<body>
	<!-- 비교해보자 -->
	
	<c:out value="<h1> print Value </h1>" > </c:out>
	<c:out value="<h1> print Value </h1>" escapeXml="false"   > </c:out>
	
	<h1><%	out.println("print Value"); %></h1>
	
	<c:set var = "no" value = "4885"></c:set>
	<c:out value="value: ${ no }"> </c:out>
	
	<!-- no에 값을 set 안해줬을 때, default값 설정해 줄 수 있다. -->
	<c:out value="value: ${ no }" default="데이터 없는데.."> </c:out>
</body>	

</html>