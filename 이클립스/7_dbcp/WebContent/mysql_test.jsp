
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.mem.dao.MemberDAO"%>
<%@page import="com.mem.vo.*"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.guestbook.util.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.*"%>

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
		MemberDAO dao =  new MemberDAO();	
		ArrayList<MemberVO> members = dao.selectMemberList();
		
		Iterator i =  members.iterator();
		while(i.hasNext())
		{
			out.println( i.next().toString() + "<hr>" ); 
		}
		
	%>
</body>
</html>













