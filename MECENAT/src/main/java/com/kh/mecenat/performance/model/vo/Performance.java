package com.kh.mecenat.performance.model.vo;

import java.sql.Date;

import com.kh.mecenat.member.model.vo.Member;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Performance {

	private int perfoNo;
	private int rentalCode;
	private String perfoTitle;
	private String genreName;
	private Date perfoStartDate;
	private Date perfoEndDate;
	private String directo;
	private String cast;
	private String perfoContent;
	private int runningTime;
	private int ageLimit;
	private String perfoStatus;
	private int price;
	private String originName;
	private String changeName;

}
