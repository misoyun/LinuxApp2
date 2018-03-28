package com.example.springex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

//타입 매핑: 컨트롤러에 요청! 클래스에만

//1. 메소드만 매핑 2. 클래스/메소드 매핑 3. 클래스만 매핑 (타입매핑:메소드 이름으로 바로 사용 )

@Controller
@RequestMapping("/post/*")
public class PostController {

	@RequestMapping
	public String insertform()
	{
		return "/WEB-INF/views/write.jsp"; // 작성하는 뷰 호출
	}
	
	
	//@ResponseBody -> view resolve 로 가지 않겠다  , out.println() 과 같은 기능, <<응답 출력>>
	@RequestMapping(method = RequestMethod.POST)  //매핑에 괄호가 없이 둔다 -->ex. 주소값/post/insert 이런 식으로, 함수이름을 통해 접근이 가능!
	public String insert( @ModelAttribute PostVO vo, Model model){
		
		model.addAttribute("post", vo);   // request.setAttribute("post", vo)
	//	return vo.getNo() + vo.getTitle() + vo.getContent(); 
		
		return "/WEB-INF/views/view.jsp";
	
	}
	@ResponseBody
	@RequestMapping
	public String delete(){	return "PostController:delete"; }
	@ResponseBody
	@RequestMapping
	public String update(){	return "PostController:update"; }
	@ResponseBody
	@RequestMapping
	public String select(){	return "PostController:select"; }
	@ResponseBody
	@RequestMapping
	public String find(){	return "PostController:find"; }
}
