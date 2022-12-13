package com.kh.mecenat.member.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.mecenat.member.model.dao.MemberDao;
import com.kh.mecenat.member.model.vo.Member;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDao memberDao;
	@Autowired
	private SqlSessionTemplate SqlSession;

	// 회원가입
	@Override
	public int signup(Member m) {
		return memberDao.signup(SqlSession, m);
	}

	// 회원 탈퇴
	@Override
	public int deleteMember(String userId) {
		return memberDao.deleteMember(SqlSession, userId);
	}

	// ID 중복 체크
	@Override
	public int checkId(String checkId) {
		return memberDao.checkId(SqlSession, checkId);
	}
	
	// 테스트1
}
