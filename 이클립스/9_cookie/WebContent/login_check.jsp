<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%
	String adminId = (String)session.getAttribute("AdminId");

	if(adminId == null)
	{//로그인 정보 없음
		out.println("로그인 하셔야 사용 가능합니다.<a href = \"login_form.jsp\"> 로그인 하러가기</a>" );
		
	}
	else
	{
		out.println(adminId + "님 방가방가" + "<a href = \"logout.jsp\"> 로그아웃</a> ");
		
	}


%>


</head>
<body>

</body>
</html>