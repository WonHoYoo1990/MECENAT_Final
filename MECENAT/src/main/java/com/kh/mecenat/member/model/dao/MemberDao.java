package com.kh.mecenat.member.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.mecenat.common.PageInfo;
import com.kh.mecenat.member.model.vo.Member;
import com.kh.mecenat.performance.model.vo.Review;

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
	public int checkDupId(SqlSessionTemplate sqlSession, String checkId) {
		return sqlSession.selectOne("memberMapper.checkDupId", checkId);
	}

	// EMAIL 중복 체크
	public int checkDupEmail(SqlSessionTemplate sqlSession, String checkEmail) {
		return sqlSession.selectOne("memberMapper.checkDupEmail", checkEmail);
	}

	// 회원 로그인
	public Member loginMember(SqlSessionTemplate sqlSession, String userId) {

		return sqlSession.selectOne("memberMapper.loginMember", userId);
	}

	// 로그인시 아이디와 비밀번호 확인
	public Member loginUser(SqlSessionTemplate sqlSession, Member m) {

		return sqlSession.selectOne("memberMapper.loginUser", m);
	}

<<<<<<< HEAD
=======
	//아이디 찾기
	public Member memberIdSearch(SqlSessionTemplate sqlSession, Member m) {
		
		return sqlSession.selectOne("memberMapper.memberIdSearch", m);
	
	}
>>>>>>> refs/heads/main
	
	//관리자) 멤버 전체 조회
	public ArrayList<Member> selectAllMemberList(SqlSessionTemplate sqlSession) {
		
		return (ArrayList)sqlSession.selectList("memberMapper.selectAllMemberList");
	}

<<<<<<< HEAD
	public Member selectMember(SqlSessionTemplate sqlSession, String email) {
		return sqlSession.selectOne("memberMapper.selectMember", email);
	}

	public int pwUpdate_M(SqlSessionTemplate sqlSession, Member loginUser) {
		
		return sqlSession.update("memberMapper.pwUpdate_M", loginUser);
	
	} 

	//아이디 찾기
	public Member memberIdSearch(SqlSessionTemplate sqlSession, Member m) {
		
		return sqlSession.selectOne("memberMapper.memberIdSearch", m);
	
	}

=======
	////비밀번호 찾기 이메일 인증
	public Member selectMember(SqlSessionTemplate sqlSession, String email) {

		return sqlSession.selectOne("memberMapper.selectMember",email);
	}

	//비밀번호 변경
	public int search_Pwd_New(SqlSessionTemplate sqlSession, Member vo) {
		return sqlSession.update("memberMapper.search_Pwd_New",vo);	
		}

	
	//마이페이지 회원정보 수정
	public int updateMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("memberMapper.updateMember",m);
	}

	//블랙
	public int blackMember(SqlSessionTemplate sqlSession, String userId) {
		// TODO Auto-generated method stub
		return sqlSession.update("memberMapper.blackMember", userId);
	}
	
	//블랙해제
	public int blackCancelMember(SqlSessionTemplate sqlSession, String userId) {
		// TODO Auto-generated method stub
		return sqlSession.update("memberMapper.blackCancelMember", userId);
	}
	
	public int selectListCount(SqlSessionTemplate sqlSession) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("memberMapper.selectListMember");
	}


	public ArrayList<Member> selectAllMemberList(SqlSessionTemplate sqlSession, PageInfo pi) {
			
		int limit = pi.getBoardLimit();
		int offset = (pi.getCurrentPage()-1)*limit;
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("memberMapper.selectAllMemberList", null, rowBounds);
	}

	

	public Member selectm(SqlSessionTemplate sqlSession, String userId) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("memberMapper.dList", userId);
	}
	
	public ArrayList<Review> selectReviewList(SqlSessionTemplate sqlSession, String userId) {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("memberMapper.selectReviewList", userId);
	}

	
	



	
>>>>>>> refs/heads/main
}
