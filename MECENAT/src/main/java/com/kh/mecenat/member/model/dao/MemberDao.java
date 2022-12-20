package com.kh.mecenat.member.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.mecenat.member.model.vo.Member;

@Repository
public class MemberDao {

	// 회원 가입
	public int signup(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.insert("memberMapper.signup", m);
	}

	// 회원 탈퇴
	public int deleteMember(SqlSessionTemplate sqlSession, String userId) {
		return sqlSession.update("memberMapper.deleteMember", userId);
	}

	// ID 중복 체크
	public int checkId(SqlSessionTemplate sqlSession, String checkId) {
		return sqlSession.selectOne("memberMapper.checkId", checkId);
	}

	// EMAIL 중복 체크
	public int checkEmail(SqlSessionTemplate sqlSession, String checkEmail) {
		return sqlSession.selectOne("memberMapper.checkEmail", checkEmail);
	}

	// 회원 로그인
	public Member loginMember(SqlSessionTemplate sqlSession, String userId) {

		return sqlSession.selectOne("memberMapper.loginMember", userId);
	}

	// 로그인시 아이디와 비밀번호 확인
	public Member loginUser(SqlSessionTemplate sqlSession, Member m) {

		return sqlSession.selectOne("memberMapper.loginUser", m);
	}

	//아이디 찾기
	public Member memberIdSearch(SqlSessionTemplate sqlSession, Member m) {
		
		return sqlSession.selectOne("memberMapper.memberIdSearch", m);
	
	}
	
	//관리자) 멤버 전체 조회
	public ArrayList<Member> selectAllMemberList(SqlSessionTemplate sqlSession) {
		
		return (ArrayList)sqlSession.selectList("memberMapper.selectAllMemberList");
	}

}
