<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%
	request.setCharacterEncoding("utf-8"); 
	//1) 면 
	String noddle =  request.getParameter("noodle");
	//2) 빵 
	String bbang  =  request.getParameter("bbang");	
	//3) 게임 
	String[]games =  request.getParameterValues("game");  

%>

<body>
		면 : <%= noddle %> <br> 
		빵 : <%= bbang %>  <br>
		<hr>
		<%	
			if(games != null )
			{
				for( int i = 0; i< games.length; i++) 
					out.println( games[i] + "<br>");
				
			}
			
		%>			
</body>
</html>















