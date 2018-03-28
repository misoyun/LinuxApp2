<%@page import="com.board.dao.BoardDAO"%>
<%@page import="com.board.dto.BoardVO"%>
<%
	String name = request.getParameter("name");
	String pass = request.getParameter("pass");
	
	BoardVO vo = new BoardVO();
	BoardDAO dao = BoardDAO.getInstance();
	
	vo.setName(name);
	vo.setPass(pass);
	
	dao.insert(vo);
	
	response.sendRedirect("/index.jsp");
	
	
	
	
		
%>
