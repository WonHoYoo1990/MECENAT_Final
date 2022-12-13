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
	private SqlSessionTemplate sqlSession;

	// 회원가입
	@Override
	public int signup(Member m) {
		return memberDao.signup(sqlSession, m);
	}

	// 회원 탈퇴
	@Override
	public int deleteMember(String userId) {
		return memberDao.deleteMember(sqlSession, userId);
	}

	// ID 중복 체크
	@Override
	public int checkId(String checkId) {
		return memberDao.checkId(sqlSession, checkId);
	}

	// 회원 로그인 
	@Override
	public Member loginMember(String userId) {
		
		return memberDao.loginMember(sqlSession,userId);
		
	}

	//로그인 유저
	@Override
	public Member loginUser(Member m) {
		return memberDao.loginUser(sqlSession, m);
	}
 
	//비밀번호 찾기
	@Override
	public Member searchPwd(Member m) {
		return memberDao.searchPwd(sqlSession, m);
	}

	//비밀번호 업데이트
	@Override
	public void updatePwd(Member m) {
		
		memberDao.updatePwd(sqlSession,m);
		
	}
	
}
