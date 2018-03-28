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
			request.setCharacterEncoding("utf-8");
		//	String checkName = request.getParameter("chk"); --> text타입처럼 1개의 값이 전송 !! 
			
			String [] checks =	request.getParameterValues("chk");
			
			out.println("선택된 단말기 : ");
			
			for( String s : checks) //for each 
			{
				out.println( s );
			}
				
			String [] telecoms =	request.getParameterValues("telecom");
			
			out.println("선택된 통신사 : ");
			for( String s : telecoms) //for each 
			{
				out.println( s );
			}
			
		
	
	%>
</body>
</html>