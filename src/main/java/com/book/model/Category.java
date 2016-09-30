package com.book.model;

import javax.annotation.Generated;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.springframework.stereotype.Component;

@Entity
@Component
public class Category {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Size(min = 3, message="Category ID must be atleast 3 characters !")
	@Column(name = "ID")
	private String Id;

	@Size(min = 3, message="Category Name must be atleast 3 characters !")
	@Column(name = "NAME")
	private String Name;

	@Size(min = 3, message="Category description must be atleast 3 characters !")
	@Column(name = "DESCRIPTION")
	private String Description;

	public String getId() {
		return Id;
	}

	public void setId(String id) {
		Id = id;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getDescription() {
		return Description;
	}

	public void setDescription(String description) {
		Description = description;
	}

 	
	
}
