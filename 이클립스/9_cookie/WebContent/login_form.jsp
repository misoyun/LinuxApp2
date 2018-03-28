<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
	String id = "";
	
	Cookie[] Cookies = request.getCookies();  // 쿠키들을 가져오기
	
	if(Cookies != null && Cookies.length > 0)
	{
		for(int i = 0 ; i < Cookies.length; i++)
		{
			if(Cookies[i].getName().equals("id"))
			{
				id = Cookies[i].getValue();
			}
			
		}
		
		
	}

%>



<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
		
		<form action= "login_action.jsp" method = "post">
			id: <input type = "text" name = "id" value = "<%= id %>">
			<input type = "checkbox" name="idsave" value="save"> 아이디 저장 <br>
			pw: <input type="password" name= "pw"> <br>
			
			<input type="submit" value = "로그인">
		
		
		
		
		</form>
		
</body>
</html>