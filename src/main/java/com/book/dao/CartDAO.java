package com.book.dao;

import java.util.List;

import com.book.model.Cart;
import com.book.model.CartItems;
import com.book.model.Order;

public interface CartDAO {

	public void add(CartItems CartItems);

	public List getAllProduct();

	public void update(CartItems CartItems);

	public CartItems getProductId(int id);

	public void delete(int id);

	public void save(Cart cart);

	public void saveorder(Order order);

	void deleteallcartitem(String username);

	public Cart getdetails(int sid);

	public int getQuantity(int quan);

}
