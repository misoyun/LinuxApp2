<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.awt.event.FocusAdapter"%>
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
		
				request.setCharacterEncoding("UTF-8"); 
			//	String checkName = request.getParameter("chk");    //여러 항목이 오는 것들은 name으로 받을 수 없다
			
				String[] checks = request.getParameterValues("chk");  // 따라서 getParameterValues 사용 (여러 개의 값들을 받을 때)
				out.println("선택된 단말기: ");
				for (String s : checks)
				{
					out.println(s);
					
				}
				
				out.println("<br>");
				
				String[] telecoms = request.getParameterValues("telecom");  // 따라서 getParameterValues 사용
				out.println("선택된 통신사: ");
				for (String s : telecoms)
				{
					out.println(s);
					
				}
				
		%>

</body>
</html>