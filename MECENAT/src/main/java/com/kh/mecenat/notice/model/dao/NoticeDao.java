package com.kh.mecenat.notice.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.mecenat.common.PageInfo;
import com.kh.mecenat.notice.model.vo.Notice;
import com.kh.mecenat.notice.model.vo.NoticeType;

@Repository
public class NoticeDao {

	// 공지사항 총 개수
	public int selectListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("noticeMapper.selectListCount");
	}

	// 공지사항 리스트+페이칭 처리
	public ArrayList<Notice> selectList(SqlSessionTemplate sqlSession, PageInfo pi, String boardCode) {

		int limit = pi.getBoardLimit();
		int offset = (pi.getCurrentPage() - 1) * limit;

		RowBounds rowBounds = new RowBounds(offset, limit);

		return (ArrayList) sqlSession.selectList("noticeMapper.selectList", boardCode, rowBounds);
	}

	// 공지사항 게시글 조회수
	public int increaseCount(SqlSessionTemplate sqlSession, int nno) {
		return sqlSession.update("noticeMapper.increaseCount", nno);
	}

	// 공지사항 상세보기
	public Notice selectBoard(SqlSessionTemplate sqlSession, int nno) {
		return sqlSession.selectOne("noticeMapper.selectBoard", nno);
	}

	// 공지사항 등록
	public int insertNotice(SqlSessionTemplate sqlSession, Notice n) {
		return sqlSession.insert("noticeMapper.insertNotice", n);
	}

	// 공지사항 게시글 삭제
	public int deleteNotcie(SqlSessionTemplate sqlSession, int nno) {
		return sqlSession.update("noticeMapper.deleteNotcie", nno);
	}

	// 공지사항 게시글 수정
	public int updateNotice(SqlSessionTemplate sqlSession, Notice n) {
		return sqlSession.update("noticeMapper.updateNotice", n);
	}

	public ArrayList<NoticeType> selectCategoryList(SqlSessionTemplate sqlSession, String boardCode) {
		return (ArrayList) sqlSession.selectList("noticeMapper.selectCategoryList", boardCode);
	}

	// 메인페이지 최신뉴스 조회
	public ArrayList<Notice> latestNews(SqlSessionTemplate sqlSession, String boardCode) {

		int limit = 1;
		int offset = 1;

		RowBounds rowBounds = new RowBounds(offset, limit);

		return (ArrayList) sqlSession.selectList("noticeMapper.latestNews", boardCode, rowBounds);
	}

	// 푸터 페이지 Notice 조회
	public ArrayList<Notice> footerNotice(SqlSessionTemplate sqlSession) {

		return (ArrayList) sqlSession.selectList("noticeMapper.footerNotice");
	}

}
