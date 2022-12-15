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

	// �쉶�썝媛��엯 �뤌�쑝濡� �씠�룞
	@RequestMapping("signupForm.me")
	public String signupForm() {
		return "member/signup";
	}

	// �쉶�썝媛��엯 �벑濡�
	@RequestMapping("signup.me")
	public ModelAndView signup(Member m, ModelAndView mv, HttpSession session) {

		String encPwd = bCryptPasswordEncoder.encode(m.getUserPwd());

		m.setUserPwd(encPwd);

		int result = memberService.signup(m);

		if (result > 0) {
			session.setAttribute("alertMsg", "�쉶�썝媛��엯�쓣 異뺥븯�빀�땲�떎!");
			mv.setViewName("redirect:/");
		} else {
			mv.addObject("errorMsg", "�쉶�썝 媛��엯 �떎�뙣�븯�뀲�뒿�땲�떎. �떎�떆 �떆�룄�빐 二쇱꽭�슂!").setViewName("common/errorPage");
		}

		return mv;
	}

	// �쉶�썝 �깉�눜
	@RequestMapping("delete.me")
	public ModelAndView deleteMember(String userPwd, HttpSession session, ModelAndView mv) {

		Member loginUser = (Member) session.getAttribute("loginUser");
		String userId = loginUser.getUserId();
		String loginUserPwd = loginUser.getUserPwd();

		if (bCryptPasswordEncoder.matches(userPwd, loginUserPwd)) { // �엯�젰�븳 鍮꾨�踰덊샇�� �븫�샇�솕 鍮꾨�踰덊샇媛� �씪移섑븷 寃쎌슦
			int result = memberService.deleteMember(userId);

			if (result > 0) {
				session.removeAttribute("loginUser");
				session.setAttribute("alertMsg", "�쉶�썝 �깉�눜 �븯�뀲�뒿�땲�떎. 洹몃룞�븞 媛먯궗�뱶由쎈땲�떎.");

				mv.setViewName("redirect:/");
			} else {
				mv.addObject("errorMsg", "�쉶�썝 �깉�눜 �떎�뙣�븯�뀲�뒿�땲�떎.").setViewName("common/errorPage");
			}

		} else { // �엯�젰�븳 鍮꾨�踰덊샇�� �븫�샇�솕 鍮꾨�踰덊샇媛� �씪移섑븯吏� �븡�쓣 寃쎌슦
			mv.addObject("errorMsg", "鍮꾨�踰덊샇媛� �씪移섑븯吏� �븡�뒿�땲�떎. �떎�떆 �떆�룄�빐二쇱떆湲� 諛붾엻�땲�떎.").setViewName("redirect:/myPage.me");
		}

		return mv;
	}

	// ID 以묐났 泥댄겕
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

	// EMAIL 以묐났 泥댄겕
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

	// 留덉씠�럹�씠吏� �씠�룞
	@RequestMapping("myPage.me")
	public String myPageForm() {
		System.out.println("myPage �씠�룞~");
		return "member/myPage";
	}

	// 濡쒓렇�씤 �뤌�쑝濡� �씠�룞
	@GetMapping("loginForm.me")

	public String enrollForm() {

		// WEB-INF/views/member/memberEnrollForm.jsp 濡� �룷�썙�뵫
		return "/member/login";

	}

	// 濡쒓렇�씤
	@PostMapping("login.me")
	public String loginMember(Member m, HttpSession session, ModelAndView mv) {

		// loginUser : �븘�씠�뵒留뚯쑝濡� 議고쉶�빐�삩 �쉶�썝�젙蹂�
		Member loginUser = memberService.loginMember(m.getUserId());

		if (loginUser != null && bCryptPasswordEncoder.matches(m.getUserPwd(), loginUser.getUserPwd())) {
			session.setAttribute("loginUser", loginUser);
			// setViewName : �슂泥� 二쇱냼
			return "redirect:/";

		} else {
			mv.addObject("errorMsg", "濡쒓렇�씤 �떎�뙣");
			return "common/errorPage";
		}

	}

	// 濡쒓렇�븘�썐
	@RequestMapping("logout.me")
	public String logoutMember(HttpSession session) {

		session.removeAttribute("loginUser");
		// invalidate()濡� �븯寃뚮릺硫� �꽭�뀡�뿉 �엳�뒗 �떎瑜� �뜲�씠�꽣�룄 珥덇린�솕 �릺湲� �븣臾몄뿉 removeAttribute

		return "redirect:/";
	}

	// 鍮꾨�踰덊샇 李얘린 �럹�씠吏�濡� �씠�룞
	@RequestMapping("searchPwdForm.me")
	public String searchPwdView() {
		return "member/searchPwd";
	}

	// 鍮꾨�踰덊샇 李얘린 �떎�뻾
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

	// 鍮꾨�踰덊샇 諛붽씀湲� �떎�뻾
	@RequestMapping(value = "updatePwd.me", method = RequestMethod.POST)
	public String updatePwd(HttpSession session, String userId, Member m) {
		m.setUserId(userId);
		memberService.updatePwd(m);
		return "member/updatePwd";
	}

//    // 鍮꾨�踰덊샇 諛붽씀湲고븷 寃쎌슦 �꽦怨� �럹�씠吏� �씠�룞
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
//1234567890
	//33333
}
