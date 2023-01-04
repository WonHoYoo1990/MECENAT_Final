package com.kh.mecenat.notice.model.vo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class NoticeType {
//	BOARD_CODE	NUMBER
//	BOARD_NAME	VARCHAR2(30 BYTE)
	
	private String boardCode;
	private String boardName;
}
