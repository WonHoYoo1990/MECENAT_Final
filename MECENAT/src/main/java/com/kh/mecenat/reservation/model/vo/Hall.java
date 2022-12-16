package com.kh.mecenat.reservation.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor//기본생성자
@AllArgsConstructor//모든필드 매개변수 생성자
@Data
public class Hall {

	private String hallName;//	HALL_NAME
	private int hallSeats;//	HALL_SEATS
	private String hallLocation;//	HALL_LOCATION
	
	
}
