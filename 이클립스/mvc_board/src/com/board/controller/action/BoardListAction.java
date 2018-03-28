package com.board.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.dao.BoardDAO;
import com.board.dto.BoardVO;

public class BoardListAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
/*		String url;
		BoardDAO dao = BoardDAO.getInstance();
		if( request.getSession().getAttribute("memberid") != null)
		{
			ArrayList<BoardVO> list = dao.getAllBoardList();
			request.setAttribute("boardlist", list ); 
			
			
			url = "/board/boardlist.jsp"; 
		}
		else 
		{
			url = "/board/boardlogin.jsp";
		}
		RequestDispatcher rd  = request.getRequestDispatcher(url); 
		rd.forward(request , response);
*/		
		
		
		
		BoardVO vo = new BoardVO();
		BoardDAO dao = BoardDAO.getInstance();
		ArrayList<BoardVO> list = dao.select();
		
		request.setAttribute("boardlist", list);
		
		RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
		rd.forward(request, response);
		
		new 
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}









