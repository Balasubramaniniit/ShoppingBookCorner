package com.book.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.book.dao.PayDAO;

@Service
public class PayServiceImpl implements PayService {
	@Autowired
	private PayDAO PaymentDao;
	@Transactional
	public void add(String uname) {
		PaymentDao.addcart(uname);
	
		
	}
	@Transactional
	public void order(String uname) {
		PaymentDao.order(uname);
		
	}
	

}
