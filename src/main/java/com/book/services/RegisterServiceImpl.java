package com.book.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.book.dao.RegisterDAO;
import com.book.dao.RegisterDAOImpl;

import com.book.model.UserDetails;
//it will make a class as service

@Service
// it is to transacts the data from java class to database

@Transactional
public class RegisterServiceImpl implements RegisterService {
	// it is to create a object as like new()

	@Autowired(required = true)
		RegisterDAO dao;

	// it is to save and update the data

	public void saveOrUpdate(UserDetails userDetails) {
		// TODO Auto-generated method stub
		dao.saveorUpdate(userDetails);
	}

}
