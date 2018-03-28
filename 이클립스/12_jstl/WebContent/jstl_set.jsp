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

		<%!
			String str = "AAA";
		%>

		<!-- c:set 변수선언 -->
		<!-- scope 를 통해 변수의 유효한 범위 설정 가능  ex. page, session, application, request...-->
		
		<c:set var = "str" value = "AAA" scope="page"/>
		
		<!-- 태그와 태그 사이에 두는 값은 기본적으로 value 값이다. 
			<c:set var = "req_value"> 김철수 </c:set>   -->
		<c:set var = "req_value" value = "김철수">  </c:set>
		
		<c:set var="g_req" scope="request"> 127.0.0.1 </c:set>
		
		<!-- 태그 안에 el 도 넣을 수 있다. -->
		<c:set var = "age" value= "${ 10+ 18 }"></c:set>

		<!-- 특정 빈(객체)의 필드값 변경. 
		<c:set target="${user}" property="pw" value="4885"> </c:set>
		-->
		
<body>

 <!--만약 변수명이 같은 경우, 스크립틀릿을 쓰면 스크립틀릿에 선언한 변수가 출력, el을 쓰면 태그 라이브러리에 있는 변수 출력 -->

	문자열: ${str }<br>  
	요청값: ${req_value}<br>
	g_req: ${g_req}<br>
	나이: ${age }<br>


	<!--  변수 삭제 -->
	<c:remove var="age"/>  
	<hr>
	
	문자열: ${str }<br>  
	요청값: ${req_value}<br>
	g_req: ${g_req}<br>
	나이: ${age }<br>

</body>	

</html>