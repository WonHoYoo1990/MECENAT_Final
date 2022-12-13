package com.kh.mecenat.member.model.service;

import com.kh.mecenat.member.model.vo.Member;

public interface MemberService {

	// 회원 가입
	int signup(Member m);

	// ID 중복 체크

	// EMAIL 중복 체크

	// 회원 탈퇴
	int deleteMember(String userId);
	
	//로그인 서비스
	Member loginMember(String userId);

}
