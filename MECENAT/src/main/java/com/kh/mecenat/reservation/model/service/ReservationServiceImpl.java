package com.kh.mecenat.reservation.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.mecenat.reservation.model.dao.ReservationDao;
import com.kh.mecenat.reservation.model.vo.Hall;
import com.kh.mecenat.reservation.model.vo.Performance;
import com.kh.mecenat.reservation.model.vo.RentApplication;

@Service 
public class ReservationServiceImpl implements ReservationService{

	@Autowired
	private ReservationDao reservationDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;

//	전체 공연 리스트 조회
	@Override
	public ArrayList<Performance> selectPerformanceList(int rentalCode) {
		
		
		ArrayList<Performance> list = reservationDao.selectPerformanceList(sqlSession, rentalCode);
		
		return list;
	}

//	공연 세부내용 조회
	@Override
	public Performance selectPerformance(int perfoNo) {
		
		Performance pfmc = reservationDao.selectPerformance(sqlSession, perfoNo);
		return pfmc;
	}

//	대관신청서 제출!
	@Override
	public int insertApplication(RentApplication ra) {
				
		return reservationDao.insertApplication(sqlSession, ra);
	}

//	공연홀 정보조회
	@Override
	public Hall selectHallInfo(String hallName) {
		
		return reservationDao.selectHallInfo(sqlSession, hallName);
	}

	@Override
	public RentApplication selectRentApplication(int rentalCode) {
		// TODO Auto-generated method stub
		return reservationDao.selectRentApplication(sqlSession, rentalCode);
	}

	@Override
	public Performance getReservationPerformance(Performance pf) {
		Performance pfmc = reservationDao.getReservationPerformance(sqlSession, pf);
		return pfmc;
	}


	
}
