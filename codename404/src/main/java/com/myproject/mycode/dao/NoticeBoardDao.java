package com.myproject.mycode.dao;

import java.util.List;
import com.myproject.mycode.model.NoticeBoardModel;


public interface NoticeBoardDao {
	
	public List<NoticeBoardModel> noticeList(NoticeBoardModel noticeBoardDTO) ;

	public int getNoticeBoardCount(NoticeBoardModel noticeBoardDTO);

	}



