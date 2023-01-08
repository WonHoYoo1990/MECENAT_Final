package com.kh.mecenat.reservation.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor//기본생성자
@AllArgsConstructor//모든필드 매개변수 생성자
@Data
public class Performance {

	private int perfoNo;//	PERFO_NO
	private int rentalCode;//	RENTAL_CODE
	private String perfoTitle;//	PERFO_TITLE
	private String genreName;//	GENRE_NAME
	private Date perfoDate;//	PERFO_DATE
	private String perfoEventDate;//	PERFO_EVENT_DATE
	private String director;//	DIRECTOR
	private String cast;//	CAST
	private String perfoContent;//	PERFO_CONTENT
	private String startTime;//	START_TIME
	private String runningTime;//	RUNNING_TIME
	private int ageLimit;//	AGE_LIMIT
	private String  perfoStatus;//	PERFO_STATUS
	private String  perfoDeleteStatus;//PERFO_DELETE_STATUS
	private int price;//	PRICE
	private String  originName;//	ORIGIN_NAME
	private String  changeName;//	CHANGE_NAME
	private String  hallName;//	HALL_NAME
	private int remainingSeats;//	남은 좌석수
}