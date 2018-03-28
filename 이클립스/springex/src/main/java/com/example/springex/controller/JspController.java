package com.example.springex.controller;

import java.io.IOException;
import java.io.Writer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JspController {

	@RequestMapping("/jsp")
	public String call(HttpSession session )  // 스프링에서 세션 쓰는법 
	{
		String url = null;
		String id = (String)session.getAttribute("id");
		
		System.out.println("id: "+ id);
		if( id == null)  // 로그인 안 됐다면
			url = "/WEB-INF/views/login.jsp";
		else
			url = "/WEB-INF/views/hello.jsp";
		
		return url;
	}
	
	@RequestMapping("/jsp2")
	public void call(HttpServletRequest req, Writer out) throws IOException
	{
		String no = req.getParameter("no");  //스프링에서 jsp에서 쓰는 객체들을 가져다가 사용할 수 도 있다는 것을 보여줌...
		out.write("parameter: " + no );
		
		
		
	}
	
	
}
