<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="checkNameAction.jsp" method="post">
		음식 <br> 
		<input type="text" name ="test1"    >
		<input type = "checkbox" name ="ch1" value ="짬뽕" > 짬뽕 <br>
		<input type = "checkbox" name ="ch2" value ="짜장" > 짜장 <br>
		<input type = "checkbox" name ="ch3" value ="탕슉"  checked="checked" > 탕슉 <br>
		<input type="submit" value="확인">

	</form>
</body>
</html>