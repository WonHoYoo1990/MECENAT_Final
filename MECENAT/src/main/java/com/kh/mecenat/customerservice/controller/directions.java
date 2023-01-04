package com.kh.mecenat.customerservice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class directions {

//	오시는길 페이지 이동
	@RequestMapping("directions.cs")
	public String directions() {
		return "customerservice/directions";

	}

}
