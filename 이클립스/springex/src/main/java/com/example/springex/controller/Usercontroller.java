package com.example.springex.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


// 타입  + 메소드 매핑  (@@@@컨트롤러에 어떻게 설정하며, 값을 어떻게 받는가@@@@)
//  클래스 /메소드 (매핑한 이름으로~)

@Controller
@RequestMapping("/user")  // 클래스에도 메소드에도 매핑을 함으로써 특정 클래스 안의 특정 메소드 호출 가능 
public class Usercontroller 
{

	//join 페이지 요청!
	@RequestMapping(value = "/join", method = RequestMethod.GET )  //get 방식의 조인 요청
	public String join() 
	{
		
		return "/WEB-INF/views/join.jsp";  // 뷰 리졸버 로 보냄
	}
	//join 실행
	@RequestMapping(value = "/join", method = RequestMethod.POST )  //post 방식의 조인 요청 (handler 가 구분하고 분기해줌)
	public String join(
			@RequestParam("name") String name,   //request.getParameter 와 같은 기능, 값을 받아옴
			@RequestParam("email") String email  //어노테이션의 사용법을 암기하자
					  ) 
	{
		
		System.out.println("join:POST: " + name + ":" + email);
		return "/WEB-INF/views/hello.jsp";  // 뷰 리졸버 로 보냄
	}	
	//로그인 화면 요청
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String loginForm()
	{
		return "/WEB-INF/views/login.jsp"; //	
	}
	//로그인 처리요청
	//@ResponseBody  // 클라이언트에 출력
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String loginForm(
		//	@RequestParam("id") String id,
		//	@RequestParam("pw") String pw  // 각각의 필드값을 받아옴
			
		@ModelAttribute UserVO vo, HttpSession session	  // 객체를 받아옴, 세션도 받을 수 있넹!

							)
	{
		session.setAttribute("id",  vo.getId());
		return "/jsp";  //매핑이 jsp 인 메소드로 가라!
		//return "UserController:login:POST" +"["+ vo.getId() +":"+ vo.getPw()+"]" ; //	
	}	
	
	
	
	
}
