package com.kh.mecenat.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.mecenat.member.model.service.MemberService;
import com.kh.mecenat.member.model.vo.Member;

@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;

	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;

	// 회원가입 폼으로 이동
	@RequestMapping("signupForm.me")
	public String signupForm() {
		return "member/signup";
	}

	// 회원가입 등록
	@RequestMapping("signup.me")
	public ModelAndView signup(Member m, ModelAndView mv, HttpSession session) {

		int result = memberService.signup(m);

		if (result > 0) {
			session.setAttribute("alertMsg", "회원 가입 성공 하셨습니다!");
			mv.setViewName("redirect:/");
		} else {
			mv.addObject("errorMsg", "회원 가입에 실패 하였습니다. 다시 회원 가입 해주세요");
			mv.setViewName("common/errorPage");
		}

		return mv;
	}

	// ID 중복 체크

	// EMAIL 중복 체크

	// 회원 탈퇴
	@RequestMapping("delete.me")
	public ModelAndView deleteMember(String userPwd, HttpSession session, ModelAndView mv) {

		Member loginUser = (Member) session.getAttribute("loginUser");
		String userId = loginUser.getUserId();
		String loginUserPwd = loginUser.getUserPwd();

		if (bCryptPasswordEncoder.matches(userPwd, loginUserPwd)) { // 입력한 비밀번호와 암호화 비밀번호가 일치할 경우
			int result = memberService.deleteMember(userId);
			System.out.println("result : " + result);

			if (result > 0) {
				session.removeAttribute("loginUser");
				session.setAttribute("alertMsg", "회원 탈퇴 하셨습니다. 그동안 감사드립니다.");

				mv.setViewName("redirect:/");
			} else {
				mv.addObject("errorMsg", "회원 탈퇴 실패하셨습니다.").setViewName("common/errorPage");
			}

		} else { // 입력한 비밀번호와 암호화 비밀번호가 일치하지 않을 경우
			mv.addObject("errorMsg", "비밀번호가 일치하지 않습니다. 다시 시도해주시기 바랍니다.").setViewName("redirect:/myPage.me");
		}

		return mv;
	}

}
