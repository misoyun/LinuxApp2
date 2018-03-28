<%@page import="com.bit.vo.GuestVO"%>
<%@page import="java.util.ArrayList"%>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>

<%
	ArrayList<GuestVO> list = (ArrayList<GuestVO>)request.getAttribute("list"); 


%>

<body>
	<form action="<%= request.getContextPath() %>/GuestBookServlet" method="post">
	<input type="hidden" name="action" value="add">   <!-- 히든의 action 값을 통해 컨트롤러가 행동을 판단 -->
	<table border="1" width="500">
		<tr>
			<td>이름</td><td><input type="text" name="name"></td>
			<td>비밀번호</td><td><input type="password" name="password"></td>
		</tr>
		<tr>
			<td colspan="4"><textarea name="content" cols="60" rows="5"></textarea></td>
		</tr>
		<tr>
			<td colspan="4" align="right"><input type="submit" VALUE=" 확인 "></td>
		</tr>
	</table>
	</form>
	<br>
	
	<%
	if( list !=null && list.size() >1 )
	{	
	
		for(GuestVO v : list)
		{
	%>
	
	<table width="510" border="1">
		<tr>
			<td><%=v.getNo() %></td>
			<td><%= v.getName() %></td>
			<td><%=v.getRegDate().toString() %></td>
			<td><a href="<%= request.getContextPath() %>/GuestBookServlet?action=del&no=<%=v.getNo()%>">삭제</a></td>
		</tr>
		<tr>
			<td colspan="4"><%=v.getContent().replaceAll("\n", "<br>")%></td>
		</tr>
	</table>
	<%
		}
	}	
	%>
	
</body>
</html>