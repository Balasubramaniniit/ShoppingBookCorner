package com.book.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name="AuthorisedUser")
@Component
public class AuthorisedUser {
@Id
@GeneratedValue(strategy=GenerationType.AUTO)
private String RoleId;
private String Role;
@OneToOne(cascade=CascadeType.ALL)
@JoinColumn(name="USER_FIRSTNAME")
private UserDetails userDetails;
public String getRoleId() {
	return RoleId;
}
public void setRoleId(String roleId) {
	RoleId = roleId;
}
public String getRole() {
	return Role;
}
public void setRole(String role) {
	Role = role;
}
public UserDetails getUserDetails() {
	return userDetails;
}
public void setUserDetails(UserDetails userDetails) {
	this.userDetails = userDetails;
}

}


