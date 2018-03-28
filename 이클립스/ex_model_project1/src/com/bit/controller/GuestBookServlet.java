package com.bit.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.dao.GuestDAO;
import com.bit.vo.GuestVO;

/**
 * Servlet implementation class GuestBookServlet
 */
@WebServlet("/GuestBookServlet")
public class GuestBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GuestBookServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String action = request.getParameter("action");
		
		System.out.println(action);
		
		if(action.equals("add"))  // 추가기능
		{
			String name = request.getParameter("name"); 
			String password = request.getParameter("password");
			String content = request.getParameter("content");
			
		
			GuestVO vo = new GuestVO();
			
			vo.setName(name);
			vo.setPassword(password);
			vo.setContent(content);
			
			new GuestDAO().insert(vo);
		
			response.sendRedirect(request.getContextPath()+ "/GuestBookServlet?action=list");
			
		}
		else if(action.equals("del")) 
		{
			GuestVO vo = new GuestVO();
			int no = Integer.parseInt(request.getParameter("no"));
			
			vo.setNo(no);
			
			new GuestDAO().delete(vo);
			
			response.sendRedirect(request.getContextPath()+ "/GuestBookServlet?action=list");
			
		}
		else  //기본화면 출력
		{
			GuestDAO dao = new GuestDAO();
			ArrayList<GuestVO> list = dao.getList();  //dao를 통해 리스트 받아옴
			
			request.setAttribute("list", list); //리퀘스트에 리스트 담음
			
			RequestDispatcher rd =  request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
