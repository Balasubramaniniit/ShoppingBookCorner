package com.book.Handler;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.type.TrueFalseType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.book.model.Cart;
import com.book.model.CartItems;
import com.book.model.EmailAPI;
import com.book.model.Order;
import com.book.model.Product;
import com.book.model.ShipAddress;
import com.book.model.ShipEmailAPI;
import com.book.model.UserDetails;
import com.book.services.CartService;
import com.book.services.ShippingService;

@Component
public class PayHandler {
	@Autowired
	HttpServletRequest re;
	public ShipAddress beginFlow(){
		System.out.println("bala4");
		return new ShipAddress();
		
	}
	
	@Autowired(required=true)
	ShipEmailAPI mailtouser2;
	
	@Autowired
	static Cart uc;
	
	@Autowired
	CartService cs;
	
	@Autowired
	ShippingService shipservice;
	
	/*String username;*/
	
	public void saveaddress(ShipAddress shipment)
	{	  String uname;
		  Authentication auth1 = SecurityContextHolder.getContext().getAuthentication();
	      String name = auth1.getName(); 
	      HttpSession ses=re.getSession();
	      ses.setAttribute("u", name);
	      uname=(String)ses.getAttribute("u");
	      UserDetails userDetails=new UserDetails();
	      userDetails.setUser_firstname(uname);
		shipment.setUserDetails(userDetails);
		int id=shipment.getShipid();
		shipservice.saveorupdate(shipment);
	}
	
	public void savecart(ShipAddress shipment)
	{
	Cart cart=new Cart();
	List<CartItems> cartitems=cs.getAllProduct();
	double tot=0;
	for(int i=0;i<cartitems.size();i++){
		tot+=cartitems.get(i).getTotalPrice();
		}
	cart.setGrandtotal(tot);
	int sid=shipment.getShipid();
	
	cart.setUserDetails((shipment.getUserDetails()));
	cart.setShippingdetails( shipservice.getbyid(sid));
	for(int j=0;j<cartitems.size();j++){
		int id=cartitems.get(j).getCartItemId();
		CartItems cartyu=cs.getProductId(id);
		cart.setCartitems(cartyu);
		cs.save(cart);
	}
	
	
	}
	public void saveorder(ShipAddress shipment)
	{
		Order order=new Order();
		DateFormat df = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");
		// Get the date today using Calendar object.
		//Calendar cal= Calendar.getInstance();
		Date today = Calendar.getInstance().getTime();        
		// Using DateFormat format method we can create a string 
		// representation of a date with the defined format.
		String reportDate = df.format(today);
		order.setOrderdate(reportDate);
		order.setStatus("Shipping");
		int sid=shipment.getShipid();
		System.out.println(sid);
		order.setUsername("BALA");
	/*	System.out.println("ordercontroller"+username);*/
		Cart cartdetails=cs.getdetails(sid);
		order.setCartdetails(cartdetails);
		int quan=shipment.getShipid();
		int quantity=cs.getQuantity(quan);
		order.setQuantity(quantity);
		// Print what date is today!
		System.out.println("Report Date: " + reportDate);
		cs.addord(order);
	/*	List<CartItems> cartitem2=cs.getAllProduct();
		order.setProductdetails((Product) cartitem2);*/
	}

	public void send1(ShipAddress shipment)

	{
		try {
			String toAddr = shipment.getEmail();
			System.out.println("PayHANDLER"+toAddr);
			String fromAddr = "mybalasubramani@gmail.com";

			// email subject
			String subject = "Order Successfully Placed";

			// email body
			String body = "Thank You " + shipment.getName() + "."
					+ System.getProperty("line.separator") + "Be With Us.And Your Order will be in your hand within 5 Days"
					+ System.getProperty("line.separator") + System.getProperty("line.separator")
					+ System.getProperty("line.separator") + System.getProperty("line.separator") + "------------"
					+ System.getProperty("line.separator") + "-By BooKCorneR";
			mailtouser2.mailmethod(toAddr, fromAddr, subject, body);

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

	public static Cart getUc() {

		return uc;
	}

}
