package com.book.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.springframework.stereotype.Component;


//entity is to create table in database
@Entity
@Table(name="UserDetails")
// @component is to make a one component of class in below.
@Component
public class UserDetails implements Serializable {
	// It is to store and non erase variable in the space
	private static final long serialVersionUID = 4657462015039726030L;
	
	@Column
	public boolean enable;
	
	public boolean isEnable() {
		return enable;
	}

	public void setEnable(boolean enable) {
		this.enable = enable;
	}

	@Id
	@Size(min = 2, max = 30)
	private String user_firstname;
	// to create size and validate to the variable
	@Size(min = 2, max = 30)
	private String user_lastname;
	// to create size and validate to the variable
	@Size(min = 2, max = 10)
	private String password;
	// to create size and validate to the variable
	@Transient
	private String confirm_password;
	// to create size and validate to the variable

	private String mail_id;
	// to create size and validate to the variable
	@Size(min = 1, max = 10)
	private String mobile_number;

	// down it is getter and setter to above variable
	@OneToOne
	@JoinColumn(name="cartid")
	private Cart cart;
	
	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}

	public String getUser_lastname() {
		return user_lastname;
	}

	public String getUser_firstname() {
		return user_firstname;
	}

	public void setUser_firstname(String user_firstname) {
		this.user_firstname = user_firstname;
	}

	public void setUser_lastname(String user_lastname) {
		this.user_lastname = user_lastname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfirm_password() {
		return confirm_password;
	}

	public void setConfirm_password(String confirm_password) {
		this.confirm_password = confirm_password;
	}

	public String getMail_id() {
		return mail_id;
	}

	public void setMail_id(String mail_id) {
		this.mail_id = mail_id;
	}

	public String getMobile_number() {
		return mobile_number;
	}

	public void setMobile_number(String mobile_number) {
		this.mobile_number = mobile_number;
	}

}