package com.kh.petsisters.inquiry.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.petsisters.common.model.vo.PageInfo;
import com.kh.petsisters.inquiry.model.vo.CSReply;
import com.kh.petsisters.inquiry.model.vo.Inquiry;
import com.kh.petsisters.member.model.vo.Member;

@Repository
public class InquiryDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	// 관리자용 1:1문의글 개수
	public int selectAllCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("inquiryMapper.selectAllCount");
	}
	
	// 관리자용 1:1문의 리스트
	public List<Inquiry> selectAdminInquiry(SqlSessionTemplate sqlSession, PageInfo pi, int userNo) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		List<Inquiry> list = sqlSession.selectList("inquiryMapper.selectAdminInquiry", userNo, rowBounds);
		return list;
	}
	
	public int selectListCount(SqlSessionTemplate sqlSession, int userNo) {
		return sqlSession.selectOne("inquiryMapper.selectListCount", userNo);
	}
	
	// 대시보드용 : 
	public List<Inquiry> selectDashboardList(SqlSessionTemplate sqlSession) {
		
		List<Inquiry> list = sqlSession.selectList("inquiryMapper.selectDashboardList", null);
		return list;
	}
	
	public List<Inquiry> selectList(SqlSessionTemplate sqlSession, PageInfo pi, int userNo) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		List<Inquiry> list = sqlSession.selectList("inquiryMapper.selectList", userNo, rowBounds);
		return list;
	}
	
	public int insertInquiry(SqlSessionTemplate sqlSession, Inquiry i) {
		
		int result = sqlSession.insert("inquiryMapper.insertInquiry", i);
		i.setInquiryNo(sqlSession.selectOne("inquiryMapper.selectInquiryNo"));
		return result;
	}
	
	public Inquiry selectInquiry(SqlSessionTemplate sqlSession, int inquiryNo) {
		return sqlSession.selectOne("inquiryMapper.selectInquiry", inquiryNo);
	}
	
	public int deleteInquiry(SqlSessionTemplate sqlSession, int inquiryNo) {
		return sqlSession.delete("inquiryMapper.deleteInquiry", inquiryNo);
	}
	
	public List<CSReply> selectReplyList(SqlSessionTemplate sqlSession, int inquiryNo) {
		return sqlSession.selectList("inquiryMapper.selectReplyList", inquiryNo);
	}

	public int insertReply(SqlSessionTemplate sqlSession, CSReply r) {
		return sqlSession.insert("inquiryMapper.insertReply", r);
	}
	
}
