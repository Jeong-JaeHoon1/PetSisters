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
	private int dogAge;
}
