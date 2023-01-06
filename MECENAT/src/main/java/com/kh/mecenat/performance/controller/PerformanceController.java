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
import com.kh.mecenat.common.Pagination;
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

//	유리)공연 등록폼 이동
	@RequestMapping("insertForm.perf")
	public String performanceInsertForm(Model model, int rno) {
		Performance pList = perfoService.selectListPerformance(rno);
		RentApplication rList = perfoService.selectRentalApplicationR(rno);
		
		
//		int updateStatus = perfoService.updateRentalAppStatus(rno);
		
		System.out.println(rList);

		model.addAttribute("rList", rList);
		
		
		return "performance/performanceInsert2";

	}

//	유리)관리자용 공연 등록
	@PostMapping("insert.perf")
	public ModelAndView insertPerformance(Performance p, int rcode, String eDate, String eTime, MultipartFile upfile,
		   ModelAndView mv, HttpSession session) {

		System.out.println(eDate);
		System.out.println(eTime);

		String[] dateArr = eDate.split(",");
		String[] timeArr = eTime.split(",");
		
		
		
		int result = 0;
		String changeName = saveFile(upfile, session);
		
			
		for (int j = 0; j < dateArr.length; j++) {
			
			String dateInx = dateArr[j];
			String timeInx = timeArr[j];
			
			p.setOriginName(upfile.getOriginalFilename());
			p.setChangeName("resources/performanceFiles/" + changeName);
			
	
			p.setRentalCode(rcode);
			p.setPerfoEventDate(dateInx);
			p.setStartTime(timeInx);
			System.out.println(p);
	
			result = perfoService.insertPerformance(p);
			if(result>0) {
				int updateStatus = perfoService.updateRentalAppStatus(rcode);
			}
		}
		if(result>0) {
			perfoService.updateRentalAppStatus(rcode);
		}
		mv.setViewName("redirect:list.perf");

		return mv;

	}

//	유리)공연삭제(performance에서만 삭제함)
	@ResponseBody
	@RequestMapping(value = "deletePerf.perf")
	public String performanceDelete(int rcode) {
		System.out.println(rcode+"삭제버튼 클릭");
		
		perfoService.performanceDelete(rcode);
		
		return "performance/playPerformanceForm";
	}

	
	
//	유리)승인페이지에 뿌려줄 RENTALAPPLICATION 뽑아오기
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
//	유리)승인취소
	@ResponseBody
	@RequestMapping(value = "cancel.perf")
	public String cancelPerformance(int rcode) {
//		System.out.println("appreve.perf입니다: rcode->" + rcode);

		int result = perfoService.cancelPerformance(rcode);

		return "redirect:/approveWaitForm.mana";
	}
	
//	유리) 승인 거부
	@ResponseBody
	@RequestMapping(value = "nope.perf")
	public String nopePerformance(int rcode) {
//		System.out.println(rcode+"미승인");
		int result = perfoService.nopePerformance(rcode);
		return "redirect:/approveWaitForm.mana";
	}

//유리)detailForm으로 이동
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

//	유리) 상영중인 공연 관리하기
	@RequestMapping("playPerformanceForm.mana")
	public String selectList(@RequestParam(value="currentPage", defaultValue = "1")int currentPage,
							 @RequestParam(value="currentPageEnd", defaultValue = "1")int currentPageEnd,
							 Model model) {
		
		int listCount = perfoService.selectListCount();
		int listEndCount = perfoService.selectEndListCount();
		int pageLimit = 10;
		int boardLimit = 5;
		
		PageInfo pi = Pagination.getPageinfo(listCount, currentPage, pageLimit, boardLimit);
		PageInfo piEnd = Pagination.getPageinfo(listEndCount, currentPageEnd, pageLimit, boardLimit);
		
		ArrayList<Performance> pList = perfoService.selectPlayPerformance(pi);
		
		ArrayList<Performance> eList = perfoService.selectEndPlayPerformance(piEnd);
		
		String[] dateArr = new String[pList.size()];
		String sp ="";
		
		for(int i=0; i<pList.size(); i++) {

			dateArr[i] = pList.get(i).getEventDate();

			String[] dateSArr = dateArr[i].split(",");

			sp = "";

			if (dateSArr.length != 1) {
				sp += dateSArr[0] + " ~ " + dateSArr[dateSArr.length - 1];
			} else {
				sp += dateSArr[0];
			}
			dateArr[i] = sp;

			pList.get(i).setEventDate(sp);
		}
		
		dateArr = new String[eList.size()];
		sp ="";
		for(int i=0; i<eList.size(); i++) {
			dateArr[i] = pList.get(i).getEventDate();
			
			String[] dateSArr = dateArr[i].split(",");
			
			sp="";
			
			if(dateSArr.length != 1) {
				sp += dateSArr[0] + " ~ " + dateSArr[dateSArr.length-1];
			}else {
				sp+= dateSArr[0];
			}
			dateArr[i] = sp;
			
			eList.get(i).setEventDate(sp);
		}
		
		
		model.addAttribute("pi",pi);
		model.addAttribute("piEnd", piEnd);
		
		model.addAttribute("pList", pList);

		model.addAttribute("eList", eList);
		return "performance/playPerformanceForm";
	}

	// 서브 메인페이지 이동
	@RequestMapping("subMainPerformance.perf")
	public String subMainPerformance() {
		return "performance/subMainPerformance";
	}

	// 서브 메인페이지 내에서 현재 페이지 공연 리스트 보여주기
	@RequestMapping("subMainPerformanceList.perf")
	@ResponseBody
	public ModelAndView subMainPerformanceList(String sdate, ModelAndView mv) {

		System.out.println("sdate : " + sdate);

		ArrayList<Performance> pList = perfoService.subMainPerformanceList(sdate);
		System.out.println("pList : " + pList);

		mv.addObject("pList", pList).setViewName("performance/subMainPerformanceList");

		return mv;
	}

	// 서브 메인페이지 내에서 공연 리스트 개수
	@RequestMapping("subMainPerformanceListCount.perf")
	@ResponseBody
	public int subMainPerformanceListCount(String sdate) {

		int listCount = perfoService.subMainPerformanceListCount(sdate);

		System.out.println("listCount : " + listCount);

		return listCount;
	}

	// 서브 메인페이지 내에서 공연 리스트 최신순 정렬
	@RequestMapping("subMainPerformanceSearchSort1.perf")
	public ModelAndView subMainPerformanceSearchSort1(String sdate, ModelAndView mv) {

		System.out.println("sdate : " + sdate);

		ArrayList<Performance> pList = perfoService.subMainPerformanceSearchSort1(sdate);
		System.out.println("pList : " + pList);

		mv.addObject("pList", pList).setViewName("performance/subMainPerformanceList");

		return mv;
	}

	// 서브 메인페이지 내에서 공연 리스트 관심순 정렬
	@RequestMapping("subMainPerformanceSearchSort2.perf")
	public ModelAndView subMainPerformanceSearchSort2(String sdate, ModelAndView mv) {

		System.out.println("sdate : " + sdate);

		ArrayList<Performance> pList = perfoService.subMainPerformanceSearchSort2(sdate);
		System.out.println("pList : " + pList);

		mv.addObject("pList", pList).setViewName("performance/subMainPerformanceList");

		return mv;
	}

	// 서브 메인페이지 내에서 공연 검색어 리스트 검색 조회
	@RequestMapping("subMainPerformanceSearch.perf")
	public ModelAndView subMainPerformanceSearch(String searchWrd, ModelAndView mv) {

		System.out.println("하잉");

		System.out.println("searchWrd : " + searchWrd);

		ArrayList<Performance> pList = perfoService.subMainPerformanceSearch(searchWrd);
		System.out.println("pList : " + pList);

		mv.addObject("pList", pList).setViewName("performance/subMainPerformanceList");

		return mv;
	}

	// 서브 메인페이지 내에서 검색어 리스트 개수 조회
	@RequestMapping("subMainPerformanceSearchCount.perf")
	@ResponseBody
	public int subMainPerformanceSearchCount(String searchWrd) {

		int listCount = perfoService.subMainPerformanceSearchCount(searchWrd);

		System.out.println("listCount : " + listCount);

		return listCount;
	}
	
	
//	유리) PERFO_STATUS 변경
	
	@ResponseBody
	@RequestMapping(value = "statusChange.perf")
	public void updateStatus(int rcode, String statusVal) {

		System.out.println(rcode + statusVal);

		Performance p = new Performance();
		p.setRentalCode(rcode);
		p.setPerfoStatus(statusVal);

		System.out.println(p);

		int updateStatus = perfoService.updateStatus(p);
		
	}
	
	//yuri myPage date값 가져오기....
	@ResponseBody
	@RequestMapping(value = "searchList.perf")
	public void searchList(String FirstDate, String LastDate) {
		System.out.println(FirstDate);
		System.out.println(LastDate);
	}

	// 댓글 리스트 조회
	@ResponseBody
	@RequestMapping(value = "rlist.bo", produces = "application/json; charset=UTF-8")
	public String selectReviewList(int rno) {

		ArrayList<Review> list = perfoService.selectReviewList(rno);

//			System.out.println(rno);

		return new Gson().toJson(list);

	}

	@ResponseBody
	@RequestMapping(value = "rinsert.bo", produces = "text/html; charset=UTF-8")
	public String insertReview(Review r) {

		int result = perfoService.insertReview(r);

//			System.out.println(result);

		return result > 0 ? "yes" : "no";
	}

	@RequestMapping("list.new")
	public String kkkkk(Model model) {
		System.out.println("dd");

		ArrayList<Performance> pList = perfoService.selectListNew();

		System.out.println(pList);

		model.addAttribute("pList", pList);

		return "performance/performanceListView2";
	}

	@RequestMapping("list.genre")
	public String genre(Model model, String genreName) {

		System.out.println(genreName);

		ArrayList<Performance> pList = perfoService.selectListgenre(genreName);

		System.out.println(pList);

		model.addAttribute("pList", pList);

		return "performance/performanceListView2";
	}

}
