<%@ taglib uri="http://java.sun.com/jsp/jstl/core"      prefix="c"   %> <!-- 기본 기능  -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"       prefix="fmt" %> <!-- 포맷  -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn"  %> <!-- 함수 기능  -->


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page session="true" %>  
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
</head>
<body>

	<form action="BoardServlet"  method="post" >
		<input type="hidden" name = "command" value ="board_login" >
		<div id="wrap" align="center">
		<h1>로그인</h1>
		<table>
			<tr>
				<th>아이디</th>
				<td> <input type="text" name ="id">  </td>
				<th>비밀번호</th>
				<td> <input type="password" name ="pass"> </td>
			</tr>
		<br>
			<tr>
				<td colspan="3"> 
					<input type="submit" value = "로그인" class="btn btn-primary btn-sm"> 
					<input type="reset" value = "초기화" class="btn btn-primary btn-sm">
					<input type="button" value ="회원가입" class="btn btn-primary btn-sm" onclick = "location.href='BoardServlet?command=board_reg_form'" >
				</td>
			</tr> 
		</table>
		
	</div>
	</form>
</body>
</html>








