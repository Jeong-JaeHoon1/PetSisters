package com.kh.petsisters.payment.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.petsisters.payment.model.dao.PaymentDao;
import com.kh.petsisters.payment.model.vo.Payment;

@Service
public class PaymentServiceImpl implements PaymentService {

	@Autowired
	private PaymentDao paymentDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int processPayment(Payment p) {
		p.setStatus("결제 완료"); // 결제 상태를 설정
		return paymentDao.processPayment(sqlSession, p);
    }

	@Override
	public int insertPay(String payDesc, int payPrice, int resNo) {
		return paymentDao.insertPay(sqlSession, payDesc, payPrice, resNo);
	}

	@Override
	public int insertRevInfo(String startRevDate, String endRevDate, String reqMsg, int totalPays, int userNo,
			int petsitterNo) {
		return paymentDao.insertRevInfo(sqlSession, startRevDate, 
				endRevDate, reqMsg, totalPays, userNo, petsitterNo);
	}

	@Override
	public int selectCurrval(int userNo, int petsitterNo) {
		return paymentDao.selectCurrval(sqlSession, userNo, petsitterNo);
	}
	
}
