package com.myproject.mycode.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myproject.mycode.dao.AdminDAO;
import com.myproject.mycode.model.AdminModel;
import com.myproject.mycode.model.MemberModel;

@Service
public class AdminService {
	
	@Autowired
	private AdminDAO dao;
	
	public AdminModel adminCheck(String admin_id) {
		// TODO Auto-generated method stub
		return dao.adminCheck(admin_id);
	}

	public List<MemberModel> getMemeberList(MemberModel users) {
		// TODO Auto-generated method stub
		return dao.getMemberList(users);
	}

	public int getMemberCount(MemberModel users) {
		// TODO Auto-generated method stub
		return dao.getMemberCount(users);
	}

	public MemberModel getMember(String id) {
		// TODO Auto-generated method stub
		return dao.getMember(id);
	}

	public void userDelete(String id) {
		// TODO Auto-generated method stub
		dao.userDelete(id);
	}

}
