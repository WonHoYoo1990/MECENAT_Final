package com.kh.mecenat.reservation.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.mecenat.reservation.model.vo.Hall;
import com.kh.mecenat.reservation.model.vo.Performance;
import com.kh.mecenat.reservation.model.vo.Purchase;
import com.kh.mecenat.reservation.model.vo.RentApplication;
import com.kh.mecenat.reservation.model.vo.Seat;

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
		return sqlSession.selectOne("reservationMapper.selectRentApplication1", rentalCode);
	}

	public Performance getReservationPerformance(SqlSessionTemplate sqlSession, Performance pf) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("reservationMapper.getReservationPerformance", pf);
	}
	
	public Hall getHallSeats(SqlSessionTemplate sqlSession, String hallName) {
		return (Hall)sqlSession.selectOne("reservationMapper.getHallSeats", hallName);
	}

	public int getPurchaseSeats(SqlSessionTemplate sqlSession, int perfoNo) {
		return sqlSession.selectOne("reservationMapper.getPurchaseSeats", perfoNo);
	}

	public ArrayList<Seat> selectSoldOutSeats(SqlSessionTemplate sqlSession, int perfoNo) {
		ArrayList<Seat> list = (ArrayList)sqlSession.selectList("reservationMapper.selectSoldOutSeats", perfoNo);
		return list;
	}

	public ArrayList<Seat> selectAllSeats(SqlSessionTemplate sqlSession, String hallName) {
		ArrayList<Seat> list = (ArrayList)sqlSession.selectList("reservationMapper.selectAllSeats", hallName);
		return list;
	}

	public void blockSeats(SqlSessionTemplate sqlSession, Purchase p){

		
		sqlSession.insert("reservationMapper.blockSeats", p);
	}

	public int selectSeatNo(SqlSessionTemplate sqlSession, Seat s) {
		
		return sqlSession.selectOne("reservationMapper.selectSeatNo", s);
	}

	
}



















