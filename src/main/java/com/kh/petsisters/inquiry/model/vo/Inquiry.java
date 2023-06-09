package com.kh.petsisters.inquiry.model.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@Setter
@Getter
@ToString
public class Inquiry {
	
	private int inquiryNo;
	private String inquiryTitle; // 문의글 제목
	private String inquiryContent; // 문의글 내용
	private String createDate; // 문의글 작성일
	private String status;
	private String filePath;
	private int userNo;
	private int count; // 댓글 갯수
	private String userNickname;
}
