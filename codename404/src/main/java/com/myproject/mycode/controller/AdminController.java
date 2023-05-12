package com.myproject.mycode.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.myproject.mycode.model.MemberDTO;
import com.myproject.mycode.service.AdminService;
import com.myproject.mycode.service.adminPaging;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService service;

	// 회원정보 리스트
	@RequestMapping("adminusers.manager")
	public String userList(String pageNum, MemberDTO users, Model model) {
		
		final int pageDataCount = 10;	// 화면에 출력할 데이터 갯수
		if (pageNum == null || pageNum.equals("")) {
			pageNum = "1";
		}
		int currentPage = Integer.parseInt(pageNum); // 현재 페이지 번호
		
		int total = service.getMemberCount(users);
		
		int startRow = (currentPage - 1) * pageDataCount + 1;
		int endRow = startRow + pageDataCount - 1;
		
		adminPaging ap = new adminPaging(total, pageDataCount, currentPage);
		users.setStartRow(startRow);
		users.setEndRow(endRow);
		
//		if(ap.getTotalPage() > 0) {
//			System.out.println(ap.getStartPage());
//			System.out.println(ap.getEndPage());
//		}
		
		
		int num = total - startRow + 1;
		
		List<MemberDTO> memberlist = service.getMemeberList(users);
		model.addAttribute("memberlist", memberlist);
		model.addAttribute("ap", ap);
		model.addAttribute("num", num);
		
		model.addAttribute("search", users.getSearch());
		model.addAttribute("keyword", users.getKeyword());
		
		return "admin/adminusers";
	}
	
	// 회원 상세보기 정보
	@RequestMapping("adminuserinfo.manager")
	public String userInfo(String pageNum, String id, Model model) {
		MemberDTO memberinfo = service.getMember(id);
		model.addAttribute("memberinfo", memberinfo);
		model.addAttribute("pageNum", pageNum);
		
		return "admin/adminuserinfo";
	}
	
	@RequestMapping("adminuserdelete.manager")
	public String userdelete(String id) {
		System.out.println("test");
		service.userDelete(id);
		return "redirect:/adminusers.manager";
	}
	
}
