package com.book.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.book.dao.CartDAO;
import com.book.model.Cart;
import com.book.model.CartItems;
import com.book.model.Order;

@Service
@Transactional
public class CartServiceImpl implements CartService {

	@Autowired
	private CartDAO cartDAO;

	// this method is to save the cartitem in the dao class
	public void add(CartItems cart) {
		System.out.println("bala10");
		cartDAO.add(cart);

	}

	public List getAllProduct() {
		return cartDAO.getAllProduct();
	}

	// this method is to update the cartitem in the dao class
	public void update(CartItems cart) {
		cartDAO.update(cart);
	}

	public CartItems getProductId(int id) {

		return cartDAO.getProductId(id);
	}

	// this method is to delete the cartitem in the dao class by product id
	public void delete(int id) {
		cartDAO.delete(id);
	}

	@Override
	public void save(Cart cart) {
		// TODO Auto-generated method stub
		cartDAO.save(cart);
	}

	@Override
	public void deleteallcartitem(String username) {
		// TODO Auto-generated method stub
		cartDAO.deleteallcartitem(username);
	}


	@Override
	public void addord(Order order) {

		cartDAO.saveorder(order);
	}

	@Override
	public Cart getdetails(int sid) {
		// 
		return cartDAO.getdetails(sid);
	}

	@Override
	public int getQuantity(int quan) {
		// TODO Auto-generated method stub
		return cartDAO.getQuantity(quan);
	}
}
