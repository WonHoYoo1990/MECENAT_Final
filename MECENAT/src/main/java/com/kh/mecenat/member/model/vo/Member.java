package com.kh.mecenat.member.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Member {

	private String userId; // USER_ID VARCHAR2
	private String userPwd; // USER_PWD VARCHAR2
	private String userName;// USER_NAME VARCHAR2
	private String userPhone; // USER_PHONE VARCHAR2
	private String email; // USER_EMAIL VARCHAR2
	private Date enrollDate; // ENROLL_DATE DATE
	private Date updateDate; // UPDATE_DATE DATE
	private String userGrade; // USER_GRADE NUMBER
	private String status; // STATUS VARCHAR2

}
