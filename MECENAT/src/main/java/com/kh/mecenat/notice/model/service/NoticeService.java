package com.kh.mecenat.notice.model.service;

import java.util.ArrayList;

import com.kh.mecenat.common.PageInfo;
import com.kh.mecenat.notice.model.vo.Notice;
import com.kh.mecenat.notice.model.vo.NoticeType;

public interface NoticeService {

	// 공지사항 총 개수
	int selectListCount();

	// 공지사항 리스트 조회 + 페이징 처리
	ArrayList<Notice> selectList(PageInfo pi, String boardCode);

	// 공지사항 게시글 조회수
	int increaseCount(int nno);

	// 공지사항 게시글 디테일 보기
	Notice selectBoard(int nno);

	// 공지사항 게시글 등록
	int insertNotice(Notice n);

	// 공지사항 게시글 삭제
	int deleteNotcie(int nno);

	// 공지사항 게시글 수정
	int updateNotice(Notice n);

	// 보드 타입 리스트 받아오기
	ArrayList<NoticeType> selectCategoryList(String boardCode);

	// 메인페이지 최신뉴스 조회
	ArrayList<Notice> latestNews(String boardCode);

	// 푸터 페이지 Notice 조회
	ArrayList<Notice> footerNotice();

}
