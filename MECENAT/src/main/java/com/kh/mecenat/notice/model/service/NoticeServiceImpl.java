package com.kh.mecenat.notice.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.mecenat.common.PageInfo;
import com.kh.mecenat.notice.model.dao.NoticeDao;
import com.kh.mecenat.notice.model.vo.Notice;
import com.kh.mecenat.notice.model.vo.NoticeType;

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
	public ArrayList<Notice> selectList(PageInfo pi, String boardCode) {
		return noticeDao.selectList(sqlSession,pi,boardCode);
	}
	
	//공지사항 게시글 조회수 
	@Override
	public int increaseCount(int nno) {
		return noticeDao.increaseCount(sqlSession,nno);
	}
	
	//공지사항 게시글 디테일 보기
	@Override
	public Notice selectBoard(int nno) { 
		return noticeDao.selectBoard(sqlSession,nno);
	}

	//공지사항 게시글 등록
	@Override
	public int insertNotice(Notice n) {
		return noticeDao.insertNotice(sqlSession,n);
	}

	//공지사항 게시글 삭제
	@Override
	public int deleteNotcie(int nno) {
		return noticeDao.deleteNotcie(sqlSession, nno);
	}

	//공지사항 게시글 수정
	@Override
	public int updateNotice(Notice n) {
		return noticeDao.updateNotice(sqlSession, n);
	}

	//공지사항 타입 리스트 받아오기
	@Override 
	public ArrayList<NoticeType> selectCategoryList(String boardCode) {
		return noticeDao.selectCategoryList(sqlSession, boardCode);
	}



}
