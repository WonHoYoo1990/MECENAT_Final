package com.kh.mecenat.reservation.model.service;

import java.util.ArrayList;

import com.kh.mecenat.reservation.model.vo.Hall;
import com.kh.mecenat.reservation.model.vo.Performance;
import com.kh.mecenat.reservation.model.vo.Purchase;
import com.kh.mecenat.reservation.model.vo.RentApplication;
import com.kh.mecenat.reservation.model.vo.Seat;

public interface ReservationService {

//	전체 공연 리스트 조회
	ArrayList<Performance> selectPerformanceList(int rentalCode);

//	공연 세부내용 조회
	Performance selectPerformance(int perfoNo);

//	대관신청서 제출
	int insertApplication(RentApplication ra);

//	공연홀 정보조회
	Hall selectHallInfo(String hallName);

	RentApplication selectRentApplication(int rentalCode);

	Performance getReservationPerformance(Performance pf);

	Hall getHallSeats(String hallName);

	int getPurchaseSeats(int perfoNo);

	ArrayList<Seat> selectSoldOutSeats(int perfoNo);

	ArrayList<Seat> selectAllSeats(String hallName);

	void blockSeats(Purchase p);

	int selectSeatNo(Seat s);

}
