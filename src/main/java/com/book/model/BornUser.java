/*
package com.book.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.stereotype.Component;
// entity is to create table in database

@Entity

@Table(name = "Register")

@Component
public class BornUser implements Serializable {

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((confirm_password == null) ? 0 : confirm_password.hashCode());
		result = prime * result + ((mail_id == null) ? 0 : mail_id.hashCode());
		result = prime * result + ((mobile_number == null) ? 0 : mobile_number.hashCode());
		result = prime * result + ((password == null) ? 0 : password.hashCode());
		result = prime * result + (int) (serialVersionUID ^ (serialVersionUID >>> 32));
		result = prime * result + ((user_firstname == null) ? 0 : user_firstname.hashCode());
		result = prime * result + ((user_lastname == null) ? 0 : user_lastname.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		BornUser other = (BornUser) obj;
		if (confirm_password == null) {
			if (other.confirm_password != null)
				return false;
		} else if (!confirm_password.equals(other.confirm_password))
			return false;
		if (mail_id == null) {
			if (other.mail_id != null)
				return false;
		} else if (!mail_id.equals(other.mail_id))
			return false;
		if (mobile_number == null) {
			if (other.mobile_number != null)
				return false;
		} else if (!mobile_number.equals(other.mobile_number))
			return false;
		if (password == null) {
			if (other.password != null)
				return false;
		} else if (!password.equals(other.password))
			return false;
		if (serialVersionUID != other.serialVersionUID)
			return false;
		if (user_firstname == null) {
			if (other.user_firstname != null)
				return false;
		} else if (!user_firstname.equals(other.user_firstname))
			return false;
		if (user_lastname == null) {
			if (other.user_lastname != null)
				return false;
		} else if (!user_lastname.equals(other.user_lastname))
			return false;
		return true;
	}

	// It is to store and non erase variable in the space private static final
	long serialVersionUID = 4657462015039726030L;
	// @Id is to make primary key

	@Id
	@NotEmpty
	@Size(min = 2, max = 30)
	private String user_firstname;
	@NotEmpty
	@Size(min = 2, max = 30)
	private String user_lastname;
	@NotEmpty(message = "Please enter your password.")
	@Size(min = 6, max = 15, message = "Your password must between 6 and 15 characters")
	private String password;
	@NotEmpty(message = "Please re-enter your  password.")
	@Size(min = 6, max = 15, message = "Your password must between 6 and 15 characters")
	private String confirm_password;
	@NotEmpty
	@Email
	private String mail_id;
	@NotEmpty
	@Size(min = 1, max = 10)
	private String mobile_number;

	public String getUser_firstname() {
		return user_firstname;
	}

	public void setUser_firstname(String user_firstname) {
		this.user_firstname = user_firstname;
	}

	public String getUser_lastname() {
		return user_lastname;
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
*/