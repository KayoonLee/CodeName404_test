package com.myproject.mycode.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.myproject.mycode.model.MemberModel;
import com.myproject.mycode.service.MemberService;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService ms; // Service 주입
	
	/* 비밀번호 찾기 폼 */
	@RequestMapping(value = "/findPassword.do") // <- login_form.jsp
	public String findPassword_form() {
		return "loginform/findPassword_form"; // -> findPassword_form.jsp
	}
	
	// main 페이지로만 이동
	@RequestMapping("/main")
	public String main() {
		return "main";
	}
	
	// 회원가입
	@RequestMapping("/insertMember") 
	public String insert(MemberModel member, HttpSession session) {
		// member 등록
		ms.insert(member);
		session.invalidate();	
		
		// insert 후, 메인 페이지로 이동
		return "loginform/afterSignup"; // -> afterSignup.jsp
	}
	
	// 로그인
	@RequestMapping("/login_form")
	public String member_login(@RequestParam("id") String id,
							   @RequestParam("passwd") String passwd,
							   HttpSession session,
							   //MemberModel member
							   Model model) {
		
		int result = 0;
		MemberModel memberModel = ms.userCheck(id);
		
		if(memberModel == null) { // 등록되지 않은 회원인 경우
			result = 1;
			model.addAttribute("result", result);
			return "loginform/loginResult";
			
		} else {	 // 등록된 회원인 경우
			if(memberModel.getPasswd().equals(passwd)) {	// 비번이 같은 경우
				// session.setAttribute("email", email);
				session.setAttribute("memberModel", memberModel);
				String nick = memberModel.getNick();
				model.addAttribute("nick", nick);
				return "main";
				
		} else {	// 비밀번호가 다른 경우
			result = 2;
			model.addAttribute("result", result);
			return "loginform/loginResult";
		}
	}
}
	
}