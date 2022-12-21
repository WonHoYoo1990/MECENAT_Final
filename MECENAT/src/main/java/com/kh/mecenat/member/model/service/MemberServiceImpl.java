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
	public int checkDupId(String checkId) {
		return memberDao.checkDupId(sqlSession, checkId);
	}

	// EMAIL 중복 체크
	@Override
	public int checkDupEmail(String checkEmail) {
		return memberDao.checkDupEmail(sqlSession, checkEmail);
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

	//아이디 찾기
	@Override
	public Member memberIdSearch(Member m) {
		
		return memberDao.memberIdSearch(sqlSession, m);
	}
	
	//관리자) 멤버 전체 조회
	@Override
	public ArrayList<Member> selectAllMemberList() {
		
		return memberDao.selectAllMemberList(sqlSession);
	}

	//비밀번호 찾기
	@Override
	public Member selectMember(String email) {
		return memberDao.selectMember(sqlSession, email);
	}

	//비밀번호 재설정
	@Override
	public int search_Pwd_New(Member vo) {
		return memberDao.search_Pwd_New(sqlSession, vo);	
	}

}
