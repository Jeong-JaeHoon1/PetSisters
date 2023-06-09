package com.kh.petsisters.chat.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.petsisters.chat.model.vo.ChatMessage;
import com.kh.petsisters.chat.model.vo.ChatRoom;
import com.kh.petsisters.member.model.vo.Member;

@Repository
public class ChatDao {
	
	@Autowired
    SqlSessionTemplate sqlSession;
	
    public ChatRoom selectChatRoom(int roomNo) {
    	System.out.println(roomNo);
        return sqlSession.selectOne("chatMapper.selectChatRoom", roomNo);
    }
    public int insertMessage(ChatMessage chatMessage) {
        return sqlSession.insert("chatMapper.insertMessage", chatMessage);
    }
    public List<ChatRoom> chatRoomList(int userNo) {
        return sqlSession.selectList("chatMapper.chatRoomList", userNo);
    }
    public int selectUnReadCount(ChatMessage message) {
    	return sqlSession.selectOne("chatMapper.selectUnReadCount",message);
    }
   
    public List<ChatMessage> messageList(int roomNo) {
        return sqlSession.selectList("chatMapper.messageList", roomNo);
    }
    
    public Member getMemberDetail(int userNo) {
    	return sqlSession.selectOne("chatMapper.getMemberDetail", userNo);
    }
 
    public int createChat(ChatRoom room) {
        return sqlSession.insert("chatMapper.createChat", room);
    }
 
    public ChatRoom searchChatRoom(ChatRoom room) {
        return sqlSession.selectOne("chatMapper.searchChatRoom", room);
    }
 
 
 
//    public int updateCount(ChatMessage message) {
//        return sqlSession.update("chatMapper.updateCount", message);
//    };

}
