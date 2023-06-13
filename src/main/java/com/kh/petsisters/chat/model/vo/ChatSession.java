package com.kh.petsisters.chat.model.vo;

import java.util.ArrayList;

import org.springframework.stereotype.Component;

@Component("cSession")
public class ChatSession {
	
    // static으로 필드변수를 설정하여 같은 ArrayList를 이용 할 수 있도록 선언합니다.
    private static ArrayList<Integer> loginUser = new ArrayList<Integer>();
    
    // 로그인 시 ArrayList에 추가합니다.
    public void addLoginUser(int userNo) {
        loginUser.add(userNo);
    }
    
    // 로그아웃 시 ArrayList에서 제거합니다.
    public void removeLoginUser(int userNo) {
        loginUser.remove(Integer.valueOf(userNo));
    }
 
    // 현재 로그인 되어 있는 유저 목록을 가져옵니다.
    public static ArrayList<Integer> getLoginUser() {
        return loginUser;
    }
 
    // 자동 setter. 사용하진 않았습니다.
    public static void setLoginUser(ArrayList<Integer> loginUser) {
        ChatSession.loginUser = loginUser;
    }

}
