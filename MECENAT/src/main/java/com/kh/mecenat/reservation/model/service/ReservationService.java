package com.kh.mecenat.reservation.model.service;

import java.util.ArrayList;

import com.kh.mecenat.reservation.model.vo.Performance;
import com.kh.mecenat.reservation.model.vo.RentApplication;

public interface ReservationService {

	ArrayList<Performance> selectPerformanceList();

	Performance selectPerformance(int perfoNo);

	int insertApplication(RentApplication ra);

}
