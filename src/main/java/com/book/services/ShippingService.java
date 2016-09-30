package com.book.services;

import com.book.model.ShipAddress;


public interface ShippingService {
	
	public void saveorupdate(ShipAddress shipment);
	public ShipAddress getbyid(int id);

}
