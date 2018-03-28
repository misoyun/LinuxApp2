package com.example.springex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller  //요청받는 애다~ 라는 것을 스프링한테 알려주는 역할.
public class GuestController {

	// ~~~~springex/show?no=4885 == GET
	//String no = request.getParameter("no")  // jsp 방식
	@ResponseBody
	@RequestMapping("/show")
	public String view( @RequestParam("no") int no )  // 형태가 자동으로 바뀜
	{												  // no에서 받아온 값이 int no 로 들어감
		
		return "param : " + no;
	}
	
	@ResponseBody
	@RequestMapping("/show1")
	public String view(
					@RequestParam("no") int no,
					@RequestParam("id") String id
				//http://localhost:8080/springex/show1?no=4885&id=park	
					  )
	{											
		
		return "param : " + no + id;
	}
	
	@ResponseBody
	@RequestMapping("/view")
	public String show( @RequestParam(value = "no",  // 파라미터 이름
								      defaultValue = "-1",   // 기본값, 디폴트 파라미터(매개변수 없을 때 -1을 가짐)
								      //(이거 안 하고 매개변수 안주면 400번 에러 뜬다)
								      required= false)  // 요구사항
									  int no )  
	{											
		return "param : " + no;
	}
	
	//view?no=4885 ---> GET 방식
	
	@ResponseBody
	@RequestMapping("view/{no}")  // 이렇게도 된다   --> 주소창에 ~~~view/4885 로 하는 것
	public String foo( @PathVariable("no") int no )   
	{
		return "param : "+ no;
		
	}
	
	
}
