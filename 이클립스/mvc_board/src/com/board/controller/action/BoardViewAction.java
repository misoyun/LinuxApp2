package com.board.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.dao.BoardDAO;
import com.board.dto.BoardVO;

public class BoardViewAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int no =  Integer.parseInt( request.getParameter("no")); 
		BoardDAO dao = BoardDAO.getInstance(); 
		BoardVO vo  = dao.getBoardView( no);
		
		vo.setReadcount(vo.getReadcount()+1);
		
		dao.updateBoard(vo);
		
		vo = dao.getBoardView( no);
		
		request.setAttribute("board", vo);
		
		RequestDispatcher rd = request.getRequestDispatcher("/board/boardview.jsp");
		rd.forward( request , response); 
	}	

}









