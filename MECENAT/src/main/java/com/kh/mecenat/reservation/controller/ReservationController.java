package com.kh.mecenat.reservation.controller;

import java.util.ArrayList;
import java.util.Arrays;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.kh.mecenat.reservation.model.service.ReservationService;
import com.kh.mecenat.reservation.model.vo.Hall;
import com.kh.mecenat.reservation.model.vo.Performance;
import com.kh.mecenat.reservation.model.vo.RentApplication;

@Controller
public class ReservationController {
	
	@Autowired
	private ReservationService reservationService;
	
	
//	공연홀 전체 정보 조회 페이지. 기본 첫 페이지 A홀
	@RequestMapping("information1.hl")
	public ModelAndView informHallA(ModelAndView mv,
									@RequestParam(value="hallName",defaultValue="Concert Hall") String hallName)  {

		Hall hall = reservationService.selectHallInfo(hallName);
		
		mv.addObject("hallName", hallName).setViewName("reservation/hallInformation");
		return mv;
	}
		
	//대관 신청서 페이지로 가는 메서드
	@GetMapping("application1.rv")
	public ModelAndView viewApplicationForm(HttpSession session
										 	,String hallName
											,ModelAndView mv) {
//			Member loginUser = session.getAttribute("loginUser");
//			String userId = loginUser.getUserId();
		String userId = "admin";
		
		mv.addObject("userId",userId).addObject("hallName", hallName).setViewName("reservation/applicationForm1");
		return mv;
	}
	
	//시간 입력 메서드
	@ResponseBody
	@RequestMapping(value="setTime.rv", produces = "application/json; charset=UTF-8")
	public String setTime(String eventDateList) {
		String[] arr = eventDateList.split(",");
		return new Gson().toJson(arr);
	}

	//대관 신청서 입력받고 메인으로 가는 메서드
	@PostMapping("application1.rv")
	public ModelAndView writeApplication(RentApplication ra
										,String[] startTimes
										,HttpSession session
										,ModelAndView mv) {
		String eventTime = "";
		
		for(int i=0; i<startTimes.length; i++) {
			
			if(i==0) {
				eventTime += startTimes[i];
			}else {
				eventTime += ","+startTimes[i];
			}
		}
		
		ra.setEventTime(eventTime);
		
		int result = reservationService.insertApplication(ra); 

		if(result>0) {
			session.setAttribute("alertMsg", "대관신청 완료. 마이페이지를 확인하세요.");
			mv.setViewName("redirect:/");
		} else {
			mv.addObject("errorMsg","대관신청 등록실패. 관리자에게 문의하세요").setViewName("common/errorPage");
		}
		
		return mv;	
	}
		

//	예매 페이지 조정중
	@GetMapping("make.rv")
	public String selectPerformaceForm(Model model//,
									   /*int rentalCode*/) {

//		ArrayList<Performance> list = reservationService.selectPerformanceList();
//		model.addAttribute("list",list);
//		System.out.println(list);
		
		int rentalCode = 1;
		
		ArrayList<Performance> list = reservationService.selectPerformanceList(rentalCode);
		System.out.println("list : "+list);
		
//		Performance pfmc =  reservationService.selectPerformance(rentalCode);
		model.addAttribute("list",list);

		return "reservation/makeReservation";
	}
	
//	예매 페이지 조정중
	@PostMapping("make.rv")
	public void selectPerformaceInfo() {
		
	}
	

	
}
