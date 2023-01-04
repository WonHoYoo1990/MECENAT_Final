package com.kh.mecenat.reservation.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor//기본생성자
@AllArgsConstructor//모든필드 매개변수 생성자
@Data
public class Seat {
	private int seatNo;//	SEAT_NO
	private String seatCode;//	SEAT_CODE
	private String hallName;//	HALL_NAME
	private String seatTier;//	SEAT_TIER
	private int seatPrice;//	SEAT_PRICE
	private String seatStatus;//	SEAT_STATUS
}
