package com.board.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.dao.BoardDAO;
import com.board.dto.BoardVO;

public class BoardUpdateAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		BoardDAO dao = BoardDAO.getInstance(); 
		BoardVO vo = new BoardVO(); 
		
		vo.setNo(     Integer.parseInt(request.getParameter("no")));
		vo.setName(   request.getParameter("name") );
		vo.setEmail(  request.getParameter("email") );
		vo.setPass(   request.getParameter("pass"));
		vo.setTitle(  request.getParameter("title")); 
		vo.setContent(request.getParameter("content"));
		
		dao.updateBoard( vo ); 
		
		// list페이지 이동 !! 
		new BoardListAction().execute(request, response);
		
		
	}

}
