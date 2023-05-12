package com.myproject.mycode.dao;

import java.util.List;

import com.myproject.mycode.model.MemberDTO;

public interface AdminDAO {

	List<MemberDTO> getMemberList(MemberDTO users);

	int getMemberCount(MemberDTO users);

	MemberDTO getMember(String id);

	void userDelete(String id);

	
}
