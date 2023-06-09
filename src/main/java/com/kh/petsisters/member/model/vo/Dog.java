package com.kh.petsisters.member.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class Dog {
	
	private int dogNo;	
	private String dogName;
	private String dogGender;
	private String dogBreed;		
	private Date dogBirthday;		
	private int dogWeight;
	private String neutralizationStatus;
	private String dogNote;
	private String filePath;
	private String status;
	private int userNo;
	
	// 펫시터 프로필 상세페이지 반려동물 나이 조회용
	private int dogAge;
}
