package com.kh.petsisters.inquiry.model.service;

import java.util.List;

import com.kh.petsisters.common.model.vo.PageInfo;
import com.kh.petsisters.inquiry.model.vo.CSReply;
import com.kh.petsisters.inquiry.model.vo.Inquiry;
import com.kh.petsisters.member.model.vo.Member;

public interface InquiryService {

	// 1:1문의 리스트 조회 서비스 (+ 페이징처리)
	
	// 관리자용 1:1문의글 개수 조회
	int selectAllCount();
	
	// 관리자용 1:1문의 리스트
	List<Inquiry> selectAdminInquiry(PageInfo pi, int userNo);
	
	// 1:1 문의글 본인글 개수 조회
	int selectListCount(int userNo);
	
	// 대시보드 조회용 list
	List<Inquiry> selectDashboardList();

	// 1:1문의 리스트 조회
	List<Inquiry> selectList(PageInfo pi, int userNo);
	
	// 1:1문의 작성하기 서비스
	int insertInquiry(Inquiry i);
	
	// 1:1문의 상세조회 서비스
	// 1:1문의 상세 조회
	Inquiry selectInquiry(int inquiryNo);
	
	// 1:1문의 삭제 서비스
	int deleteInquiry(int inquiryNo);
	
	// 댓글 리스트 조회 서비스 (Ajax)
	List<CSReply> selectReplyList(int inquiryNo);
	
	// 댓글 작성 서비스 (Ajax)
	int insertReply(CSReply r);
	
}
