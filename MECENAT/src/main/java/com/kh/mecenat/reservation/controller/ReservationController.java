package com.kh.mecenat.reservation.controller;

import java.util.Date;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

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
import com.kh.mecenat.member.model.vo.Member;
import com.kh.mecenat.reservation.model.service.ReservationService;
import com.kh.mecenat.reservation.model.vo.Hall;
import com.kh.mecenat.reservation.model.vo.Performance;
import com.kh.mecenat.reservation.model.vo.Purchase;
import com.kh.mecenat.reservation.model.vo.RentApplication;
import com.kh.mecenat.reservation.model.vo.Seat;

@Controller
public class ReservationController {
	
	@Autowired
	private ReservationService reservationService;
	
	
	//공연홀 전체 정보 조회 페이지. 기본 첫 페이지 A홀
	@RequestMapping("information.hl")
	public ModelAndView informHallA(ModelAndView mv,
									@RequestParam(value="hallName",defaultValue="Concert Hall") String hallName)  {
		
		Hall hall = reservationService.selectHallInfo(hallName);
		
		if(hallName.equals("Concert Hall")) {
			mv.addObject("hallName", hallName).setViewName("reservation/hallInformation1");	
		}else if(hall.getHallName().equals("Dreaming Hall")) {
			mv.addObject("hallName", hallName).setViewName("reservation/hallInformation2");	
		}else {
			mv.setViewName("common/errorPage");	
		}
		
		return mv;
	}
		
	
	@RequestMapping("howToCome.hl")
	public String howToCome() {
	
		return "reservation/locationInform";
	}
	
	//대관 신청서 페이지로 이동
	@GetMapping("application.rv")
	public ModelAndView viewApplicationForm(HttpSession session
										 	,String hallName
											,ModelAndView mv) {
			
		Member loginUser = (Member)session.getAttribute("loginUser");
		String userId = loginUser.getUserId();

		
		mv.addObject("userId",userId).addObject("hallName", hallName).setViewName("reservation/applicationForm");
		return mv;
	}
	
	//시간 입력 메서드
	@ResponseBody
	@RequestMapping(value="setTime.rv", produces = "application/json; charset=UTF-8")
	public String setTime(String eventDateList) {
		String[] arr = eventDateList.split(",");
		return new Gson().toJson(arr);
	}

	//대관 신청서 입력받고 메인으로 이동
	@PostMapping("application.rv")
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
	
	//예매 페이지로 이동 
	@GetMapping("make.rv")
	public String selectPerformaceForm(Model model
									   ,int rentalCode) {
		ArrayList<Performance> list = reservationService.selectPerformanceList(rentalCode);
		Hall hall = reservationService.selectHallInfo(list.get(0).getHallName());
		RentApplication ra = reservationService.selectRentApplication(rentalCode);
		String[] raArr = ra.getEventDate().split(",");

		Date nowDate = new Date();
		SimpleDateFormat simpleDateFormatFull = new SimpleDateFormat("yyyyMMdd");
		
		for(int i = 0; i < list.size(); i++) {
			if(Integer.parseInt(list.get(i).getPerfoEventDate().substring(0,4) + list.get(i).getPerfoEventDate().substring(5,7) + list.get(i).getPerfoEventDate().substring(8,10)) 
				<= Integer.parseInt(simpleDateFormatFull.format(nowDate))) {
				list.remove(i);
				i--;
			}
		}
		
		if(list.isEmpty()) {
			model.addAttribute("alertMsg","해당 공연은 예매가 불가능 합니다.");
			return "redirect/";			
		}
		
		model.addAttribute("list",list).addAttribute("ra",ra).addAttribute("raArr",raArr).addAttribute(hall);
		return "reservation/makeReservation";
	}
	
	//예매페이지 중 실제 공연일 선택시 해당 날짜 공연정보 전달
	@ResponseBody
	@RequestMapping(value="perfoNum.rv", produces = "application/json; charset=UTF-8")
	public String perfoNum(String perfoEventDate, int rentalCode, String hallName) {
		int result;
		Performance pf = new Performance();
		
		pf.setPerfoEventDate(perfoEventDate);
		pf.setRentalCode(rentalCode);
		
		Performance pfmc = reservationService.getReservationPerformance(pf);
		Hall hallSeats = reservationService.getHallSeats(hallName);
		int purchaseSeats = reservationService.getPurchaseSeats(pfmc.getPerfoNo());

		result = hallSeats.getHallSeats() - purchaseSeats;
		pfmc.setRemainingSeats(result);
		return new Gson().toJson(pfmc);
	}
	
	//좌석 선택 페이지로 이동
	@RequestMapping("selectSeats.rv")
	public ModelAndView selectPerformaceInfo(ModelAndView mv, int rentalCode, int perfoNo) {
		RentApplication ra = reservationService.selectRentApplication(rentalCode);
		Performance performance = reservationService.selectPerformance(perfoNo);
		ArrayList<Seat> sosl = reservationService.selectSoldOutSeats(perfoNo);
		ArrayList<Seat> asat = reservationService.selectAllSeats(ra.getHallName());
		
		mv.addObject("ra", ra).addObject("performance", performance).addObject("asat", asat).addObject("sosl", sosl).setViewName("reservation/makeReservation2");
		return mv;
	}
	
	//가격 확인 페이지로 이동
	@RequestMapping("discount.rv")
	public ModelAndView discount(ModelAndView mv, int rentalCode, int perfoNo, String[] selectedSeats, HttpSession session) {
		RentApplication ra = reservationService.selectRentApplication(rentalCode);
		Performance performance = reservationService.selectPerformance(perfoNo);
		ArrayList<String> selectAllSeats = new ArrayList<String>();
		String seatTier;
		String seatCode;
		Seat chkSeat = new Seat();
		Purchase p = new Purchase();
		Member loginUser = (Member)session.getAttribute("loginUser");
		String userId = loginUser.getUserId();

		for(String i : selectedSeats) {
			chkSeat.setHallName(ra.getHallName());
			chkSeat.setSeatCode(i.substring(1));
			int seatNo = reservationService.selectSeatNo(chkSeat);
			p.setSeatNo(seatNo);
			p.setUserId(userId);
			p.setPerfoNo(perfoNo);
			reservationService.blockSeats(p);
			selectAllSeats.add(i);
		}
		mv.addObject("ra", ra).addObject("performance", performance).addObject("selectAllSeats", selectAllSeats).setViewName("reservation/makeReservation3");
		return mv;
	}
	
	//결제 페이지로 이동
	@RequestMapping("payment.rv")
	public ModelAndView ViewPaymentPage(ModelAndView mv, int rentalCode, int perfoNo, String thisSeats, int totalPrice, HttpSession session){
		ArrayList<String> selectAllSeats = new ArrayList<String>();
		RentApplication ra = reservationService.selectRentApplication(rentalCode);
		Performance performance = reservationService.selectPerformance(perfoNo);
		String[] seats = thisSeats.split(",");
		Member loginUser = (Member)session.getAttribute("loginUser");
		String userId = loginUser.getUserId();
		
		DecimalFormat decFormat = new DecimalFormat("###,###");
		String tPrice = decFormat.format(totalPrice);

		for(int i = 0; i < seats.length; i++) {
			selectAllSeats.add(seats[i]);
		}
		
		mv.addObject("ra", ra).addObject("performance", performance).addObject("tPrice", tPrice).addObject("totalPrice", totalPrice).addObject("selectAllSeats", selectAllSeats).setViewName("reservation/makeReservation4");	
		return mv;
	}
	
	
	//예매 안내 페이지 이동
	@RequestMapping("infomTicket.rv")
	public String infomTicket() {
		return "reservation/infomTicket";
	}
	
	// 대관공고 페이지 이동??? 페이지 이상함
	@RequestMapping("rentList.rv")
	public String rentList() {
		return "reservation/rentList";
	}
	// 대관공고 페이지내 공고 검색어 기능 기능구현 아직안함
	@RequestMapping("serchListRent.rv")
	public String serchListRent() {
		return "reservation/rentList";
	}
	
}

