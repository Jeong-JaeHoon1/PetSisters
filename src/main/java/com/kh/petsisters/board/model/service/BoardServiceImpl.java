package com.kh.petsisters.board.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.petsisters.board.model.dao.BoardDao;
import com.kh.petsisters.board.model.vo.Attachment;
import com.kh.petsisters.board.model.vo.Board;
import com.kh.petsisters.common.model.vo.PageInfo;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardDao boardDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	@Override
	public int selectListCount() {
		return boardDao.selectListCount(sqlSession);
	}
	
	@Override
	public int selectFreeListCount() {
		return boardDao.selectListCount(sqlSession);
	}
	

	@Override
	public ArrayList<Board> selectList(PageInfo pi) {
		return boardDao.selectList(sqlSession, pi);
	}
	
	
	@Override
	public ArrayList<Board> selectFreeList(PageInfo pi) {
		return boardDao.selectFreeList(sqlSession, pi);
	}
	
	@Override
	public int increaseCount(int boardNo) {
		return boardDao.increaseCount(sqlSession, boardNo);
	}
	
	@Override
	public Board selectBoard(int boardNo) {
		return boardDao.selectBoard(sqlSession, boardNo);
	}
	
	
	@Override
	public int insertFreeBoard(Board b) {
		return boardDao.insertFreeBoard(sqlSession, b);
	}


	@Override
	public int insertAttachmentList(ArrayList<Attachment> list) {
		return boardDao.insertAttachmentList(sqlSession, list);
	}

	




}





















