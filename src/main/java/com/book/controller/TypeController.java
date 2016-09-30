package com.book.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.book.model.Product;

import com.book.services.ProductService;
//it is used to make the java as controller
@Controller
public class TypeController {
	//it is used to create a object as like new()
	@Autowired(required=true)
	private ProductService productservice;
	//it is to make mapped b/w jsp and java
	@RequestMapping(value="/comics")
	public String cat1(Map<String, Object> map)
	{
		Product productmodelResult=new Product();
		map.put("product",productmodelResult);
	    map.put("productList", productservice.getAllCOMICS());
	  System.out.println(productmodelResult);
		return "viewall";
	}

	//it is to make mapped b/w jsp and java
	@RequestMapping(value="/art")
	public String cat2(Map<String, Object> map)
	{
		Product productmodelResult=new Product();
		map.put("product",productmodelResult);
	    map.put("productList", productservice.getAllART());
	  System.out.println(productmodelResult);
		return "viewall";
	}

	//it is to make mapped b/w jsp and java
	@RequestMapping(value="/engineering")
	public String cat3(Map<String, Object> map)
	{
		Product productmodelResult=new Product();
		map.put("product",productmodelResult);
	    map.put("productList", productservice.getAllENGINEERING());
	  System.out.println(productmodelResult);
		return "viewall";
	}

	//it is to make mapped b/w jsp and java
	@RequestMapping(value="/historical")
	public String cat4(Map<String, Object> map)
	{
		Product productmodelResult=new Product();
		map.put("product",productmodelResult);
	    map.put("productList", productservice.getAllHISTORICAL());
	  System.out.println(productmodelResult);
		return "viewall";
	}

	//it is to make mapped b/w jsp and java
	@RequestMapping(value="/cooking")
	public String cat5(Map<String, Object> map)
	{
		Product productmodelResult=new Product();
		map.put("product",productmodelResult);
	    map.put("productList", productservice.getAllCOOKING());
	  System.out.println(productmodelResult);
		return "viewall";
	}
/*	@RequestMapping(value="/economics")
	public String cat6(Map<String, Object> map)
	{
		Product productmodelResult=new Product();
		map.put("product",productmodelResult);
	    map.put("productList", productservice.getAll());
	  System.out.println(productmodelResult);
		return "viewall";
	}
	*/
}
