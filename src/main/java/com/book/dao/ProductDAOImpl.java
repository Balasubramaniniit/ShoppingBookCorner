package com.book.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.book.model.Product;

@Repository
@Transactional
public class ProductDAOImpl implements ProductDAO {
	

	@Autowired(required = true)
	SessionFactory session;
	@Override
	public void add(Product product) {
		session.getCurrentSession().saveOrUpdate(product);
	}
	@Override
	public void edit(Product product) {
		session.getCurrentSession().update(product);
	}
	public void delete(int productId) {
		session.getCurrentSession().delete(getProduct(productId));

	}
	@Override
	public Product getProduct(int productId) {
		return (Product) session.getCurrentSession().get(Product.class, productId);

	}
	@Override
	public List getAllProduct() {
		return session.getCurrentSession().createQuery("from ProDetails").list();
	}

	@Override
	public List getAllCOMICS() {

		return session.getCurrentSession().createQuery("from ProDetails where category='comics'").list();
	}

	@Override
	public List getAllART() {

		return session.getCurrentSession().createQuery("from ProDetails where category='art'").list();
	}
	@Override
	public List getAllENGINEERING() {

		return session.getCurrentSession().createQuery("from ProDetails where category='engineering'").list();
	}
	@Override
	public List getAllCOOKING() {

		return session.getCurrentSession().createQuery("from ProDetails where category='cooking'").list();
	}
	@Override
	public List getAllHISTORICAL() {

		return session.getCurrentSession().createQuery("from ProDetails where category='historical'").list();
	}
	@Override
	public List getAllBIOGRAPHY() {
	
		return session.getCurrentSession().createQuery("from ProDetails where category='biography'").list();
	}
	@Override
	public void find(int id) {
		// TODO Auto-generated method stub
		((ProductDAOImpl) session.getCurrentSession()).find(id);
	}
	
	
	
}
