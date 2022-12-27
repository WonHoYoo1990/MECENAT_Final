package com.kh.mecenat.notice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class NoticeController {
	
	
	//memcenat소식 폼으로 이동
	@RequestMapping("noticeForm.no")
	public String noticeForm() {
		return "notice/allNotice";
	}
	
}
