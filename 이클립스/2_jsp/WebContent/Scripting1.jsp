<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!--  선언부 !! -->	
	<%!    
		String checkId = "Guest";
		String checkPw = "4885"; 
	
	%>
	<!--  스크립틀릿 !!  --> 
	<%
		String id  = request.getParameter("id"); 
		String pw  = request.getParameter("pw");
		
		if(id.equals(checkId) && pw.equals(checkPw)) 
			out.println("로그인 성공 ");
		else 
			out.println("로그인 실패" );
		
	%>
	<!--  익스프레션 :  웹서버에서 실행되고 결과만 전송   --> 
	저장 아이디 : <%= checkId %>
	저장  암호  : <%= checkPw %>
	
	
	
</body>
</html>






