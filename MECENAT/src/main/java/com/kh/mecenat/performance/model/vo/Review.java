package com.kh.mecenat.performance.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Review {
	
	private int reviewNo; //리뷰번호
	private int refNo;  //공연참조번호
	private String reviewWriter; //작성자
	private String content;      //내용
	private int starRate;	     //별점
	private Date writeDate;      //작성일
	private String status;       //상태값


}
