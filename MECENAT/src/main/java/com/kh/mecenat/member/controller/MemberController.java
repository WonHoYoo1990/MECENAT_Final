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
import org.springframework.web.bind.annotation.ResponseBody;
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

		String encPwd = bCryptPasswordEncoder.encode(m.getUserPwd());

		m.setUserPwd(encPwd);

		int result = memberService.signup(m);

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

		Member loginUser = (Member) session.getAttribute("loginUser");
		String userId = loginUser.getUserId();
		String loginUserPwd = loginUser.getUserPwd();

		if (bCryptPasswordEncoder.matches(userPwd, loginUserPwd)) { // 입력한 비밀번호와 암호화 비밀번호가 일치할 경우
			int result = memberService.deleteMember(userId);

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

	// 이메일 인증 TEST
//	@RequestMapping("/sendEmail.do")
//	public void sendEmail(HttpServletRequest request, HttpServletResponse response) throws Exception {
//
//		// 메일 관련 정보
//		String host = "smtp.naver.com";
//		final String username = "ywh080"; // 네이버 메일중 @naver.com 앞주소만 작성
//		final String password = "dnjsgh123!@#"; // 네이버 메일 비밀번호 작성
//		int port = 465;
//
//		// 메일 내용
//		String recipient = "you_yearning@hanmail.net"; // 메일 발송할 이메일 주소 기재
//		String subject = "제목이에요"; // 메일 발송시 제목
//		String body = "이름 : 홍길동이요"; // 메일 발송시 내용
//
//		Properties props = System.getProperties();
//
//		props.put("mail.smtp.host", host);
//		props.put("mail.smtp.port", port);
//		props.put("mail.smtp.auth", "true");
//		props.put("mail.smtp.ssl.enable", "true");
//		props.put("mail.smtp.ssl.trust", host);
//
//		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
//			String un = username;
//			String pw = password;
//
//			protected PasswordAuthentication getPasswordAuthentication() {
//				return new PasswordAuthentication(un, pw);
//			}
//
//		});
//
//	}

//	@Test
//	public void mailTest() {
//
////		JavaMailSenderImpl mailSender = (JavaMailSenderImpl) ctx.getBean("mailSender");
//
//		ApplicationContext context = new ClassPathXmlApplicationContext("webapp/WEB-INF/spring/root-context.xml");
//		JavaMailSenderImpl mailSender = (JavaMailSenderImpl) context.getBean("mailSender");
//
//		// 메일 제목, 내용
//		String subject = "제목입니당";
//		String content = "내용입니당~";
//
//		// 보내는 사람
//		String from = "you_yearning@hanmail.net";
//
//		// 받는 사람
//		String[] to = new String[1];
//		to[0] = "ywh080@naver.com";
////		to[1] = "ulantj@naver.com";
//
//		try {
//			// 메일 내용 넣을 객체와, 이를 도와주는 Helper 객체 생성
//			MimeMessage mail = mailSender.createMimeMessage();
//			MimeMessageHelper mailHelper = new MimeMessageHelper(mail, "UTF-8");
//
//			// 메일 내용을 채워줌
//			mailHelper.setFrom(from); // 보내는 사람 셋팅
//			mailHelper.setTo(to); // 받는 사람 셋팅
//			mailHelper.setSubject(subject); // 제목 셋팅
//			mailHelper.setText(content); // 내용 셋팅
//
//			// 메일 전송
//			mailSender.send(mail);
//
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//	}
//	@RequestMapping(value = "/get_auth", method = RequestMethod.POST)
//	public View sendAuthCode(HttpServletRequest request, Model model) throws IOException {
//
//		String title = "인증코드에요?";
//		String from = "";
//		String text = "인증 코드 : ";
//		String to = "";
//		String cc = "";
//
////		return jsonView;
//		return null;
//	}

	// 마이페이지 이동
	@RequestMapping("myPage.me")
	public String myPageForm() {
		System.out.println("myPage 이동~");
		return "member/myPage";
	}

	// 로그인 폼으로 이동
	@GetMapping("loginForm.me")

	public String enrollForm() {

		// WEB-INF/views/member/memberEnrollForm.jsp 로 포워딩
		return "/member/login";

	}

	// 로그인
	@PostMapping("login.me")
	public String loginMember(Member m, HttpSession session, ModelAndView mv) {

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

}
