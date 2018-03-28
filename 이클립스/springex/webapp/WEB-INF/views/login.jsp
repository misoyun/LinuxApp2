<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>가입화면</h1>		<!-- 현재 경로 설정 -->
	<form action ="${pageContext.servletContext.contextPath}/user/login" method= "post"> <!-- user라는 requestMapping에 있는 login 찾음 -->  
		아이디: <input type= "text" name = "id"><br>
		패스워드: <input type= "password" name= "pw"><br>
		<input type ="submit" value = "로그인"><br>	
	</form>	

</body>
</html>