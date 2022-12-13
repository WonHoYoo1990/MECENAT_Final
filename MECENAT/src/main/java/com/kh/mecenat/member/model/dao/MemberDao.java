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

}
