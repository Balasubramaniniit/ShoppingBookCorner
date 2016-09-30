package com.book.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.book.model.AuthorisedUser;
import com.book.model.UserDetails;

@Repository
public class RegisterDAOImpl implements RegisterDAO {

	@Autowired(required = true)
	SessionFactory sf;

	@Transactional

	public void saveorUpdate(UserDetails userDetails) {

		userDetails.setEnable(true);
		AuthorisedUser u=new AuthorisedUser();
		u.setUserDetails(userDetails);
		u.setRole("ROLE_USER");
		sf.getCurrentSession().saveOrUpdate(userDetails);
		sf.getCurrentSession().saveOrUpdate(u);
	}
}