<%@page import="java.util.Iterator"%>
<%@page import="com.board.dto.BoardVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.board.dao.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>
	<form action="BoardServlet" method="post">
	<input type="hidden" name= "command"  value ="insert_Action">
	<table border="1" width="500">
	
		<tr>
			<td>이름</td><td><input type="text" name="name"></td>
			<td>비밀번호</td><td><input type="password" name="pass"></td>
		</tr>
		<tr>
			<td colspan="4"><textarea name="content" cols="60" rows="5"></textarea></td>
		</tr>
		<tr>
			<td colspan="4" align="right"><input type="submit" VALUE=" 확인 "></td>
		</tr>
	</table>
	</form>
<%
	ArrayList<BoardVO> list = (ArrayList<BoardVO>)request.getAttribute("boardlist");
%>	

	<br>

	<%
		Iterator<BoardVO> i = list.iterator();
	
	while(i.hasNext())
	{
		BoardVO vv= i.next();
		
		
		
	%>

	<table width="510" border="1">
		<tr>
			<td><%=vv.getNo() %></td>
			<td><%=vv.getName() %></td>
			<td>2013-01-15</td>
			<td><a href="deleteform.jsp?no=<%=vv.getNo() %>">삭제</a></td>
		</tr>
		<tr>
			<td colspan="4"><%=vv.getContent() %></td>
		</tr>
	</table>
	
	<%
	}
	%>
	
</body>
</html>