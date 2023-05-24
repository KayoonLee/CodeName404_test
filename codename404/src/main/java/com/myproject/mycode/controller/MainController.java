package com.myproject.mycode.controller;


import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	/* 메인 페이지 뷰 */ // view 폴더 안의
	@RequestMapping(value = "/main.do")
	public String mainpage() {
		return "main";
	}
	
	// 관리자 로그인 폼
	@RequestMapping("adminloginform.do")
	public String adminLoginForm() {
		return "admin/adminloginform";
	}
	
	// 관리자와 일반회원 나눠놓음
	@RequestMapping("separatelogin.do")
	public String separateLogin() {
		return "separatelogin";
	}

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

	// 로그아웃
		@RequestMapping("/logout_form")
		public String logout(HttpSession session) {
			session.invalidate();
			
			return "loginform/logout_form";
		}
	
//	/* 비밀번호 찾기 폼 */
//	@RequestMapping(value = "/findPassword.do") // <- login_form.jsp
//	public String findPassword_form() {
//		return "loginform/findPassword_form"; // -> findPassword_form.jsp
//	}

}