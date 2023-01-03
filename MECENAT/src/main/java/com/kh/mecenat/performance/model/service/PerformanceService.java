package com.kh.mecenat.performance.model.service;

import java.util.ArrayList;

import com.kh.mecenat.performance.model.vo.Performance;
import com.kh.mecenat.performance.model.vo.Review;
import com.kh.mecenat.reservation.model.vo.RentApplication;

public interface PerformanceService {
	// 공연 목록 뽑아오기
	public ArrayList<Performance> selectListPerformance();

	public int insertPerformance(Performance p);

	public ArrayList<RentApplication> selectRentalApplication();

	public int approvePerformance(int rno);

	public Performance selectListPerformance(int rno);

	public int cancelPerformance(int rcode);

	public RentApplication selectRentalApplicationR(int rno);

	public int updateRentalAppStatus(int rno);

	// 서브메인 공연 리스트 조회
	public ArrayList<Performance> subMainPerformanceList(String sdate);

	// 서브메인 공연 리스트 개수
	public int subMainPerformanceListCount(String sdate);

	// 서브메인 공연 리스트 최신순 조회
	public ArrayList<Performance> subMainPerformanceSearchSort1(String sdate);

	// 서브메인 공연 리스트 관심순 조회
	public ArrayList<Performance> subMainPerformanceSearchSort2(String sdate);

	// 서브 메인페이지 내에서 공연 리스트 검색 조회
	public ArrayList<Performance> subMainPerformanceSearch(String searchWrd);

	// 서브 메인페이지 내에서 검색어 리스트 개수 조회
	public int subMainPerformanceSearchCount(String searchWrd);

	public ArrayList<Review> selectRevieList(int rno);

	public int insertReview(Review r);

	public ArrayList<Performance> selectPlayPerformance();

	public int updateStatus(Performance p);

	public int performanceDelete(int rcode);

	public int nopePerformance(int rcode);

}
