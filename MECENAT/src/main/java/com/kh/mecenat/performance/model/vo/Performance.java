package com.kh.mecenat.performance.model.vo;

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
	private String perfoEventDate;
	private String director;
	private String cast;
	private String perfoContent;
	private String startTime;
	private String runningTime;
	private int ageLimit;
	private String perfoStatus;
	private int price;
	private String originName;
	private String changeName;
	
	private String eventTime;
	private String eventDate;
	

}
