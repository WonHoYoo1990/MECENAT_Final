package com.kh.mecenat.performance.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.mecenat.performance.model.vo.Performance;


@Repository
public class PerformanceDao {

	public ArrayList<Performance> selectListPerformance(SqlSessionTemplate sqlSession ) {
		return (ArrayList)sqlSession.selectList("performanceMapperMana.selectPerformanceList");
	}

	public int insertPerformance(SqlSessionTemplate sqlSession, Performance p) {
		return sqlSession.insert("performanceMapperMana.insertPerformance", p);
	}


}
