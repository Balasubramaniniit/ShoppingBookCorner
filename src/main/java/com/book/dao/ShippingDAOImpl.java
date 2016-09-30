package com.book.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.book.model.Product;
import com.book.model.ShipAddress;


@Repository
@Transactional
public class ShippingDAOImpl  implements ShippingDAO{
	@Autowired(required=true)
	SessionFactory sF;

	@Override
	public void saveorupdate(ShipAddress shipment) {
		sF.getCurrentSession().saveOrUpdate(shipment);
		
	}

	@Override
	public ShipAddress getbyid(int id) {
		return (ShipAddress)sF.getCurrentSession().get(ShipAddress.class,id);
		
	}
	

}
