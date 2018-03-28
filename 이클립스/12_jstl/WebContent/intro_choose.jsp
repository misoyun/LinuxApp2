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
			
		<c:choose>  
		
			<c:when test="${  param.color == 1}">   <!-- " "안에 공백 두면 안된다 -->  
				<span style= "color:red"> 빨강 </span>
			</c:when>
			
			<c:when test="${ param.color ==2 }">
				<span style= "color:blue"> 파랑 </span>
			</c:when>
			
			<c:when test="${ param.color ==3 }">
				<span style= "color:green"> 초록 </span>
			</c:when>

			<c:otherwise>
				<span style= "color:black"> 검정 </span>
			</c:otherwise>

		</c:choose>
		
		
</body>
</html>