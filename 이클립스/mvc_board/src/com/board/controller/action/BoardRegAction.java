package com.board.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.member.dao.MemberDAO;
import com.member.dto.MemberVO;

public class BoardRegAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		MemberDAO dao = MemberDAO.getInstance();
		MemberVO vo = new MemberVO();
		
		vo.setId(request.getParameter("id"));
		vo.setPass(request.getParameter("pass"));
				
		
		
		String url = null;
		
		dao.registerUser(vo);
		
/* 이게 안 되는 이유?? 질문...
		url = "/BoardServlet?command=board_login";
		
		RequestDispatcher rd =  request.getRequestDispatcher(url);
		rd.forward(request, response);
*/		
		new BoardLoginFormAction().execute(request, response);
		
	}

}
