<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

				<h1>  객체 접근  </h1> <!--  어떤 스코프에 저장할 것인가!  -->
		
		request: ${requestScope.user1.id } <br>
		
		session: ${sessionScope.user2.id } <br>

		application: ${applicationScope.user3.id } <br>
		
				<h1>  객체 접근2 </h1>
		
		request: ${ user1.id } <br>
		
		session: ${ user2.id } <br>

		application: ${ user3.id } <br>
</body>
</html>