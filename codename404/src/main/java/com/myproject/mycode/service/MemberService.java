package com.myproject.mycode.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myproject.mycode.dao.MemberDao;
import com.myproject.mycode.model.MemberModel;

@Service
public class MemberService {

	@Autowired
	private MemberDao md; // DAO 주입
	
	/* 회원가입 */
	public void insert(MemberModel member) {
		md.insert(member);
	}
	
	// 로그인 체크
	public MemberModel userCheck(String id) {
		return md.userCheck(id);
	}

	// 신고 회원 singocount +1
	public void updateSingoCount(String qna_nick) {
		// TODO Auto-generated method stub
		md.updateSingoCount(qna_nick);
	}

	public MemberModel searchPwd(MemberModel member) {
		// TODO Auto-generated method stub
		return md.searchPwd(member);
	}

	public void updatePwd(MemberModel member) {
		// TODO Auto-generated method stub
		md.updatePwd(member);
	}

	public MemberModel searchId(MemberModel member) {
		// TODO Auto-generated method stub
		return md.searchId(member);
	}
	
}
