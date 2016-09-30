package com.book.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import javax.persistence.Transient;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

// entity is to create table in database under name ProductDetails
@Entity(name = "ProDetails")
// @component is to make a one component of class in below.
@Component

public class Product implements Serializable {

	private static final long serialVersionUID = 4657462015039726030L;

	// @Id is to make primary key to firstname

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)

	private Integer productid;
	@NotEmpty(message = "Name is required")
	private String productname;
	@NotNull(message = "Quantity is required")
	private Integer productquantity;
	@NotEmpty(message = "Description is required")
	private String productdescription;
	private String category;
	@NotNull(message = "Price is required")
	private Integer productprice;
	@NotEmpty(message = "Imagename is required")
	private String imagename;
	@Transient
	private MultipartFile image;

	public String getImagename() {
		return imagename;
	}

	public void setImagename(String imagename) {
		this.imagename = imagename;
	}

	public MultipartFile getImage() {
		return image;

	}

	public void setImage(MultipartFile image) {
		this.image = image;
	}

	public Integer getProductid() {
		return productid;
	}

	public void setProductid(Integer productid) {
		this.productid = productid;
	}

	public void setProductquantity(Integer productquantity) {
		this.productquantity = productquantity;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getProductname() {
		return productname;
	}

	public void setProductname(String productname) {
		this.productname = productname;
	}

	public String getProductdescription() {
		return productdescription;
	}

	public void setProductdescription(String productdescription) {
		this.productdescription = productdescription;
	}

	public Integer getProductprice() {
		return productprice;
	}

	public void setProductprice(Integer productprice) {
		this.productprice = productprice;
	}

	public Integer getProductquantity() {
		return productquantity;
	}

}
