package com.book.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.book.dao.ShippingDAO;
import com.book.model.ShipAddress;


@Service
@Transactional
public class ShippingServiceImpl implements ShippingService {
	@Autowired
	ShippingDAO shippingdao;
	
	public void saveorupdate(ShipAddress shipment) {
		shippingdao.saveorupdate(shipment);
	}

	
	public ShipAddress getbyid(int id) {
		return shippingdao.getbyid(id);
		
	}
	

}
