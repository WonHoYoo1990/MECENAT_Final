package com.kh.mecenat.reservation.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.mecenat.reservation.model.service.ReservationService;
import com.kh.mecenat.reservation.model.vo.Performance;
import com.kh.mecenat.reservation.model.vo.RentApplication;

@Controller
public class ReservationController {
	
	@Autowired
	private ReservationService reservationService;
	
	@GetMapping("application.rv")
	public ModelAndView viewApplicationForm(HttpSession session
//									 		,String hallName
											,ModelAndView mv) {
//		Member loginUser = session.getAttribute("loginUser");
//		String userId = loginUser.getUserId();
		String userId = "admin";
		String hallName ="A";
		
		mv.addObject("userId",userId).addObject("hallName", hallName).setViewName("reservation/applicationForm2");
		return mv;
	}
	
	@PostMapping("application.rv")
	public ModelAndView writeApplication(RentApplication ra
										,ModelAndView mv) {
		System.out.println(ra);					 
		int result = reservationService.insertApplication(ra);		
		String events = ra.getEventDate();
		String[] arr = events.split(",");
		System.out.println("arr : "+arr);
		if(result>0) {
			mv.addObject("arr",arr).addObject("ra",ra).setViewName("reservation/performanceForm");
		} else {
			mv.addObject("errorMsg","대관신청이 이루어지지 않았습니다.").setViewName("common/errorPage");
		}
		
		return mv;		
	}
	
	
	@RequestMapping("pfapplication.rv")
	public ModelAndView insertPerformance(ModelAndView mv
										  , Performance p
										  , String[] startTimes) {
		
		System.out.println(startTimes+" : "+startTimes.length);
		for(int i=0; i<startTimes.length; i++) {
			System.out.println(startTimes[i]);
		}
		System.out.println(p);
		
		
		return mv;
	}
	

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
	
	@PostMapping("make.rv")
	public void selectPerformaceInfo() {
	}
	
	
}
