package com.kh.petsisters.petsitter.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.petsisters.common.model.vo.PageInfo;
import com.kh.petsisters.member.model.vo.Dog;
import com.kh.petsisters.petsitter.model.dao.PetSitterDao;
import com.kh.petsisters.petsitter.model.vo.PetSitter;
import com.kh.petsisters.reservation.model.vo.Review;

@Service
public class PetSitterServiceImpl implements  PetSitterService {

	@Autowired
	private PetSitterDao petSitterDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public PetSitter selectPetSitter(int pno) {
		
		return petSitterDao.selectPetSitter(sqlSession, pno);
	}

	@Override
	public int updatePetSitter(PetSitter p) {
		
		return petSitterDao.updatePetSitter(sqlSession, p);
	}
	
	@Override
	public int selectListCount() {
		
		return petSitterDao.selectListCount(sqlSession);
	}
	
	@Override
	public ArrayList<PetSitter> selectList(PageInfo pi) {
		
		return petSitterDao.selectList(sqlSession, pi);
	}

	@Override
	public ArrayList<Review> selectReviewList(int pno) {
		
		return petSitterDao.selectReviewList(sqlSession, pno);
	}

	@Override
	public ArrayList<Dog> selectDogList(int pno) {
		
		return petSitterDao.selectDogList(sqlSession, pno);
	}

	@Override
	public int updateComment(Review r) {
		
		return petSitterDao.updateComment(sqlSession, r);
	}

	

}
