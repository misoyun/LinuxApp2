<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="emp_mem.dao.Emp_MemDAO"%>
<%@page import="emp_mem.vo.Emp_MemVO"%>
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
		Emp_MemDAO dao = new Emp_MemDAO();

		
	//	ArrayList<Emp_MemVO> members = dao.selectMemberList();
		
	
	//	Iterator i = members.iterator();
		
	//	while (i.hasNext())
	//	{
	//		out.println(i.next().toString() + "<hr>");
	//   }
		
		

		dao.deleteMember();
		
		%>



</body>
</html>