<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
		<!-- 산술식 -->
 		${10 + 10}
 		<%// 10 + 10 %>
 		
 		<!-- 변수 출력 -->
 		${ param.value }
 		<%=//request.getParameter("value") %>
 		
 		<!-- static 함수 호출 -->
 		${ Math.abs(-20) }
 		<%// Math.abs(-20) %>

</body>
</html>