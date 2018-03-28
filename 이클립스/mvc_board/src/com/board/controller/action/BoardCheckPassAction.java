package com.board.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.dao.BoardDAO;
import com.board.dto.BoardVO;

public class BoardCheckPassAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		    int no =  Integer.parseInt(  request.getParameter("no")); 
		String pass = request.getParameter("pass");
		String url = null;
		BoardDAO dao =  BoardDAO.getInstance(); 
		BoardVO vo =  dao.getBoardView(no); // no번호의 글 정보 !!  
	
		if( vo.getPass().equals( pass )) // 성공 !! 
		{
			url = "/board/checksuccess.jsp";
		}
		else // 실패  
		{
			url = "/board/boardcheackpass.jsp";
			request.setAttribute("msg", "password error !! ");
		}
		RequestDispatcher rd =  request.getRequestDispatcher(url);
		rd.forward(request, response);
		

	}

}










