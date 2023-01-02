package com.kh.mecenat.performance.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.mecenat.performance.model.dao.PerformanceDao;
import com.kh.mecenat.performance.model.vo.Performance;
import com.kh.mecenat.performance.model.vo.Review;
import com.kh.mecenat.reservation.model.vo.RentApplication;

@Service
public class PerformanceServerImpl implements PerformanceService {
	@Autowired
	private PerformanceDao performanceDao;

	@Autowired
	private SqlSessionTemplate SqlSession;

	@Override
	public ArrayList<Performance> selectListPerformance() {
		return performanceDao.selectListPerformance(SqlSession);
	}

	@Override
	public int insertPerformance(Performance p) {
		return performanceDao.insertPerformance(SqlSession, p);
	}

	@Override
	public ArrayList<RentApplication> selectRentalApplication() {
		return performanceDao.selectRentalApplication(SqlSession);
	}

	@Override
	public int approvePerformance(int rno) {
		return performanceDao.performanceDao(SqlSession, rno);
	}

	@Override
	public Performance selectListPerformance(int rno) {
		return performanceDao.selectListPerformance(SqlSession, rno);
	}

	// 서브메인 공연 리스트 조회
	@Override
	public ArrayList<Performance> subMainPerformanceList(String sdate) {
		return performanceDao.subMainPerformanceList(SqlSession, sdate);
	}

	// 서브 메인 공연리스트 개수
	@Override
	public int subMainPerformanceListCount(String sdate) {
		return performanceDao.subMainPerformanceListCount(SqlSession, sdate);
	}

	// 서브메인 공연 리스트 최신순 조회
	@Override
	public ArrayList<Performance> subMainPerformanceSearchSort1(String sdate) {
		return performanceDao.subMainPerformanceSearchSort1(SqlSession, sdate);
	}

	// 서브메인 공연 리스트 관심순 조회
	@Override
	public ArrayList<Performance> subMainPerformanceSearchSort2(String sdate) {
		return performanceDao.subMainPerformanceSearchSort2(SqlSession, sdate);
	}

	// 서브 메인페이지 내에서 공연 리스트 검색 조회
	@Override
	public ArrayList<Performance> subMainPerformanceSearch(String searchWrd) {
		return performanceDao.subMainPerformanceSearch(SqlSession, searchWrd);
	}

	// 서브 메인페이지 내에서 검색어 리스트 개수 조회
	@Override
	public int subMainPerformanceSearchCount(String searchWrd) {
		return performanceDao.subMainPerformanceSearchCount(SqlSession, searchWrd);
	}

	@Override
	public ArrayList<Review> selectRevieList(int rno) {
		// TODO Auto-generated method stub
		return performanceDao.selectReviewList(SqlSession, rno);
	}

	@Override
	public int insertReview(Review r) {
		// TODO Auto-generated method stub
		return performanceDao.insertReview(SqlSession, r);
	}

	@Override
	public int cancelPerformance(int rcode) {
		return performanceDao.cancelPerformance(SqlSession, rcode);
	}

	@Override
	public RentApplication selectRentalApplicationR(int rno) {
		return performanceDao.selectRentalApplicationR(SqlSession, rno);
	}

	@Override
	public int updateRentalAppStatus(int rno) {
		return performanceDao.updateRentalAppStatus(SqlSession, rno);
	}

	@Override
	public ArrayList<Performance> selectPlayPerformance() {
		return performanceDao.selectPlayPerformance(SqlSession);
	}

	@Override
	public int updateStatus(Performance p) {
		return performanceDao.updateStatus(SqlSession, p);
	}

	@Override
	public int performanceDelete(int rcode) {
		return performanceDao.performanceDelete(SqlSession, rcode);
	}

	@Override
	public int nopePerformance(int rcode) {
		return performanceDao.nopePerformance(SqlSession, rcode);
	}


}
