package com.kh.petsisters.board.model.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@Setter
@Getter
@ToString
public class Board {
	
	
	private int boardNo;
	private String boardTitle; 
	private String boardContent; 
	private String createDate; 
	private String status; 
	private int count; 
	private String userNo;
	// 카테고리
	private int categoryMain;
	private int categorySub;
	
	private String dogName;
	private String dogImg;
}
