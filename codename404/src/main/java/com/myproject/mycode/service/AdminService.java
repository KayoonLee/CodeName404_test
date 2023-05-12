package com.myproject.mycode.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myproject.mycode.dao.AdminDAO;
import com.myproject.mycode.model.MemberDTO;

@Service
public class AdminService {
	
	@Autowired
	private AdminDAO dao;

	public List<MemberDTO> getMemeberList(MemberDTO users) {
		// TODO Auto-generated method stub
		return dao.getMemberList(users);
	}

	public int getMemberCount(MemberDTO users) {
		// TODO Auto-generated method stub
		return dao.getMemberCount(users);
	}

	public MemberDTO getMember(String id) {
		// TODO Auto-generated method stub
		return dao.getMember(id);
	}

	public void userDelete(String id) {
		// TODO Auto-generated method stub
		dao.userDelete(id);
	}

}
