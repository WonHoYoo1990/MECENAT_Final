package com.kh.mecenat.performance.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.mecenat.performance.model.dao.PerformanceDao;
import com.kh.mecenat.performance.model.vo.Performance;

@Service
public class PerformanceServerImpl implements PerformanceService{
	@Autowired
	private PerformanceDao performanceDao;
	
	@Autowired
	private SqlSessionTemplate SqlSession;

	@Override
	public ArrayList<Performance> selectListPerformance() {
		return performanceDao.selectListPerformance(SqlSession);
	}

	@Override
	public int insertPerformance(Performance p) {
		return performanceDao.insertPerformance(SqlSession, p);
	}
	
}
