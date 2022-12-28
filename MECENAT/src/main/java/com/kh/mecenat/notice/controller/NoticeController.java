package com.kh.mecenat.notice.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.mecenat.common.PageInfo;
import com.kh.mecenat.common.Pagination;
import com.kh.mecenat.notice.model.service.NoticeService;
import com.kh.mecenat.notice.model.vo.Notice;


@Controller
public class NoticeController {
	
	@Autowired
	private NoticeService noticeService;
	
	//memcenat소식 폼으로 이동
	@RequestMapping("noticeForm.no")
	public String noticeForm() {
		return "notice/allNotice";
	}
	
	//공지사항 리스트+페이징 처리
	@RequestMapping("list.no")
	public String selectList(@RequestParam(value="currentPage",defaultValue="1") int currentPage,
							Model model) {
		
		
		
		int listCount = noticeService.selectListCount();
		int pageLimit = 10;
		int boardLimit = 5;
		
		PageInfo pi = Pagination.getPageinfo(listCount, currentPage, pageLimit, boardLimit);
		
		ArrayList<Notice> list = noticeService.selectList(pi);
		
		model.addAttribute("list", list);
		model.addAttribute("pi", pi);
		
		return "notice/allNotice";
	}
	
	
	
	
}
