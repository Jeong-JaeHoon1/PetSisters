package com.kh.petsisters.board.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.petsisters.board.model.vo.Attachment;
import com.kh.petsisters.board.model.vo.Board;
import com.kh.petsisters.board.model.vo.BoardReply;
import com.kh.petsisters.common.model.vo.PageInfo;

@Repository
public class BoardDao {
	
	public int selectListCount(SqlSessionTemplate sqlSession, Board b) {
		return sqlSession.selectOne("boardMapper.selectListCount", b);
	}
	
	public ArrayList<Board> selectList(SqlSessionTemplate sqlSession, PageInfo pi, Board b) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit(); 
		int limit = pi.getBoardLimit(); 
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("boardMapper.selectList", b, rowBounds);
	}
	
	
	public ArrayList<Board> selectFreeList(SqlSessionTemplate sqlSession, PageInfo pi) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("boardMapper.selectFreeList", null, rowBounds);
	}
	
	
	public int increaseCount(SqlSessionTemplate sqlSession, int boardNo) {
		return sqlSession.update("boardMapper.increaseCount", boardNo);
	}
	
	public Board selectBoard(SqlSessionTemplate sqlSession, int boardNo) {
		return sqlSession.selectOne("boardMapper.selectBoard", boardNo);
	}
	
	
	public int insertBoard(SqlSessionTemplate sqlSession, Board b) {
		int result = sqlSession.insert("boardMapper.insertBoard", b);
		b.setBoardNo(sqlSession.selectOne("boardMapper.selectBoardNo"));
		return result;
	}
	

	
	public int insertAttachmentList(SqlSessionTemplate sqlSession, ArrayList<Attachment> list) {
		//return sqlSession.insert("xxx.insertAttachmentList", list);
		
		// INSERT 문 (1회 ~ 4회, 여러번) => int (처리된 행의 갯수)
		int result = 1;
		
		for(Attachment at : list) {
			
			// 반복문이 돌  때마다 쿼리문 실행 후 결과  받기 => 누적 곱으로 구하기
			result *= sqlSession.insert("boardMapper.insertAttachmentList", at);
		}
		
		return result;
	}
	
	public ArrayList<Board> selectTopList(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("boardMapper.selectTopList");
	}

	public ArrayList<Board> selectBottomList1(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("boardMapper.selectBottomList1");
	}

	public ArrayList<Board> selectBottomList2(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("boardMapper.selectBottomList2");
	}

	public ArrayList<Board> selectBottomList3(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("boardMapper.selectBottomList3");
	}
	
	public Board selectBoardInUpdate(SqlSessionTemplate sqlSession, int bno) {
		return sqlSession.selectOne("boardMapper.selectBoardInUpdate"); 
	}
	
	public int updateBoard(SqlSessionTemplate sqlSession, Board b) {
		return sqlSession.update("boardMapper.updateBoard", b);
	}
	
	public int deleteAttaAll(SqlSessionTemplate sqlSession, int boardNo) {
		return sqlSession.update("boardMapper.deleteAttaAll", boardNo);
	}
	
	public int updateAttachmentList(SqlSessionTemplate sqlSession, Attachment at) {
		return sqlSession.update("boardMapper.updateAttachmentList", at);
	}
	
	public ArrayList<BoardReply> addReply(SqlSessionTemplate sqlSession, int bNo) {
		return (ArrayList)sqlSession.selectList("boardMapper.addReply", bNo);
	}

	public int writeReply(SqlSessionTemplate sqlSession, String replyDesc, int userNo, int bNo) {
		
		Map<String, Object> parameter = new HashMap<>();
		parameter.put("replyDesc", replyDesc);
		parameter.put("userNo", userNo);
		parameter.put("bNo", bNo);
		
		return sqlSession.insert("boardMapper.writeReply", parameter);
	}
	
	public Board dogInfo(SqlSessionTemplate sqlSession, int bNo) {
		return sqlSession.selectOne("boardMapper.dogInfo", bNo);
	}

	public int replyDelete(SqlSessionTemplate sqlSession, int repNo) {
		return sqlSession.update("boardMapper.replyDelete", repNo);
	}
	
	public ArrayList<Attachment> selectAttachment(SqlSessionTemplate sqlSession, int bno) {
		return (ArrayList)sqlSession.selectList("boardMapper.selectAttachment", bno);
	}
	
	public int deleteBoard(SqlSessionTemplate sqlSession, int bNo) {
        return sqlSession.update("boardMapper.deleteBoard", bNo);
    }
	
	
//	public int updateBoardAndAtt(SqlSessionTemplate sqlSession, Board b) {
//		int result1 = 0;
//		int result2 = 0;
//		
//		result1 = sqlSession.update("boardMapper.deleteBoardByboard", b);
//			
//	    result2 = sqlSession.update("boardMapper.deleteAttabyAll", b);
//	    return result1 * result2;
//	}
	
//	public int updateAttachment(SqlSessionTemplate sqlSession, Attachment at) {
//		return sqlSession.update("boardMapper.updateAttachment", at);
//	}
	
}
