package com.myproject.mycode.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.myproject.mycode.model.MemberDTO;
import com.myproject.mycode.model.NoticeBoardModel;
import com.myproject.mycode.service.NoticeBoardService;
import com.myproject.mycode.service.adminPaging;




@Controller
public class NoticeBoardController {
	@Autowired NoticeBoardService service;
	
	
	// 리스트
	@RequestMapping("notice_list.notice")
	public String notice_list(String pageNum, NoticeBoardModel noticeBoardDTO, Model model) throws Exception{
	
		final int pageDataCount = 10;	// 화면에 출력할 데이터 갯수
		if (pageNum == null || pageNum.equals("")) {
			pageNum = "1";
		}
		int currentPage = Integer.parseInt(pageNum); // 현재 페이지 번호
		
		int total = service.getNoticeBoardCount(noticeBoardDTO);
		
		int startRow = (currentPage - 1) * pageDataCount + 1;
		int endRow = startRow + pageDataCount - 1;
		
		adminPaging bp = new adminPaging(total, pageDataCount, currentPage);
		noticeBoardDTO.setStartRow(startRow);
		noticeBoardDTO.setEndRow(endRow);
		
//		if(ap.getTotalPage() > 0) {
//			System.out.println(ap.getStartPage());
//			System.out.println(ap.getEndPage());
//		}
		
		
		int num = total - startRow + 1;
		
		List<NoticeBoardModel> noticeList = service.noticeList(noticeBoardDTO);
		model.addAttribute("noticeList", noticeList);
		model.addAttribute("bp", bp);
		model.addAttribute("num", num);
		
		model.addAttribute("search", noticeBoardDTO.getSearch());
		model.addAttribute("keyword", noticeBoardDTO.getKeyword());

		return "noticeboard/notice_list";
	}

	
	
	
	
	
	
	
	
	
	
}
