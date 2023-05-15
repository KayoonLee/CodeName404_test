package com.myproject.mycode.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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

	
	// 글작성 폼
			@RequestMapping("notice_InsertForm.notice")
			public String noticeInsertForm() {
				return "noticeboard/notice_InsertForm";
			}
	
	// 글작성
			@RequestMapping("notice_Insert.notice")
			public String noticeInsert(NoticeBoardModel noticeBoardDTO) {
			service.noticeInsert(noticeBoardDTO);
			return "redirect:notice_list.notice";
			}
	
	// 상세페이지
	@RequestMapping("notice_View.notice")
	public String noticeView(Integer notice_no, String pageNum, Model model) {
		
		service.updateRe(notice_no); // updateRe
		NoticeBoardModel noticeboard = service.noticeView(notice_no); // 상세정보
		
		model.addAttribute("noticeboard", noticeboard);
		model.addAttribute("pageNum", pageNum);
		
		return "noticeboard/notice_View";
	}
	
	// 글수정 폼
	@RequestMapping("notice_UpdateForm.notice")
	public String noticeUpdateForm(Integer notice_no, String pageNum, Model model) {
		service.updateRe(notice_no); // updateRe
		NoticeBoardModel noticeboard = service.noticeView(notice_no); // 상세정보
		
		model.addAttribute("noticeboard", noticeboard);
		model.addAttribute("pageNum", pageNum);
		
		return "noticeboard/notice_UpdateForm";
		
	}
	
	// 글수정
	@RequestMapping("notice_Update.notice")
	public String noticeUpdate(NoticeBoardModel noticeBoardDTO, String pageNum) {
		System.out.println("update 컨트롤러 들어옴");
		service.noticeUpdate(noticeBoardDTO);
		System.out.println("수정된 내용"+noticeBoardDTO.getNotice_content());
		
		return "redirect:/notice_View.notice?notice_no="+noticeBoardDTO.getNotice_no();
		// return "redirect:/notice_View.notice?notice_no="+notice_no+"&pageNum="+pageNum;
		
	}
	
	// 글삭제
	@RequestMapping("notice_Delete.notice")
	public String noticeDelete(NoticeBoardModel noticeBoardDTO) {
		service.noticeDelete(noticeBoardDTO);
		
		return "redirect:/notice_list.notice";
	}
	
}
