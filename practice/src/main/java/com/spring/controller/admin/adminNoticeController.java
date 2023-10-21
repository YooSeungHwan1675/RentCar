package com.spring.controller.admin;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class adminNoticeController {

	@RequestMapping(value = "/admin/notice.do", method = RequestMethod.GET)
	public String notice(Model model, @RequestParam(value="currentPage", defaultValue="1") int currentPage) {
		
		
		return "admin/notice";
	}
	
}
