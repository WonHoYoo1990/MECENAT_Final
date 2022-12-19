package com.kh.mecenat.member.controller;

import java.util.ArrayList;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.mecenat.member.model.service.MemberService;
import com.kh.mecenat.member.model.vo.Member;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
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

	// 마이페이지 이동
	@RequestMapping("myPage.me")
	public String myPageForm() {
//		System.out.println("myPage 이동~");
		return "member/myPage";
	}

	// 회원가입 등록
	@RequestMapping("signup.me")
	public ModelAndView signup(Member m, ModelAndView mv, HttpSession session) {
		log.info("signup");

		String encPwd = bCryptPasswordEncoder.encode(m.getUserPwd());
		log.info("encPwd : {}", encPwd);

		m.setUserPwd(encPwd);
		log.info("m : {}", m);

		int result = memberService.signup(m);
		log.info("result : {}", result);

		if (result > 0) {
			session.setAttribute("alertMsg", "회원가입을 축하합니다!");
			mv.setViewName("redirect:/");
		} else {
			mv.addObject("errorMsg", "회원 가입 실패하셨습니다. 다시 시도해 주세요!").setViewName("common/errorPage");
		}

		return mv;
	}

	// 회원 탈퇴
	@RequestMapping("delete.me")
	public ModelAndView deleteMember(String userPwd, HttpSession session, ModelAndView mv) {

		log.info("deleteMember");

		Member loginUser = (Member) session.getAttribute("loginUser");
		String userId = loginUser.getUserId();
		String loginUserPwd = loginUser.getUserPwd();

		log.info("loginUser : {}", loginUser);
		log.info("userId : {}", userId);
		log.info("loginUserPwd : {}", loginUserPwd);

		if (bCryptPasswordEncoder.matches(userPwd, loginUserPwd)) { // 입력한 비밀번호와 암호화 비밀번호가 일치할 경우
			int result = memberService.deleteMember(userId);
			log.info("result : {}", result);

			if (result > 0) {
				session.removeAttribute("loginUser");
				session.setAttribute("alertMsg", "회원 탈퇴 하셨습니다. 그동안 감사드립니다.");

				mv.setViewName("redirect:/");
			} else {
				mv.addObject("errorMsg", "회원 탈퇴 실패하셨습니다.").setViewName("common/errorPage");
			}

		} else { // 입력한 비밀번호와 암호화 비밀번호가 일치하지 않을 경우
			session.setAttribute("alertMsg", "비밀번호가 일치하지 않습니다. 다시 입력해주시기 바랍니다.");
			mv.setViewName("redirect:/myPage.me");
		}

		return mv;
	}

	// ID 중복 체크
	@ResponseBody
	@RequestMapping("checkId.me")
	public String checkId(String checkId) {

		int count = memberService.checkId(checkId);

		String str = "";

		if (count > 0) {
			str = "NNNNN";
		} else {
			str = "NNNNY";
		}

		return str;
	}

	// EMAIL 중복 체크
	@ResponseBody
	@RequestMapping("checkEmail.me")
	public String checkEmail(String checkEmail) {

		int count = memberService.checkEmail(checkEmail);

		String str = "";

		if (count > 0) {
			str = "NNNNN";
		} else {
			str = "NNNNY";
		}

		return str;
	}

	// 로그인 폼으로 이동
	@GetMapping("loginForm.me")
	public String enrollForm() {

		// WEB-INF/views/member/memberEnrollForm.jsp 로 포워딩
		return "/member/login2";

	}

	// 로그인
	@PostMapping("login.me")
	public String loginMember(Member m, HttpSession session, HttpServletResponse response, ModelAndView mv,
			HttpServletRequest request) {

		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		String saveId = request.getParameter("saveId");

		Cookie cookie = null;

		// 아이디 저장이 체크되었는지 확인하여 체크되었으면 쿠키 생성
		if (saveId != null && saveId.equals("on")) {
			// 쿠키의 이름과 값을 넣어서 생성해준다.
			cookie = new Cookie("userId", userId);

			// 쿠키의 수명 지정(초단위)
			cookie.setMaxAge(60 * 60 * 24); // 하루 60초*60*24

			// 응답 객체인 response에 생성된 쿠키 추가
			response.addCookie(cookie);

		} else { // 체크되지 않았으면 쿠키 삭제
			cookie = new Cookie("userId", null); // 값을 null로
			cookie.setMaxAge(0); // 쿠키의 수명을 0으로 바꾸기
			response.addCookie(cookie);

		}

		// loginUser : 아이디만으로 조회해온 회원정보
		Member loginUser = memberService.loginMember(m.getUserId());

		if (loginUser != null && bCryptPasswordEncoder.matches(m.getUserPwd(), loginUser.getUserPwd())) {
			session.setAttribute("loginUser", loginUser);
			// setViewName : 요청 주소
			return "redirect:/";

		} else {
			mv.addObject("errorMsg", "로그인 실패");
			return "common/errorPage";
		}

	}

	// 로그아웃
	@RequestMapping("logout.me")
	public String logoutMember(HttpSession session) {

		session.removeAttribute("loginUser");
		// invalidate()로 하게되면 세션에 있는 다른 데이터도 초기화 되기 때문에 removeAttribute

		return "redirect:/";
	}

	// 비밀번호 찾기 페이지로 이동
	@RequestMapping("searchPwdForm.me")
	public String searchPwdView() {
		return "member/searchPwd";
	}

	// 비밀번호 찾기 실행
	@PostMapping("searchPwd.me")
	public String searchPwd(HttpSession session, Member m, Model model) {

		Member loginUser = memberService.searchPwd(m);

		if (loginUser == null) {
			model.addAttribute("check", 1);
		} else {
			model.addAttribute("check", 0);
			model.addAttribute("updateid", loginUser.getUserId());
		}

		return "member/searchPwd";
	}

	// 비밀번호 바꾸기 실행
	@RequestMapping(value = "updatePwd.me", method = RequestMethod.POST)
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
	
	
	
	
	
	
	
	
	
	@RequestMapping("memberDel.manager")
	public String managerMemberList(Model model) {
		
		ArrayList<Member> mList = memberService.selectAllMemberList();
		
		System.out.println(mList);
		
		model.addAttribute("mList", mList);
		
		return "member/managerMemberDelete";
	}
	
	@RequestMapping("deleteMem.manager")
	public void managerMemberDelete() {
		System.out.println("ㅇㅇ");
		
	}
	
	

	// test 05!!

	// test 06 !!
}
