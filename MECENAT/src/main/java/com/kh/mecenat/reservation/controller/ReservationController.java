package com.kh.mecenat.reservation.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
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
	
	
//	공연홀 전체 정보 조회 페이지. 기본 첫 페이지 A홀부터 보여준 후, B홀 클릭시 ajax로 내용 송출
	@GetMapping("information1.hl")
	public ModelAndView informHall(ModelAndView mv) {
		
		String hallName = "A";
		Hall hall = reservationService.selectHallInfo(hallName);
		
		mv.addObject("hallName", hallName).setViewName("reservation/hallInformation");
		return mv;
	}
	
//	공연홀별 ajax 전체 내용조회
	@ResponseBody
	@RequestMapping(value="information2.hl", produces = "application/json; charset=UTF-8")
	public String informHall(String hallName) {
		
		Hall hall = reservationService.selectHallInfo(hallName);
		
		return new Gson().toJson(hall);
	}
	
	
//	대관신청 클릭시
	@GetMapping("application1.rv")
	public ModelAndView viewApplicationForm(HttpSession session
//									 		,String hallName
											,ModelAndView mv) {
//		Member loginUser = session.getAttribute("loginUser");
//		String userId = loginUser.getUserId();
		String userId = "admin";
		String hallName ="A";
		
		mv.addObject("userId",userId).addObject("hallName", hallName).setViewName("reservation/applicationForm1");
		return mv;
	}
	
//	대관 신청 중 공연일설정, 공연시간 설정
	@ResponseBody
	@RequestMapping(value="setTime.rv", produces = "text/html; charset=UTF-8")
	public String setTime(String eventDateList) {
		String[] arr = eventDateList.split(",");
		String str = "";
		
		for(int i=0; i<arr.length; i++) {
			str +=	"<input type='text' id='startTimes' name='startTimes'  placeholder='아래 공연일을 확인하세요' required/><br>"
			     +  "<label for='startTime'>"+arr[i]+" 날짜를 확인해 주세요**</label>"
			     +  "<br><br>";
		}
		return str;
	}
	
//	test
	@PostMapping("application1.rv")
	public ModelAndView writeApplication(RentApplication ra
										,HttpSession session
										,ModelAndView mv) {
		int result = 0;
		System.out.println(ra);
		String events = ra.getEventDate();
		String[] arr = events.split(",");
		System.out.println("arr : "+arr);
		session.setAttribute("ra", ra);
		session.setAttribute("arr", arr);
		
		RentApplication finalRa = null;
		if(arr.length == arr.length) {
			
			for(int i=0; i<arr.length; i++) {
				
				finalRa.setUserId(ra.getUserId());
				finalRa.setHallName(ra.getHallName());
				finalRa.setCovenanteeName(ra.getCovenanteeName());
				finalRa.setCovenanteePhone(ra.getCovenanteePhone());
				finalRa.setAgentName(ra.getAgentName());
				finalRa.setAgentPhone(ra.getAgentPhone());
				finalRa.setAgentEmail(ra.getAgentEmail());
				finalRa.setRentalStartDate(ra.getRentalStartDate());
				finalRa.setRentalEndDate(ra.getRentalEndDate());
				finalRa.setEventDate(arr[i]);
				finalRa.setEventTime(arr[i]);
				finalRa.setRentalPropose(ra.getRentalPropose());	
				
				result += reservationService.insertApplication(finalRa);
			}
			
		}
		
		if(result==arr.length) {
			session.removeAttribute("ra");
			session.removeAttribute("arr");
			session.setAttribute("alertMsg", "대관신청 완료. 마이페이지를 확인하세요.");
			mv.setViewName("redirect:/");
		} else {
			mv.addObject("errorMsg","대관신청 등록실패. 관리자에게 문의하세요").setViewName("common/errorPage");
		}
		
		return mv;	
	}
	
//	test
	@RequestMapping("application2.rv")
	public ModelAndView insertPerformance(ModelAndView mv
										 ,HttpSession session
										 ,RentApplication ra
										 ,String[] startTimes) {
		
		System.out.println(startTimes+" : "+startTimes.length);
		int result = 0;
		String[] arr = (String[])session.getAttribute("arr");
		RentApplication finalRa = null;
		if(arr.length == startTimes.length) {
			
			for(int i=0; i<startTimes.length; i++) {
				
				finalRa.setUserId(ra.getUserId());
				finalRa.setHallName(ra.getHallName());
				finalRa.setCovenanteeName(ra.getCovenanteeName());
				finalRa.setCovenanteePhone(ra.getCovenanteePhone());
				finalRa.setAgentName(ra.getAgentName());
				finalRa.setAgentPhone(ra.getAgentPhone());
				finalRa.setAgentEmail(ra.getAgentEmail());
				finalRa.setRentalStartDate(ra.getRentalStartDate());
				finalRa.setRentalEndDate(ra.getRentalEndDate());
				finalRa.setEventDate(arr[i]);
				finalRa.setEventTime(startTimes[i]);
				finalRa.setRentalPropose(ra.getRentalPropose());	
				
				result += reservationService.insertApplication(finalRa);
			}
			
		}
		
		
		if(result==startTimes.length) {
			session.removeAttribute("ra");
			session.removeAttribute("arr");
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
									   /*int perfoNo*/) {

//		ArrayList<Performance> list = reservationService.selectPerformanceList();
//		model.addAttribute("list",list);
//		System.out.println(list);
		
		int perfoNo = 1;
		
		Performance pfmc =  reservationService.selectPerformance(perfoNo);
		model.addAttribute("pfmc",pfmc);
		System.out.println(pfmc);
		
		
		
		return "reservation/makeReservation";
	}
	
//	예매 페이지 조정중
	@PostMapping("make.rv")
	public void selectPerformaceInfo() {
	}
	

	
}
