package com.kh.mecenat.reservation.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.mecenat.reservation.model.dao.ReservationDao;
import com.kh.mecenat.reservation.model.vo.Performance;
import com.kh.mecenat.reservation.model.vo.RentApplication;

@Service 
public class ReservationServiceImpl implements ReservationService{

	@Autowired
	private ReservationDao reservationDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public ArrayList<Performance> selectPerformanceList() {
		
		
		ArrayList<Performance> list = reservationDao.selectPerformanceList(sqlSession);
		
		return list;
	}

	@Override
	public Performance selectPerformance(int perfoNo) {
		
		Performance pfmc = reservationDao.selectPerformance(sqlSession, perfoNo);
		return pfmc;
	}

	@Override
	public int insertApplication(RentApplication ra) {
				
		return reservationDao.insertApplication(sqlSession, ra);
	}

	
}
