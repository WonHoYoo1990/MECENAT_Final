package com.kh.mecenat.member.model.dao;

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

	// 회원 로그인
	public Member loginMember(SqlSessionTemplate sqlSession, String userId) {

		return sqlSession.selectOne("memberMapper.loginMember", userId);
	}

	// 로그인시 아이디와 비밀번호 확인
	public Member loginUser(SqlSessionTemplate sqlSession, Member m) {

		return sqlSession.selectOne("memberMapper.loginUser", m);
	}

	// 비밀번호 찾기
	public Member searchPwd(SqlSessionTemplate sqlSession, Member m) {

		return sqlSession.selectOne("memberMapper.searchPwd", m);
	}

	// 비밀번호 업데이트
	public void updatePwd(SqlSessionTemplate sqlSession, Member m) {
		sqlSession.update("memberMapper.updatePwd", m);
	}

}
