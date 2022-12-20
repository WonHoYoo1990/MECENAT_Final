package com.kh.mecenat.member.model.service;

import java.util.ArrayList;

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

	// EMAIL 중복 체크
	@Override
	public int checkEmail(String checkEmail) {
		return memberDao.checkEmail(sqlSession, checkEmail);
	}

	// 회원 로그인
	@Override
	public Member loginMember(String userId) {
		return memberDao.loginMember(sqlSession, userId);
	}

	// 로그인 유저
	@Override
	public Member loginUser(Member m) {
		return memberDao.loginUser(sqlSession, m);
	}

	
	//관리자) 멤버 전체 조회
	@Override
	public ArrayList<Member> selectAllMemberList() {
		
		return memberDao.selectAllMemberList(sqlSession);
	}

	@Override
	public Member selectMember(String email) {

		return memberDao.selectMember(sqlSession, email);
	}

	@Override
	public int pwUpdate_M(Member loginUser) {
		
		return memberDao.pwUpdate_M(sqlSession, loginUser);
	
	}

	//아이디 찾기
	@Override
	public Member memberIdSearch(Member m) {
		
		return memberDao.memberIdSearch(sqlSession, m);
	}


}
