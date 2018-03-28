<%@page import="java.sql.*"%>
<%@page import="bit.guestbook.dao.GuestbookDAO"%>
<%@page import="bit.guest.vo.GuestbookVO"%>
<%

	String name = request.getParameter("name");
	String pass = request.getParameter("pass");
	String content = request.getParameter("content");
	
	
	GuestbookVO gvo = new GuestbookVO();
	GuestbookDAO gdao = new GuestbookDAO();
	gvo.setName(name);
	gvo.setContent(content);
	gvo.setPw(pass);
	gdao.insertBook(gvo);
	
%>
<jsp:forward page = "index.jsp"></jsp:forward>