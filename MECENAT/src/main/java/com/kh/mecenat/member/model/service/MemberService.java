package com.kh.mecenat.member.model.service;

import java.util.ArrayList;

import com.kh.mecenat.member.model.vo.Member;

public interface MemberService {

	// 회원 가입
	int signup(Member m);

	// 회원 탈퇴
	int deleteMember(String userId);

	// ID 중복 체크
	int checkId(String checkId);

	// EMAIL 중복 체크
	int checkEmail(String checkEmail);

	// 로그인 서비스
	Member loginMember(String userId);

	// 로그인 유저
	Member loginUser(Member m);

	
	//관리자) 멤버 전체 조회
	ArrayList<Member> selectAllMemberList();

	//비밀번호 찾기
	Member selectMember(String email);

	//비밀번호 재설정
	int pwUpdate_M(Member loginUser);

	//아이디 찾기
	Member memberIdSearch(Member m);

}
