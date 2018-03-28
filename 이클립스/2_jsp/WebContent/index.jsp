<!--    JSP  기본 문법   -->
<!-- 지시자   -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 스크립틀릿 <%  %> 
	- 자바 소스 코드 !! 
-->		
	<!-- 선언부  -->
	<%!
		int i;
	
		public String foo() 
		{
			return "Call foo() <br>";
		}
	%>

	<table >
	<% 
		for(i=1; i<6; i++)
		{
	%>
		<tr>  <!-- 익스프레션 : 자바식 or 변수  -->
			<td> <%= i %>     </td>
			<td>김철수 + <%= foo() %></td>
		</tr>
	<%
		}
	%>
	
	</table>	
	

</body>
</html>












