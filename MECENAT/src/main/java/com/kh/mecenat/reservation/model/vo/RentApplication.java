package com.kh.mecenat.reservation.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor//기본생성자
@AllArgsConstructor//모든필드 매개변수 생성자
@Data
public class RentApplication {

	private int rentalCode;//	RENTAL_CODE
	private String userId;//	USER_ID
	private String hallName;//	HALL_NAME
	private String covenanteeName;//	COVENANTEE_NAME
	private String covenanteePhone;//	COVENANTEE_PHONE
	private String agentName;//	AGENT_NAME
	private String agentPhone;//	AGENT_PHONE
	private String agentEmail;//	AGENT_EMAIL
	private Date rentalStartDate;//	PERFO_START_DATE
	private Date rentalEndDate;//	RENTAL_END_DATE
	private String eventDate;//	EVENT_DATE
	private String eventTime;//	EVENT_TIME
	private String rentalPropose;//	RENTAL_PROPOSE
	private Date rentalDate;//	RENTAL_DATE
	private String  approveStatus;//	APPROVE_STATUS
	
}
