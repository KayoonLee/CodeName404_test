package com.myproject.mycode.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import com.myproject.mycode.model.NoticeBoardModel;
import com.myproject.mycode.service.NoticeBoardService;




@Controller
public class NoticeBoardController {
	@Autowired NoticeBoardService service;
	
	
	// 리스트
	@RequestMapping("notice_list.notice")
	public String notice_list(Model model) throws Exception{
	List<NoticeBoardModel> list = service.notice_list();
	
	model.addAttribute("notice_list", list);
		return "noticeboard/notice_list";
	}

	
	
	
	
	
	
	
	
	
	
}
