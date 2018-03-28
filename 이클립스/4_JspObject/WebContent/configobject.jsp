<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


		<%!
			String startvalue;
			String value;
			public void jspInit()   //jsp파일이 servlet으로 변환될때 딱 한번 실행되는 것
			{
				ServletConfig sc = getServletConfig();
				
				value = startvalue = sc.getInitParameter("val"); // xml 에 저장된 것을 빼오는 개념
				
				System.out.println("----------jspInit"+ value +"----------");
			}
		
			public void jspDestroy()
			{
				value = startvalue;
				
				System.out.println("----------jspDestroy" + value +"----------");
			}
			
		%>
		value : <%= value %>
		
		<%value +=10; %>  <!--  수식이니까 세미콜론 필요 -->

</body>
</html>