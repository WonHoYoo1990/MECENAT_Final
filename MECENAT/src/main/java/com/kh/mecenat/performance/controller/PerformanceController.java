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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.mecenat.performance.model.service.PerformanceService;
import com.kh.mecenat.performance.model.vo.Performance;

@Controller
public class PerformanceController {

	@Autowired
	private PerformanceService perfoService;
	
	@RequestMapping("list.perf")
	public String performanceList(Model model) {
//		System.out.println("list단");
		ArrayList<Performance> pList = perfoService.selectListPerformance();
//		System.out.println(pList);
		model.addAttribute("pList",pList);
		
		return "performance/performanceListView";
	}
	
	@RequestMapping("insertForm.perf")
	public String performanceInsertForm() {
		return "performance/performanceInsert";
	}
	
	@PostMapping("insert.perf")
	public ModelAndView insertPerformance(Performance p, MultipartFile upfile, ModelAndView mv, HttpSession session) {
		String changeName = saveFile(upfile, session);
		p.setOriginName(upfile.getOriginalFilename());
		p.setChangeName("resources/performanceFiles/"+changeName);
		
		int result = perfoService.insertPerformance(p);
		
		mv.setViewName("redirect:list.perf");
		
		return mv;
	}
	
	@RequestMapping("delete.perf")
	public void performanceDelete() {
		System.out.println("앙용");
	}
	
	
	public String saveFile(MultipartFile upfile, HttpSession session) {
		
		//1. 원본파일명 뽑기
		String originName = upfile.getOriginalFilename();
		
		//2. 시간형식 뽑기
		//20221205153533
		String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
		
		//3. 확장자 추출
		String ext = originName.substring(originName.lastIndexOf("."));
		
		//4. 랜덤 숫자 추출
		int ranNum = (int)(Math.random() * 90000 + 10000); //5자리 랜덤값
		
		//5. 모두 이어붙이기
		String changeName = currentTime+ranNum+ext;
		
		//6. 파일을 업로드할 실질적인 위치(물리경로) 찾기
		String savePath = session.getServletContext().getRealPath("/resources/performanceFiles/");
		
		try {
			//7. 물리경로 + 변경이름으로 파일 생성 및 업로드
			upfile.transferTo(new File(savePath+changeName));
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return changeName;		
	}
	
	
	
	
}
