package com.book.controller;

import java.io.File;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.book.model.Product;
import com.book.services.ProductService;
@Controller
public class ProductController {
	
	@Autowired(required=true)
	private ServletContext servletContext;

	@Autowired(required=true)
	private ProductService productService;
	
	@RequestMapping("/products")
	public String setupForm(Map<String, Object> map) {
		Product product = new Product();
		map.put("product", product);
		map.put("productList", productService.getAllProduct());
		return "products";
	}

	@RequestMapping("/Angularview")
	public String getAng()
	{
		return "ajviewall";
	}

	@RequestMapping("/ang")
	 public @ResponseBody List<Product> getAllProds() {
	  List<Product> l =null;
	  System.out.println("inside angular view controller");
	  try{
	  l= productService.getAllProduct();
	   }
	  catch(Exception es)
	  {
	   l=null;
	  }
	  return l;
	 }

	@RequestMapping("delete/{productid}")
	public String del(@PathVariable("productid") int id, ModelMap model) {
		productService.delete(id);
		return "redirect:/viewall";
	}

	@RequestMapping("edit/{productid}")
	public String edititem(@PathVariable("productid") int id, @ModelAttribute Product product, BindingResult result,
			Map<String, Object> map) {
		product = productService.getProduct(id);
		map.put("product", product);
		map.put("productList", productService.getAllProduct());
		return "products";

	}

	@RequestMapping("desc/${productid}")
	public String desitem(@PathVariable("productid") int id, @ModelAttribute Product product, BindingResult result,
			Map<String, Object> map) {
		System.out.println("bala400");
		product = productService.getProduct(id);
		map.put("product", product);
		map.put("productList", productService.getAllProduct());
		return "productview";

	}

	@RequestMapping({"/viewall","edit/viewall"})
	//@RequestMapping({"/Angularview","edit/Angularview"})
	public String getvieform(Map<String, Object> map) {
		Product product = new Product();
		map.put("product", product);
		map.put("productList", productService.getAllProduct());
		return "viewall";
	//	return "Angularview";
	}

	@RequestMapping(value = { "/products", "edit/products" }, method = RequestMethod.POST)
	public String doActions( @ModelAttribute Product product, BindingResult result, @RequestParam String action, Map<String, Object>map){
		System.out.println("bala1");
		
		Product productmodelResult = new Product();
	    switch(action.toLowerCase()){
	    case "add":
	    	System.out.println("bala3");
	    	MultipartFile file= product.getImage();
	    	
	    	if (!file.isEmpty()) {
				try {
					
					// Creating the directory to store file
					File files = new File(servletContext.getRealPath("/") );
					File dir = new File(files + File.separator + "resources/upload");
					if (!dir.exists())
						dir.mkdirs();

					// Create the file on server
					File serverFile = new File(dir
							+ File.separator + product.getImagename()+".jpg");
					System.out.println(serverFile);
					file.transferTo(serverFile);
					System.out.println(file);
				}catch(Exception e)
				{
					System.out.println(e.getMessage());
				}
				
			
	    	}
	    	productService.add(product);
	    	productmodelResult = product;
	    	break;
	    	
	    case "edit":
	    	System.out.println("bala4");
	    	MultipartFile file1= product.getImage();
	    	
	    	if (!file1.isEmpty()) {
				try {
					
					// Creating the directory to store file
					File files = new File(servletContext.getRealPath("/") );
					File dir = new File(files + File.separator + "resources/upload");
					if (!dir.exists())
						dir.mkdirs();

					// Create the file on server
					File serverFile = new File(dir
							+ File.separator + product.getImagename()+".jpg");
					System.out.println(serverFile);
					file1.transferTo(serverFile);
					System.out.println(file1);
				}catch(Exception e)
				{
					System.out.println(e.getMessage());
				}
				
			
	    	}
	    	productService.edit(product);
	    	productmodelResult = product;
	    	break;
	    	
	    case "delete":
	    	productService.delete(product.getProductid());
	    	productmodelResult = new Product();
	    	break;
	    	
	    case "search":
	    	Product searchedProductModel = productService.getProduct(product.getProductid());
	    	productmodelResult = searchedProductModel!=null ? searchedProductModel : new Product();
	    	break;
	    }
    map.put("productModel",productmodelResult);
	    map.put("productmodelList", productService.getAllProduct());
	    
		
	
		return "products";
	}

	public void deleteproductquantity(int id) {
		Product pm = productService.getProduct(id);
		int quantity = pm.getProductquantity();
		if (quantity == 1) {
			pm.setProductquantity(0);
			productService.edit(pm);
		} else {
			pm.setProductquantity(quantity - 1);
			productService.edit(pm);
		}
	}
	public void addproctquantity(int productid,int cartquantity)
	{
		Product pm = productService.getProduct(productid);
		pm.setProductquantity(pm.getProductquantity()+cartquantity);
		productService.edit(pm);
	}

}

