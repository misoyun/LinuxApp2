<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

		<h1> 연산 </h1>

		${ IV + 100 * 100 / 40 } <br>
		${ DV + 100 * 100 / 40 } <br>

		${ IV > DV } <br>
		${ IV == DV} <br>
		
		${ IV >= 65 && DV<=92 }<br>
		
		${ empty UserInfo } <br>
		${ not empty UserInfo } <br>

</body>
</html>