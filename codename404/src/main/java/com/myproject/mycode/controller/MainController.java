package com.myproject.mycode.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	/* 메인 페이지 뷰 */ // view 폴더 안의
	@RequestMapping(value = "/main.do")
	public String mainpage() {
		return "main";
	}

//	/* 공지사항 게시판 뷰 */
//	@RequestMapping(value = "/notice_board.do") // <- main.jsp
//	String notice_board() {
//		return "noticeboard/notice_board"; // -> notice_board.jsp
//	}
//
//	/* 자유게시판 뷰 */
//	@RequestMapping(value = "/free_board.do") // <- main.jsp
//	public String free_board() {
//		return "freeboard/free_board"; // -> free_board.jsp
//	}
//
//	/* 스터디 게시판 뷰 */
//	@RequestMapping(value = "/study_board.do") // <- main.jsp
//	public String study_board() {
//		return "studyboard/study_board"; // -> study_board.jsp
//	}
//
//	/* QnA 게시판 뷰 */
//	@RequestMapping(value = "/qna_board.do") // <- main.jsp
//	public String qna_board() {
//		return "qnaboard/qna_board"; // -> qna_board.jsp
//	}

	/* 로그인 폼 */
	@RequestMapping(value = "/login_form.do") // <- main.jsp
	public String login_form() {
		return "loginform/login_form"; // -> login_form.jsp
	}

	/* 회원가입 폼 */
	@RequestMapping(value = "/signup_form.do") // <- main.jsp
	public String signup_form() {
		return "loginform/signup_form"; // -> signup_form.jsp
	}

//	/* 비밀번호 찾기 폼 */
//	@RequestMapping(value = "/findPassword.do") // <- login_form.jsp
//	public String findPassword_form() {
//		return "loginform/findPassword_form"; // -> findPassword_form.jsp
//	}

}