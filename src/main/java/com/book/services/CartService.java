package com.book.services;

import java.util.HashMap;
import java.util.List;

import com.book.model.Cart;
import com.book.model.CartItems;
import com.book.model.Order;

public interface CartService {
	public void add(CartItems cart);
	public List getAllProduct();
	public CartItems getProductId(int id);

	public void update(CartItems cart);
	void addord(Order order);

	public void delete(int id);
	public void save(Cart cart);
	public void deleteallcartitem(String username);
	public Cart getdetails(int sid);
	public int getQuantity(int quan);


}
