package com.kh.mecenat.notice.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Notice {
//	NOTICE_NO	NUMBER
//	BOARD_CODE	NUMBER
//	USER_ID	VARCHAR2(50 BYTE)
//	NOTICE_TITLE	VARCHAR2(100 BYTE)
//	NOTICE_CONTENT	VARCHAR2(2000 BYTE)
//	NOTICE_DATE	DATE
//	NOTICE_COUNT	NUMBER
//	STATUS	VARCHAR2(1 BYTE)
	
	private int noticeNo;
	private String boardCode;
	private String boardName;
	private String userId;
	private String noticeTitle;
	private String noticeContent;
	private String originName;
	private String changeName;
	private Date noticeDate;
	private int noticeCount;
	private String status;
	
	
	

}
