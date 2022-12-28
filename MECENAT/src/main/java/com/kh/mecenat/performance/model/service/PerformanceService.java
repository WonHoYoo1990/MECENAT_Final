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



	//리뷰 등록
	public int insertReview(Review r);
	
	//리뷰 조회
	public ArrayList<Review> selectReviewList(int rno);


}
