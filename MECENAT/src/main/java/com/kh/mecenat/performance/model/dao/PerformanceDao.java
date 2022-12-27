package com.kh.mecenat.performance.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.mecenat.performance.model.vo.Performance;
import com.kh.mecenat.performance.model.vo.Review;
import com.kh.mecenat.reservation.model.vo.RentApplication;

@Repository
public class PerformanceDao {

	public ArrayList<Performance> selectListPerformance(SqlSessionTemplate sqlSession) {
		return (ArrayList) sqlSession.selectList("performanceMapperMana.selectPerformanceList");
	}

	public int insertPerformance(SqlSessionTemplate sqlSession, Performance p) {
		return sqlSession.insert("performanceMapperMana.insertPerformance", p);
	}

	public ArrayList<RentApplication> selectRentalApplication(SqlSessionTemplate sqlSession) {
		return (ArrayList) sqlSession.selectList("reservationMapper.selectRentalApplication");
	}

	public int performanceDao(SqlSessionTemplate sqlSession, int rno) {
		return sqlSession.update("reservationMapper.updateApproveStatus", rno);
	}

	public Performance selectListPerformance(SqlSessionTemplate sqlSession, int rno) {
		return sqlSession.selectOne("performanceMapperMana.selectDetailPerformance", rno);
	}

	public int cancelPerformance(SqlSessionTemplate sqlSession, int rcode) {
		return sqlSession.update("reservationMapper.updateCancelStatus",rcode);
	}

	public RentApplication selectRentalApplicationR(SqlSessionTemplate sqlSession, int rno) {
		
		return sqlSession.selectOne("reservationMapper.selectRentalApplicationR", rno);
	}

	public int updateRentalAppStatus(SqlSessionTemplate sqlSession, int rno) {
		return sqlSession.update("reservationMapper.updateRentalAppStatus", rno);
		
	}
	

	// 서브 메인페이지 공연 리스트 뽑아오기
	public ArrayList<Performance> subMainPerformanceList(SqlSessionTemplate sqlSession, String sdate) {
		return (ArrayList) sqlSession.selectList("performanceMapperMana.subMainPerformanceList", sdate);
	}
	
	// 서브 메인 공연리스트 개수
	public int ListCountSubMainPerformance(SqlSessionTemplate sqlSession, String sdate) {
		return sqlSession.selectOne("performanceMapperMana.ListCountSubMainPerformance", sdate);
	}



	
	
	
	public ArrayList<Review> selectReviewList(SqlSessionTemplate sqlSession, int rno) {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("performanceMapperMana.selectReviewList", rno);
	}

	public int insertReview(SqlSessionTemplate sqlSession, Review r) {
		// TODO Auto-generated method stub
		return sqlSession.insert("performanceMapperMana.insertReview", r);
	}

}
