package com.book.dao;

import com.book.model.ShipAddress;

public interface ShippingDAO {
	
	public void saveorupdate(ShipAddress shipment);
	public ShipAddress getbyid(int id);
 
}
