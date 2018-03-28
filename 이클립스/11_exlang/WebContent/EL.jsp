<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.big2018.beans.User"%>  
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

		<%
			User user = new User();
			user.setId("bit1234");
			user.setPw("4885");
			user.setName("김철수");
			user.setAge(20);
			user.setBirthday("2000/10/10");
		
			request.setAttribute("UserInfo", user);   //값 담기
			
			RequestDispatcher rd = request.getRequestDispatcher("show.jsp");
			rd.forward( request, response );
			
		%>
		<!-- 표현식 -->
		<h1> <%=user.getId() %></h1>
		
		<!-- EL -->
		<h1> $ </h1>

</body>
</html>