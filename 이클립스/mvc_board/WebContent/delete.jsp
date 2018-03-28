<%@page import="com.board.dao.BoardDAO"%>
<%
int no = Integer.parseInt(request.getParameter("no"));
String pass = request.getParameter("pass");

BoardDAO dao = BoardDAO.getInstance();

dao.delete(no, pass);

response.sendRedirect("/index.jsp");

%>