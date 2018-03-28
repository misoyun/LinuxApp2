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
	<!-- jsp:include 와 같은 기능.. -->
	
	
	<c:url var="menu" value="http://localhost:8080/12_jstl/include/navigation.jsp"></c:url>
	
	
	<table border ="1" width="1024px">
		<tr>
			<td colspan="2"> <c:import url= "/include/header.jsp"></c:import> </td>
		</tr>
		<tr height="400px">
			<td> <c:import url= "${menu }"></c:import></td>
			<td></td>
		</tr>
		<tr>
			<td> <a href="${menu }"> 메뉴로 이동 </a></td>
			<td></td>
		</tr>
	
	
	</table>



</body>	

</html>