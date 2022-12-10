package com.kh.mecenat.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.mecenat.member.model.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;

	// 회원가입 폼으로 이동
	@RequestMapping("signupForm.me")
	public String signupForm() {
		return "member/signup";
	}

	// 회원가입 등록
	@RequestMapping("signup.me")
	public String signup() {
		
		
		return "redirect:/";
	}

}
