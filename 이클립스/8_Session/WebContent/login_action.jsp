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
			//web.xml에 저장된 마스터계정 정보!!
			String adminId = application.getInitParameter("AdminId"); // web.xml에 있는 param name 을 불러옴
			String adminPw = application.getInitParameter("AdminPw");
		
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			
			if(id.equals(adminId) && pw.equals(adminPw))
			{ // 로그인 성공
				// 1) 세션객체에 로그인 성공한 아이디를 저장
				session.setAttribute("AdminId", id);				
				out.println("로그인 성공. <a href = \"login_check.jsp\"> 로그인 체크   </a>" );
			}
			else if (id.equals(adminId))
			{	//pw 오류
				out.println("<script> alert(\"비밀번호 오류\"); history.back(); </script>");
			}	
			else
			{	//id 오류
				out.println("<script> alert(\"아이디 오류\"); history.back(); </script>");
			}
				
				
		%>
</body>
</html>