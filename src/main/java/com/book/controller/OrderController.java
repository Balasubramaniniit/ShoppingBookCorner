package com.book.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.book.services.CartService;
import com.book.model.Cart;
import com.book.model.CartItems;
import com.book.Handler.PayHandler;
import com.book.model.EmailAPI;
import com.book.model.Order;
import com.book.model.Product;
import com.book.services.ProductService;

@Controller
public class OrderController {

	@Autowired
	CartService cs;
	
	@Autowired
	ProductService ps;

	@Autowired
	CartController cc;
	
	@Autowired
	EmailAPI mailtouser;

	String username;

	

	@RequestMapping(value = "/save/order")
	public String saveorder(Map<String, Object> map) {
		
		Cart updatedshipping= PayHandler.getUc();
		Order order = new Order();
		DateFormat df = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");
		// Get the date today using Calendar object.
		// Calendar cal= Calendar.getInstance();
		Date today = Calendar.getInstance().getTime();
		// Using DateFormat format method we can create a string
		// representation of a date with the defined format.
		String reportDate = df.format(today);
		order.setOrderdate(reportDate);
		order.setStatus("Shipping");
		System.out.println(updatedshipping.getShippingdetails().getShipid());
		int sid = updatedshipping.getShippingdetails().getShipid();
		order.setCartdetails(updatedshipping);
		System.out.println(sid);
		username = cc.good();
		order.setUsername(username);
		System.out.println("ordercontroller" + username);
		// Print what date is today!
		System.out.println("Report Date: " + reportDate);
		List<CartItems> cu = cs.getAllProduct();
		for (int ci = 0; ci < cu.size(); ci++) 
		{
			int prodquan=cu.get(ci).getQuantity();
			order.setQuantity(prodquan);
			double totprice=cu.get(ci).getTotalPrice(); 
			order.setTotalprice(totprice);
			int cartitemid = cu.get(ci).getProduct().getProductid();
			Product cut = (Product) ps.getProduct(cartitemid);
			order.setProductdetails(cut);
			cs.addord(order);
		}
		
		//or.send1(updatedshipping, order);
		String toAddr = updatedshipping.getShippingdetails().getEmail();
		System.out.println("SENDMAIL"+toAddr);
		String fromAddr = "mybalasubramani@gmail.com";

		// email subject
		String subject = "Order Conformation";

		// email body
		String body = "Hai" + " " + username + "." + System.getProperty("line.separator") + "your OrderID="
				+ order.getOrderId() + System.getProperty("line.separator") + "Ordered Date=" + order.getOrderdate()
				+ System.getProperty("line.separator") + "Shippment Details" + System.getProperty("line.separator")
				+ updatedshipping.getShippingdetails().getName() + System.getProperty("line.separator") + updatedshipping.getShippingdetails().getAddress() + ","
				+ updatedshipping.getShippingdetails().getAddress() + System.getProperty("line.separator") + updatedshipping.getShippingdetails().getAddress()
				+ updatedshipping.getShippingdetails().getCity() + "-" + updatedshipping.getShippingdetails().getPincode() + System.getProperty("line.separator")
				+ System.getProperty("line.separator") + "Grand Total:" + updatedshipping.getGrandtotal()
				+ System.getProperty("line.separator") + "It wil arrive as soon as posile"
				+ System.getProperty("line.separator") + "Thanks to begin with us."
				+ System.getProperty("line.separator") + System.getProperty("line.separator")
				+ System.getProperty("line.separator") + System.getProperty("line.separator") + "------------"
				+ System.getProperty("line.separator") + "-Mobiaces";
		mailtouser.mailmethod(toAddr, fromAddr, subject, body);
		
		
		cs.deleteallcartitem(username);
		map.put("Orders",order);
		return "success";
	}
	
}
