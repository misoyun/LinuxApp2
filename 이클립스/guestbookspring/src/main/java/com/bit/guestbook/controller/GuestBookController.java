package com.bit.guestbook.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bit.guestbook.dao.GuestBookDAO;
import com.bit.guestbook.vo.GuestBookVO;

@Controller
@RequestMapping("/guest")
public class GuestBookController {

/*
	@RequestMapping("/insertform")
	public String insertform()
	{
		return "/WEB-INF/views/write.jsp";
	}
	
	@RequestMapping("/insert")
	public String insert(@ModelAttribute GuestBookVO vo, Model model)
	{
		model.addAttribute("guest", vo);
		
		return "WEB-INF/views/view.jsp";	
	}
*/	
	@RequestMapping("/add")
	public String add(@ModelAttribute GuestBookVO vo, Model model)
	{
		GuestBookDAO dao = new GuestBookDAO();
		
		vo.setBookNum(2);
		vo.setTime("yes");
		
		dao.insertGuest(vo);
		
		model.addAttribute("guestlist", vo);
		
		
		return "/WEB-INF/views/view.jsp";
		
	}
	
	

	
	
}
