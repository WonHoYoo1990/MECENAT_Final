package com.kh.mecenat.reservation.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.mecenat.reservation.model.vo.Hall;
import com.kh.mecenat.reservation.model.vo.Performance;
import com.kh.mecenat.reservation.model.vo.RentApplication;

@Repository
public class ReservationDao {

//	��ü ���� ����Ʈ ��ȸ
	public ArrayList<Performance> selectPerformanceList(SqlSessionTemplate sqlSession) {

		ArrayList<Performance> list = (ArrayList)sqlSession.selectList("reservationMapper.selectPerformanceList");
		
		return list;
	}

//	���� ���γ��� ��ȸ
	public Performance selectPerformance(SqlSessionTemplate sqlSession, int perfoNo) {
		return (Performance)sqlSession.selectOne("reservationMapper.selectPerformance", perfoNo);
	}

//	�����û�� ����
	public int insertApplication(SqlSessionTemplate sqlSession, RentApplication ra) {
		return sqlSession.insert("reservationMapper.insertApplication", ra);
	}

//	����Ȧ ������ȸ
	public Hall selectHallInfo(SqlSessionTemplate sqlSession, String hallName) {

		return (Hall)sqlSession.selectOne("reservationMapper.selectHallInfo", hallName);
	}

	
}
