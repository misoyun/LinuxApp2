package com.board.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.dao.BoardDAO;
import com.board.dto.BoardVO;

public class OrderReadCountAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		BoardDAO dao = BoardDAO.getInstance(); 
		
		
		ArrayList<BoardVO> list = dao.getAllBoardListOBReadCount();
		
		request.setAttribute("boardlist", list ); 
		
		RequestDispatcher rd  = request.getRequestDispatcher("/board/boardlist.jsp"); 
		
		rd.forward(request , response);		
		
	}

}
