package com.kh.mecenat.member.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
	

	@Autowired
	private JavaMailSender mailSender;

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

	
	// 아이디 찾기 페이지로 이동
	@RequestMapping("findIdForm.me")
	public String searchIdView() {
		return "member/search_Id";
	}
	
	// 아이디 찾기 실행
	@RequestMapping(value = "searchResultId.me")
	public String search_result_id(HttpServletRequest request, Model model,
		    @RequestParam(required = true, value = "userName") String userName, 
		    @RequestParam(required = true, value = "userPhone") String userPhone,
		    Member m) {
		
		try {
		    
		    m.setUserName(userName);
		    m.setUserPhone(userPhone);
		    Member memberSearch = memberService.memberIdSearch(m);
		    
		    model.addAttribute("m", memberSearch);
		 
		    
		} catch (Exception e) {
		    System.out.println(e.toString());
		    model.addAttribute("msg", "오류가 발생되었습니다.");
		}
		return "member/search_result_Id";
		
		
	}
	
	
	// 비밀번호 찾기 페이지로 이동
	@RequestMapping("findPasswordForm.me")
	public String searchPwdView() {
		return "member/search_pwd";
	}

	// 비밀번호 찾기 실행
	@PostMapping(value= "searchPwd.me")
	public ModelAndView searchPwd(HttpSession session, HttpServletRequest request, HttpServletResponse response) throws IOException  {

		String email = (String)request.getParameter("userId");
		String name = (String)request.getParameter("userName");
		
		Member loginUser = memberService.selectMember(email);

		if(loginUser != null) {
		Random r = new Random();
		int num = r.nextInt(999999); // 이메일 인증 번호인 랜덤난수설정
		
		if (loginUser.getUserName().equals(name)) {
			session.setAttribute("email", loginUser.getEmail());
			
			
			String setfrom = "sjs8739@naver.com"; // naver 보내는사람
			String tomail = email; //받는사람
			String title = "[MECENAT] 비밀번호변경 인증 이메일 입니다"; 
			String content = System.getProperty("line.separator") + "안녕하세요 회원님" + System.getProperty("line.separator")
			+ "MECENAT 비밀번호찾기(변경) 인증번호는 " + num + " 입니다." + System.getProperty("line.separator");
		
			
			try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "utf-8");
			
			messageHelper.setFrom(setfrom); 
			messageHelper.setTo(tomail); 
			messageHelper.setSubject(title);
			messageHelper.setText(content); 
			
			mailSender.send(message);
			} catch (Exception e) {
				System.out.println(e.getMessage());
			}
				ModelAndView mv = new ModelAndView();
				mv.setViewName("member/numCheck");
				mv.addObject("num", num);
				return mv;
			
			}else {
				ModelAndView mv = new ModelAndView();
				mv.setViewName("member/search_pwd");
				return mv;
			}
			}else {
				ModelAndView mv = new ModelAndView();
				mv.setViewName("member/search_pwd");
				return mv;
			}

		
		
		}
		

	//비밀번호 찾기 인증번호 확인
	@RequestMapping(value="numCheck.me", method = RequestMethod.POST)
	public String numCheck(@RequestParam(value="email_injeung") String email_injeung,
			@RequestParam(value = "num") String num) throws IOException{
		
		if(email_injeung.equals(num)) {
			return "member/pw_new";
		}
		else {
			return "member/search_pwd";
		}
} 
	
	//비밀번호 업데이트
	@RequestMapping(value = "/pw_new.me", method = RequestMethod.POST)
	public String pw_new(Member loginUser, HttpSession session) throws IOException{
		int result = memberService.pwUpdate_M(loginUser);
		if(result == 1) {
			return "member/login";
		}
		else {
			System.out.println("pw_update"+ result);
			return "member/pw_new";
		}
}
	
	
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
