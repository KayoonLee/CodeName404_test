package com.myproject.mycode.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myproject.mycode.dao.NoticeBoardDao;
import com.myproject.mycode.model.NoticeBoardModel;

@Service
public class NoticeBoardService{
	
	@Autowired
	private NoticeBoardDao boardDao;

	public List<NoticeBoardModel> notice_list() throws Exception {
		// TODO Auto-generated method stub
		return boardDao.notice_list();
	}

	
	
	

	
		
	
	
	

}
