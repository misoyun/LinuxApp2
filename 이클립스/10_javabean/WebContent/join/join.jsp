<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="join_action.jsp" method="post">


		<table border = "1">
			<tr>
				<td>아이디</td>
				<td><input type="text" name = "id"></td>
			</tr>
			<tr>
				<td>패스워드</td>
				<td><input type="password" name = "pw"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name= "name" ></td>
			</tr>
			<tr>
				<td>나이</td>
				<td><input type = "number" name= "age"></td>
			</tr>
			<tr>
				<td>생일</td>
				<td><input type = "text" name = "birthday"></td>
			</tr>
			<tr>
				<td colspan="2"><input type = "submit" value = "가입"></td>
				<td></td>
			</tr>
		</table>

	</form>

</body>
</html>