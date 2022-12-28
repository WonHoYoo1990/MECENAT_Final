package com.kh.mecenat.notice.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.mecenat.common.PageInfo;
import com.kh.mecenat.notice.model.dao.NoticeDao;
import com.kh.mecenat.notice.model.vo.Notice;

@Service
public class NoticeServiceImpl implements NoticeService{
	
	@Autowired
	public NoticeDao noticeDao;
	
	@Autowired
	public SqlSessionTemplate sqlSession;

	//공지사항 총 개수
	@Override
	public int selectListCount() {
		return noticeDao.selectListCount(sqlSession);
		
	}

	//공지사항 리스트+페이칭 처리
	@Override
	public ArrayList<Notice> selectList(PageInfo pi) {
		return noticeDao.selectList(sqlSession,pi);
	}

}
