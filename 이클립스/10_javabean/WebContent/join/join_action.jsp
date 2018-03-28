<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

		<jsp:useBean id="user" class = "com.big2018.beans.User"></jsp:useBean>
			<jsp:setProperty name = "user" property = "*" />   <!-- * 하면 다 가져오고 이름이 맞는 애들을 매칭해준다/ input태그의 name과 param 비교-->
			
			
			
					<table border = "1">
			<tr>
				<td>아이디</td>
				<td><jsp:getProperty name = "user" property="id"></td>
			</tr>
			<tr>
				<td>패스워드</td>
				<td><%=user.getPw() %></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><%=user.getName() %></td>
			</tr>
			<tr>
				<td>나이</td>
				<td><%=user.getAge() %></td>
			</tr>
			<tr>
				<td>생일</td>
				<td><%=user.getBirthday() %></td>
			</tr>
			<tr>
				<td colspan="2"><input type = "submit" value = "가입"></td>
				<td></td>
			</tr>
			


</body>
</html>