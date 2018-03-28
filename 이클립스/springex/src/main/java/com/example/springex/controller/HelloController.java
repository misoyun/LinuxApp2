package com.example.springex.controller;

import org.springframework.stereotype.*;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
//컨트롤러 클래스임을 지정



//메소드 단독 매핑
//--> 메소드 하나하나가 단독요청 처리
// 컨트롤러 클래스 안에 여러개의 메소드 처리
@Controller  // 소스코드에 대한 정보를 가지고있는 별도의 주석 
public class HelloController {

	@RequestMapping("/hello")  //헬로라는 요청이 왔을 때 실행될 메소드야~ 라는 의미 , 스프링이 알아서 분기해주는 개념
	public ModelAndView hello()
	{
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", "Hello Spring");  //view 클래스로 넘어갈 파라미터
		mav.setViewName("/WEB-INF/views/hello.jsp"); //view 클래스
		
		return mav;
	}

	@RequestMapping("/hello2")  //메소드 하나하나에 매핑, 메소드 단독매핑
	public String hello2(Model model)
	{
		model.addAttribute("msg", "hello2");
		return "/WEB-INF/hello.jsp?msg=hello2";
	}
	
	
}
