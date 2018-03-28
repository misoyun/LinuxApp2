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
		
			//1)면
				String noodle = request.getParameter("noodle");
			
			//2)빵
				String bread = request.getParameter("bread");
			
			//3)게임			
				String[] games = request.getParameterValues("game");   //여러 개가 선택될 수 있을 때는 getParameterValues!


		%>

<body>

		면: <%=noodle %> <br>
		빵: <%=bread %>	<br>
		
		게임:
		<%
			if(games != null)    //아무것도 선택안되었을 경우 대비
			{
				
				for(String s : games)
				{
					out.println(s);
					
				}
				/*
				for(int i = 0 ; i < games.length ; i++)
					out.println(games[i]  + "<br>");
				*/
			}
		
		%>


</body>
</html>