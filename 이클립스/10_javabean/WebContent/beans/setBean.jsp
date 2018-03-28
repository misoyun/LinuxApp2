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

		<jsp:useBean id= "user" class ="com.big2018.beans.User" scope = "request" > </jsp:useBean>   <!-- 변수들을 담을 객체를 선언한 것 -->
		
		<%  //값을 객체에 넣어준 것
			user.setAge(20);
			user.setName("jin");
			user.setBirthday("910218");
		
		%>
		<jsp:forward page = "getBean.jsp"></jsp:forward> <!-- 페이지 이동 -->

</body>
</html>