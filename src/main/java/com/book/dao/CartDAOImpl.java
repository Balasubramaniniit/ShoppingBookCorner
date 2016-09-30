package com.book.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.book.model.Cart;
import com.book.model.CartItems;
import com.book.model.Order;

@Repository
public class CartDAOImpl implements CartDAO {
	@Autowired
	private SessionFactory sF;

	// this method is to save the cartitem in the h2 database
	@Override
	public void add(CartItems cartItems) {

		sF.getCurrentSession().save(cartItems);

	}

	// this method is to fetch the cartitem from the h2 database
	@Override
	public List getAllProduct() {

		return sF.getCurrentSession().createQuery("from CartItems ").list();

	}

	// this method is to update the cartitem in the h2 database
	@Override
	public void update(CartItems cartItems) {
		sF.getCurrentSession().update(cartItems);
	}

	@Override
	public CartItems getProductId(int id) {
		System.out.println((CartItems) sF.getCurrentSession().get(CartItems.class, id));
		return (CartItems) sF.getCurrentSession().get(CartItems.class, id);
	}

	// this method is to delete the cartitem by product id in the h2 database
	// and cart page.
	@Override
	public void delete(int id) {

		sF.getCurrentSession().delete(getProductId(id));

	}

	@Override
	public void deleteallcartitem(String username) {
		// Query for deleting all cart items for current user
		System.out.println("username");
		sF.getCurrentSession().createQuery("delete from CartItems where user_firstname='" + username + "'")
				.executeUpdate();
	}

	@Override
	public void saveorder(Order order) {

		sF.getCurrentSession().save(order);
	}

	@Override
	public void save(Cart cart) {
		// TODO Auto-generated method stub
		sF.getCurrentSession().save(cart);
	}

	

	@Override
	public Cart getdetails(int sid) {
		return (Cart) sF.getCurrentSession().get(Cart.class, sid);
	}

	@Override
	public int getQuantity(int quan) {
		// TODO Auto-generated method stub
		 sF.getCurrentSession().get(CartItems.class, quan);
		return quan;
	}

}
