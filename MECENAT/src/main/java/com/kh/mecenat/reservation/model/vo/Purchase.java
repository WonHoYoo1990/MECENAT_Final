package com.kh.mecenat.reservation.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor//기본생성자
@AllArgsConstructor//모든필드 매개변수 생성자
@Data
public class Purchase {

	private int purchaseNo;//	PURCHASE_NO
	private String userId;//	USER_ID
	private int rentalCode;//	RENTAL_CODE
	private int seatNo;//	SEAT_NO
	private int paymentNo;//	PAYMENT_NO
	private String customerserviceStatus;//	CUSTOMERSERVICE_STATUS
	private Date purchaseDate;//	PURCHASE_DATE
	private Date reservationDate;//	RESERVATION_DATE
	private int totalPrice;//	TOTAL_PRICE
	
}
