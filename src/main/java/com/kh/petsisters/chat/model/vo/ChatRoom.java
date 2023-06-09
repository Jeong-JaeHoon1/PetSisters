package com.kh.petsisters.chat.model.vo;

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
public class ChatRoom {
	
	private int roomNo;
	
	private int userNo;
	private String userNickname;
	private String userPic;
	private String userPet;
	private String userPro;
	
	private int masterNo;
	private String masterNickname;
	private String masterPic;
	private String masterPet;
	private String masterPro;
	
	private String lastMessage;
	private int unReadCount;

}
