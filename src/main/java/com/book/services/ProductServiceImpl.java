package com.book.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.book.dao.ProductDAO;
import com.book.dao.ProductDAOImpl;
import com.book.model.Product;
import com.book.dao.ProductDAO;
import com.book.services.ProductService;

//it will make a class as service
@Service
// it is to transacts the data from java class to dao
@Transactional
public class ProductServiceImpl implements ProductService {
	@Autowired(required = true)
	ProductDAO productDao;

	public void add(Product product) {
		productDao.add(product);

	}

	public void edit(Product product) {
		productDao.edit(product);
	}

	public void delete(int productId) {
		productDao.delete(productId);
	}

	public Product getProduct(int productId) {
		return productDao.getProduct(productId);
	}

	public List getAllProduct() {
		return productDao.getAllProduct();
	}

	// it is to list the comics data
	public List getAllCOMICS() {

		return productDao.getAllCOMICS();
	}

	// it is to list the art data
	public List getAllART() {

		return productDao.getAllART();
	}

	// it is to list the engineering data
	public List getAllENGINEERING() {

		return productDao.getAllENGINEERING();
	}

	// it is to list the cooking data
	public List getAllCOOKING() {

		return productDao.getAllCOOKING();
	}

	// it is to list the historical data
	public List getAllHISTORICAL() {

		return productDao.getAllHISTORICAL();
	}

	public List getAllBIOGRAPHY() {
		// TODO Auto-generated method stub
		return productDao.getAllBIOGRAPHY();
	}

	public Product getproduct(int Id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void find(int id) {
		// TODO Auto-generated method stub
		productDao.find(id);
	}

}
