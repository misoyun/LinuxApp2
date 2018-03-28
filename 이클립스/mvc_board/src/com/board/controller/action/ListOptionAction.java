package com.board.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.dao.BoardDAO;
import com.board.dto.BoardVO;

public class ListOptionAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		BoardDAO dao = BoardDAO.getInstance(); 
		BoardVO vo = new BoardVO(); 
		
		String opt = request.getParameter("option");
		
		dao.getAllBoardList(opt);!!!!!!!!!!!!!!!!!!!!!!!!
		
		
	}

}
