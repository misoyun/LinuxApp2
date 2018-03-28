<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "java.util.*" %>    
<% 
request.setCharacterEncoding("utf-8");
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

		<%
		//	String[] names = request.getParameterValues("ch");  // name 속성이 chk인 엘리먼트의 값들을 가져와라
		//	request.getParameterNames();   //모든 엘리먼트의 이름을 가져와라
		
			Enumeration names = request.getParameterNames();
		
			while(names.hasMoreElements())  // 다음 엘리먼트가 존재하는가? Iterator 과 쓰임이 유사하다
			{
				String name = (String)names.nextElement();
				
				if(name.startsWith("ch"))     //ch 로 시작하는 문자열이라면~
				out.println(request.getParameter( name ) + "<br>");
				
			}
			
			
		
			
			
		%>

</body>
</html>