package com.kh.mecenat.reservation.model.service;

import java.util.ArrayList;

import com.kh.mecenat.reservation.model.vo.Hall;
import com.kh.mecenat.reservation.model.vo.Performance;
import com.kh.mecenat.reservation.model.vo.RentApplication;

public interface ReservationService {

//	��ü ���� ����Ʈ ��ȸ
	ArrayList<Performance> selectPerformanceList();

//	���� ���γ��� ��ȸ
	Performance selectPerformance(int perfoNo);

//	�����û�� ����
	int insertApplication(RentApplication ra);

//	����Ȧ ������ȸ
	Hall selectHallInfo(String hallName);

}
