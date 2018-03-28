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
		
	<!-- jsp:forward 와 동일 -->	
	
	<!-- redirect 사용해서 페이지, 값 넘겨주기 -->
	<c:redirect url="jstl_redirect_show.jsp">   <!--  jsp 뒤에 ? 하고 변수=값 추가하면 글로 값이 간다  -->
		<c:param name="no"> 4885</c:param>    <!-- get방식 파라미터! -->
		<c:param name="title" value = "asap"> </c:param>
		
	</c:redirect>



</body>	

</html>