package com.book.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.stereotype.Component;
//entity is to create table in database
@Entity(name="User")
@Component
public class User {
	//@Id is to make primary key to firstname
	@Id
	//it will generated value automated to @ID
    @GeneratedValue(strategy=GenerationType.AUTO)
	private String name;
	private String password;
	//down it is getter and setter to above variable
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
