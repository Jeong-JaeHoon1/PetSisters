package com.kh.petsisters.chat.model.service;

import java.util.List;

import com.kh.petsisters.chat.model.vo.ChatMessage;
import com.kh.petsisters.chat.model.vo.ChatRoom;
import com.kh.petsisters.member.model.vo.Member;

public interface ChatService {
	
	ChatRoom selectChatRoom(int roomNo);
	
	int insertMessage(ChatMessage chatMessage);
	
	List<ChatRoom> chatRoomList(int userNo);
	
	List<ChatMessage> messageList(int roomNo);
	
	int selectUnReadCount(ChatMessage message);
	
	Member getMemberDetail(int userNo);
	
	ChatRoom searchChatRoom(ChatRoom room);

	int createChat(ChatRoom room);
	
}
