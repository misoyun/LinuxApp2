<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
</head>
<body>
	<div align="center">
	<form action="BoardServlet" method="get">
		<input type="hidden"  name="no" value="${param.no}">
 		<input type="hidden"  name ="command" value="board_pass_check">
 		<table>	
			<tr>
				<th>비밀번호</th>
				<td> <input type="password" name="pass">        </td>
			</tr>
			<tr>
				<td colspan="2" align="center">
				<input type="submit"  value = "확인" class="btn btn-primary btn-sm">
				</td>
			</tr>
		</table>
	</form>
	</div>
</body>
</html>