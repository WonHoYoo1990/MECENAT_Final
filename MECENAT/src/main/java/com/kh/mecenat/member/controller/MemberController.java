package com.kh.mecenat.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
		System.out.println("컨트롤단");
		System.out.println("userId : " + m.getUserId());

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

		System.out.println("여기는 회원탈퇴~");

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

	// 마이페이지 이동
	@RequestMapping("myPage.me")
	public String myPageForm() {
		System.out.println("myPage 이동~");
		return "member/myPage";
	}
	
	//로그인 폼으로 이동
	@GetMapping("loginForm.me")
	public String enrollForm() {
		
		//WEB-INF/views/member/memberEnrollForm.jsp 로 포워딩
		return "/member/login";
		
	}	
	
	//로그인
	@PostMapping("login.me")
	public String loginMember(Member m,HttpSession session,
			ModelAndView mv) {
		
	//loginUser : 아이디만으로 조회해온 회원정보	
	Member loginUser = memberService.loginMember(m.getUserId());
	
	if(loginUser != null && bCryptPasswordEncoder.matches(m.getUserPwd(), loginUser.getUserPwd())) {
		session.setAttribute("loginUser", loginUser);
		//setViewName : 요청 주소
		return "redirect:/";
		
	}else {
		mv.addObject("errorMsg", "로그인 실패");
		return "common/errorPage";
	}
	
	}
	
	//로그아웃
	@RequestMapping("logout.me")
	public String logoutMember(HttpSession session) {
		
		session.removeAttribute("loginUser");
		//invalidate()로 하게되면 세션에 있는 다른 데이터도 초기화 되기 때문에 removeAttribute
		
		return "redirect:/";
	}
	
    // 비밀번호 찾기 페이지로 이동
	@RequestMapping("searchPwdForm.me")
	public String searchPwdView() {
		return "member/searchPwd";
	}
	
    // 비밀번호 찾기 실행
	@PostMapping("searchPwd.me")
	public String searchPwd(HttpSession session, Member m,Model model) {
		
		Member loginUser = memberService.searchPwd(m);
		
		if(loginUser == null) { 
			model.addAttribute("check", 1);
		} else { 
			model.addAttribute("check", 0);
			model.addAttribute("updateid", loginUser.getUserId());
		}
		
		return "member/searchPwd";
	}
	
	//비밀번호 바꾸기 실행
	@RequestMapping(value="updatePwd.me", method=RequestMethod.POST)
	public String updatePwd(HttpSession session, String userId, Member m) {
		m.setUserId(userId);
		memberService.updatePwd(m);
		return "member/updatePwd";
	}
	
//    // 비밀번호 바꾸기할 경우 성공 페이지 이동
//	@RequestMapping(value="check_password_view")
//	public String checkPasswordForModify(HttpSession session, Model model) {
//		UserVO loginUser = (UserVO) session.getAttribute("loginUser");
//		
//		if(loginUser == null) {
//			return "member/login";
//		} else {
//			return "mypage/checkformodify";
//		}
//	}

}
