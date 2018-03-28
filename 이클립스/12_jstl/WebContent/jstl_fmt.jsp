<%@page import="java.util.Date"%>
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
	
	
	<!-- fmt : 형식 지정 -->
	<fmt:formatNumber value="1234.5678" pattern="#.###"></fmt:formatNumber>	<br>	
	<fmt:formatNumber value="12345678" groupingUsed="true"></fmt:formatNumber> <br>	
	<fmt:formatNumber value="4" type="currency" currencySymbol="$"></fmt:formatNumber> <br>
	
	<fmt:formatDate value="${now }" type="date"/>	
	<fmt:formatDate value="${now }" type="date" pattern="YYYY/MM/DD"/>	
	
		
</body>	

</html>