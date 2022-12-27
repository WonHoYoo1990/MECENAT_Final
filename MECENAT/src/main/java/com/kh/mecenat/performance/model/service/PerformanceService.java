package com.kh.mecenat.performance.model.service;

import java.util.ArrayList;

import com.kh.mecenat.performance.model.vo.Performance;
import com.kh.mecenat.reservation.model.vo.RentApplication;

public interface PerformanceService {
	//공연 목록 뽑아오기
	public ArrayList<Performance> selectListPerformance();

	public int insertPerformance(Performance p);

	public ArrayList<RentApplication> selectRentalApplication();

	public int approvePerformance(int rno);

	public Performance selectListPerformance(int rno);

	public int cancelPerformance(int rcode);

	public RentApplication selectRentalApplicationR(int rno);

	public int updateRentalAppStatus(int rno);


}
