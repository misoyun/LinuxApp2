<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
		<%
			session.invalidate();
			// session.removeAttribute("AdminId");
		%>

		<h3> 로그아웃 하였습니다</h3> <a href = "login_form.jsp"> 처음으로 </a>

</body>
</html>