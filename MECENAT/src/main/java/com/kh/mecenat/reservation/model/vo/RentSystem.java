package com.kh.mecenat.reservation.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor//기본생성자
@AllArgsConstructor//모든필드 매개변수 생성자
@Data
public class RentSystem {

	private int rentalCode;//	RENTAL_CODE
	private String userId;//	USER_ID
	private int perfoNo;//	PERFO_NO
	private String hallStatus;//	HALL_STATUS
	
	
}
