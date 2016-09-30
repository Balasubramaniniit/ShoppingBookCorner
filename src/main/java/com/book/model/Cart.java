package com.book.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.book.model.ShipAddress;


@Entity
public class Cart {
	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int cartId;

    @ManyToOne
    @JoinColumn(name ="cartItemId")
	private CartItems cartitems;

    @OneToOne
    @JoinColumn(name = "user_firstname")
    private UserDetails userDetails;
    
    private double grandtotal;

    @ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL, targetEntity = ShipAddress.class)
	private ShipAddress shippingdetails;
	public int getCartId() {
		return cartId;
	}

	public void setCartId(int cartId) {
		this.cartId = cartId;
	}

	public CartItems getCartitems() {
		return cartitems;
	}

	public void setCartitems(CartItems cartitems) {
		this.cartitems = cartitems;
	}

	public ShipAddress getShippingdetails() {
		return shippingdetails;
	}

	public void setShippingdetails(ShipAddress shippingdetails) {
		this.shippingdetails = shippingdetails;
	}

	public UserDetails getUserDetails() {
		return userDetails;
	}

	public void setUserDetails(UserDetails userDetails) {
		this.userDetails = userDetails;
	}

	public double getGrandtotal() {
		return grandtotal;
	}

	public void setGrandtotal(double grandtotal) {
		this.grandtotal = grandtotal;
	}

	
	
	
	
}
