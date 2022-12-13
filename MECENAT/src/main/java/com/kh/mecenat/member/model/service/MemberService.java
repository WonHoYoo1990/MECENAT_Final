package com.kh.mecenat.member.model.service;

import com.kh.mecenat.member.model.vo.Member;

public interface MemberService {

	// 회원 가입
	int signup(Member m);

	// 회원 탈퇴
	int deleteMember(String userId);
	
	//로그인 서비스
	Member loginMember(String userId);

	// ID 중복 체크
	int checkId(String checkId);

	// EMAIL 중복 체크

}
