package com.kh.mecenat.performance.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.mecenat.performance.model.service.PerformanceService;
import com.kh.mecenat.performance.model.vo.Performance;
import com.kh.mecenat.reservation.model.vo.RentApplication;

@Controller
public class PerformanceController {

	@Autowired
	private PerformanceService perfoService;

//	전체 공연 목록 뽑기('status=>"상영중(나중에 변경해야징)")
	@RequestMapping("list.perf")
	public String performanceList(Model model) {
//		System.out.println("list단");
		ArrayList<Performance> pList = perfoService.selectListPerformance();
//		System.out.println("pList : "+pList);
//		
		model.addAttribute("pList", pList);

		return "performance/performanceListView2";

	}

//	공연 등록폼 이동
	@RequestMapping("insertForm.perf")
	public String performanceInsertForm(Model model, int rno) {
		//이거 performance가아니라 reservation이여야함...
		Performance pList = perfoService.selectListPerformance(rno);
		RentApplication rList = perfoService.selectRentalApplicationR(rno);
		
		int updateStatus = perfoService.updateRentalAppStatus(rno);
		
		System.out.println(rList);
		
		model.addAttribute("rList", rList);
		
		return "performance/performanceInsert2";

	}

//	관리자용 공연 등록
	@PostMapping("insert.perf")
	public ModelAndView insertPerformance(Performance p, int rcode, String eDate, String eTime, MultipartFile upfile, ModelAndView mv,
			HttpSession session) {
		
		System.out.println(eDate);
		System.out.println(eTime);
		
		String[] dateArr=eDate.split(",");
		String[] timeArr=eTime.split(",");
		
		int result=0;
		String changeName = saveFile(upfile, session);
		
		for(int i =0 ;i<dateArr.length; i++) {
			
			String dateInx = dateArr[i];
			String timeInx = timeArr[i];
			
			p.setOriginName(upfile.getOriginalFilename());
			p.setChangeName("resources/performanceFiles/"+changeName);
			
			p.setRentalCode(rcode);
			p.setPerfoEventDate(dateInx);
			p.setStartTime(timeInx);
			System.out.println(p);
			
			result = perfoService.insertPerformance(p);
			
				
		}
		
		
		
		mv.setViewName("redirect:list.perf");
		
		return mv;
		
		
	}

//	등록된공연 빼기용
	@RequestMapping("delete.perf")
	
	
	public void performanceDelete() {

	}

//	승인페이지에 뿌려줄 RENTALAPPLICATION 뽑아오기
	@RequestMapping("approveWaitForm.mana")
	public String approveListForm(Model model) {

		ArrayList<RentApplication> rList = perfoService.selectRentalApplication();
		
//		System.out.println(rList);
		
		model.addAttribute("rList", rList);
		
		return "performance/approveWaitForm";
	}

	@ResponseBody
	@RequestMapping(value = "approve.perf")
	public String approvePerformance(int rcode) {
//		System.out.println("appreve.perf입니다: rcode->" + rcode);

		int result = perfoService.approvePerformance(rcode);

		return "redirect:/approveWaitForm.mana";
	}

	@ResponseBody
	@RequestMapping(value = "cancel.perf")
	public String cancelPerformance(int rcode) {
//		System.out.println("appreve.perf입니다: rcode->" + rcode);

		int result = perfoService.cancelPerformance(rcode);

		return "redirect:/approveWaitForm.mana";
	}

	@RequestMapping("detail.perf")
	public String performanceDateilForm(int rno, Model model) {

		Performance pList = perfoService.selectListPerformance(rno);
		
		System.out.println(pList);
		
		
		model.addAttribute("pList", pList);

		return "performance/performanceDetailForm";

	}

	public String saveFile(MultipartFile upfile, HttpSession session) {

		// 1. 원본파일명 뽑기
		String originName = upfile.getOriginalFilename();

		// 2. 시간형식 뽑기
		// 20221205153533
		String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());

		// 3. 확장자 추출
		String ext = originName.substring(originName.lastIndexOf("."));

		// 4. 랜덤 숫자 추출
		int ranNum = (int) (Math.random() * 90000 + 10000); // 5자리 랜덤값

		// 5. 모두 이어붙이기
		String changeName = currentTime + ranNum + ext;

		// 6. 파일을 업로드할 실질적인 위치(물리경로) 찾기
		String savePath = session.getServletContext().getRealPath("/resources/performanceFiles/");

		try {
			// 7. 물리경로 + 변경이름으로 파일 생성 및 업로드
			upfile.transferTo(new File(savePath + changeName));
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		return changeName;
	}

	// 예매 안내 페이지 이동
	@RequestMapping("infomTicket.re")
	public String infomTicket() {
		return "reservation/ticketImfomTest";
	}

	// 좌석 배치도 페이지 이동
	@RequestMapping("setInfom.perf")
	public String setInfom() {
		return "performance/setInfom";
	}

	// 서브 메인페이지 이동
	@RequestMapping("performanceMain.perf")
	public String performanceMain() {
		return "performance/performanceMain";
	}

	// 서브 메인페이지 내에서 현재 페이지 공연 리스트 보여주기
	@RequestMapping("subMainPerformanceList.perf")
	@ResponseBody
	public ModelAndView subMainPerformanceList(String sdate, ModelAndView mv) {

		System.out.println("sdate : " + sdate);

		ArrayList<Performance> pList = perfoService.subMainPerformanceList(sdate);
		System.out.println("pList : " + pList);

		mv.addObject("pList", pList).setViewName("performance/performanceMainResult");

		return mv;
	}

	// 게시글 총 개수 하는중 (-)
	@RequestMapping("ListCountSubMainPerformance.perf")
	@ResponseBody
	public int ListCountSubMainPerformance(String sdate) {

		int listCount = perfoService.ListCountSubMainPerformance(sdate);

		System.out.println("listCount : " + listCount);

		return listCount;
	}


	// asdfasdfasdfasdfasdfasdfasdf"asdf.mana"
	@ResponseBody
	@RequestMapping(value = "testrCode.con", produces = "application/json; charset=UTF-8")
	public void asdf(int rCode) {
		System.out.println("뚜루뚜뚜뚜뽀롱뽀뽀뽀" + rCode);
	}

}
