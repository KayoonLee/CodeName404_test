package com.myproject.mycode.dao;

//import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.myproject.mycode.model.MemberModel;

@Repository
public interface MemberDao {
	
	@Autowired
//	private SqlSessionTemplate sst; // DB 주입(root-context.xml 에서 SqlSessionTemplate 주입)
	
	/* 회원저장 */ // MemberService.java 에서 함수 생성
	public int insert(MemberModel member);

	// 로그인 인증체크
	public MemberModel userCheck(String id);

	public void updateSingoCount(String qna_nick);
	
}
