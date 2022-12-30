package com.kh.mecenat.reservation.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.mecenat.reservation.model.vo.Hall;
import com.kh.mecenat.reservation.model.vo.Performance;
import com.kh.mecenat.reservation.model.vo.RentApplication;

@Repository
public class ReservationDao {

//	전체 공연 리스트 조회
	public ArrayList<Performance> selectPerformanceList(SqlSessionTemplate sqlSession, int rentalCode) {

		ArrayList<Performance> list = (ArrayList)sqlSession.selectList("reservationMapper.selectPerformanceList", rentalCode);
		
		return list;
	}

//	공연 세부내용 조회
	public Performance selectPerformance(SqlSessionTemplate sqlSession, int perfoNo) {
		return (Performance)sqlSession.selectOne("reservationMapper.selectPerformance", perfoNo);
	}
	

//	대관신청서 제출
	public int insertApplication(SqlSessionTemplate sqlSession, RentApplication ra) {
		return sqlSession.insert("reservationMapper.insertApplication", ra);
	}

//	공연홀 정보조회
	public Hall selectHallInfo(SqlSessionTemplate sqlSession, String hallName) {

		return (Hall)sqlSession.selectOne("reservationMapper.selectHallInfo", hallName);
	}

	public RentApplication selectRentApplication(SqlSessionTemplate sqlSession, int rentalCode) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("reservationMapper.selectRentApplication", rentalCode);
	}

	public Performance getReservationPerformance(SqlSessionTemplate sqlSession, Performance pf) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("reservationMapper.getReservationPerformance", pf);
	}

	
}
