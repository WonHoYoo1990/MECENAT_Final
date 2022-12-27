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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.mecenat.common.PageInfo;
import com.kh.mecenat.performance.model.service.PerformanceService;
import com.kh.mecenat.performance.model.vo.Performance;
import com.kh.mecenat.reservation.model.vo.RentApplication;

import javafx.scene.control.Pagination;

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

		model.addAttribute("pList", pList);

		return "performance/performanceListView2";
	}

//	공연 등록폼 이동
	@RequestMapping("insertForm.perf")
	public String performanceInsertForm() {
		return "performance/performanceInsert2";
	}

//	관리자용 공연 등록
	@PostMapping("insert.perf")
	public ModelAndView insertPerformance(Performance p, MultipartFile upfile, ModelAndView mv, HttpSession session) {
		String changeName = saveFile(upfile, session);
		p.setOriginName(upfile.getOriginalFilename());
		p.setChangeName("resources/performanceFiles/" + changeName);

		int result = perfoService.insertPerformance(p);

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
//		System.out.println("dd");

		ArrayList<RentApplication> rList = perfoService.selectRentalApplication();

//		System.out.println(rList);

		model.addAttribute("rList", rList);

		return "performance/approveWaitForm";
	}

	@RequestMapping("approve.perf")
	public String approvePerformance(int rno) {
//		System.out.println(rno);
//		approveWaitForm.mana
		int result = perfoService.approvePerformance(rno);
		// http://localhost:8889/mecenat/approveWaitForm.mana

		if (result > 0) {

		} else {

		}
		return "redirect:/approveWaitForm.mana";

	}

	@RequestMapping("detail.perf")
	public String performanceDateilForm(int rno, Model model) {
//		System.out.println(rno);

		Performance pList = perfoService.selectListPerformance(rno);

//		System.out.println("아레노 들고 디테일폼으로 가려고하는즁" + pList);

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

		// 페이징 처리를 위해 전체 게시글 개수 조회해오기
		// 페이징 처리 pageLimit 10
		// boardLimit 5
		
		System.out.println("listCount 안에 sdate: " + sdate);
		

		int listCount = perfoService.ListCountSubMainPerformance(sdate);

//		int pageLimit = 5; // 페이지 보여질 갯수
//		int boardLimit = 5; // 한 페이지에 게시글 보여질 갯수
//		
		System.out.println("listCount : " + listCount);
//		System.out.println("pageLimit : " + pageLimit);
//		System.out.println("boardLimit : " + boardLimit);
//		
//		PageInfo pi = Pagination.getPageinfo(listCount, currentPage, pageLimit, boardLimit);

		return listCount;
	}

	// asdfasdfasdfasdfasdfasdfasdf"asdf.mana"
	@ResponseBody
	@RequestMapping(value = "testrCode.con", produces = "application/json; charset=UTF-8")
	public void asdf(int rCode) {
		System.out.println("뚜루뚜뚜뚜뽀롱뽀뽀뽀" + rCode);
	}

}
