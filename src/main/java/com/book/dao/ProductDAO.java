package com.book.dao;

import java.util.List;

import com.book.model.Product;



public interface ProductDAO {
	public void add(Product product);
	public void edit(Product product);
	public void delete(int productId);
	public Product getProduct(int productId);
	public List getAllProduct();
	public List getAllCOMICS();
	public List getAllART();
	public List getAllENGINEERING();
	public List getAllCOOKING();
	public List getAllHISTORICAL();
	public List getAllBIOGRAPHY();
	public void find(int id);

}
