package com.book.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.book.model.Cart;
import com.book.model.CartItems;
import com.book.model.Order;
import com.book.model.ShipAddress;
import com.book.model.UserDetails;
import com.book.services.ShippingService;

@Repository
public class PayDAOImpl implements PayDAO {
	@Autowired
	SessionFactory sessionFactory;
	@Autowired
	CartDAO cartDAO;
	@Autowired
	ShippingService shipser;
	
	public void addcart(String uname)
	{
		Cart cart=new Cart();
		UserDetails userDetails=new UserDetails();
		userDetails.setMail_id(uname);
		cart.setUserDetails(userDetails);
		List<CartItems> li=cartDAO.getAllProduct();
		int tot=0;
		for(int i=0;i<li.size();i++)
		{
			tot=(int) (tot+(li.get(i).getTotalPrice()));
		}
		cart.setGrandtotal(tot);
		sessionFactory.getCurrentSession().save(cart);
	}
	public void order(String uname) {
		Order orders=new Order();
		Cart ct=new Cart();

		List<Cart> ca=sessionFactory.getCurrentSession().createQuery("from Cart where user_firstname='"+uname+"'").list();
		ct.setCartId(ca.get(0).getCartId());
		orders.setCartdetails(ct);
		List<ShipAddress> shr=sessionFactory.getCurrentSession().createQuery("from ShipAddress user_firstname='"+uname+"'").list();
	
		System.out.println("order goin to add");
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(orders);
	
	}

}
