package com.book.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.springframework.stereotype.Component;

@Entity(name = "ORDERALL")
@Component
public class Order {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int orderId;

	@ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL, targetEntity = Cart.class)
	private Cart cartdetails;

	private String orderdate;

	private String status;

	private String username;

	public int getOrderId() {
		return orderId;
	}

	@ManyToOne
	@JoinColumn(name = "PRODUCTID")
	private Product productdetails;

	private int quantity;

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getTotalprice() {
		return totalprice;
	}

	public void setTotalprice(double totalprice) {
		this.totalprice = totalprice;
	}

	private double totalprice;

	public Product getProductdetails() {
		return productdetails;
	}

	public void setProductdetails(Product productdetails) {
		this.productdetails = productdetails;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public Cart getCartdetails() {
		return cartdetails;
	}

	public void setCartdetails(Cart cartdetails) {
		this.cartdetails = cartdetails;
	}

	public String getOrderdate() {
		return orderdate;
	}

	public void setOrderdate(String orderdate) {
		this.orderdate = orderdate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

}
