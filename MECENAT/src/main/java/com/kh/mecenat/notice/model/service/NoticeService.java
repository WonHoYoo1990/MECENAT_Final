package com.kh.mecenat.notice.model.service;

import java.util.ArrayList;

import com.kh.mecenat.common.PageInfo;
import com.kh.mecenat.notice.model.vo.Notice;

public interface NoticeService {
	
	//공지사항 총 개수
	int selectListCount();

	//공지사항 리스트 조회 + 페이징 처리
	ArrayList<Notice> selectList(PageInfo pi);

}
