package com.board.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.member.dao.MemberDAO;
import com.member.dto.MemberVO;

public class BoardLoginAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		MemberVO vo = new MemberVO();
		MemberDAO dao = MemberDAO.getInstance();
		
		vo.setId(request.getParameter("id"));
		vo.setPass(request.getParameter("pass"));
		
		System.out.println(vo.getId());
		String url = null;
		
		if(dao.loginUser(vo))
		{	
			
			request.getSession().setAttribute("memberid", vo.getId());
			url = "/BoardServlet?command=board_list";
		}
		else
		{
			url = "/board/boardlogin.jsp";
			request.setAttribute("msg", "password error !! ");
		}
		
		RequestDispatcher rd =  request.getRequestDispatcher(url);
		rd.forward(request, response);
		
	}

}
