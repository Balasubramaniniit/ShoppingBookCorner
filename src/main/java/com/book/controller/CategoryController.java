package com.book.controller;

import java.io.File;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.book.dao.CategoryDAO;
import com.book.model.Category;
import com.book.model.Product;

@Controller
public class CategoryController {

	@Autowired(required=true)
	private Category categoryDetails;

	@Autowired(required=true)
	private CategoryDAO categoryDAO;
	
	@RequestMapping("/categories")
	public String category(Map<String, Object> map) {
		Category category = new Category();
		map.put("categoryDetails",category);
		map.put("categoryList", categoryDAO.getALLCategory());
		return "category";
	}

	/*@RequestMapping(value = "/categories", method = RequestMethod.GET)
	public ModelAndView gomanagecategory() {
		ModelAndView modelAndView = new ModelAndView("category");
		modelAndView.addObject("categoryDetails",new Category());
		modelAndView.addObject("categoryList", this.categoryDAO.list());
		return modelAndView;
	}*/

	@RequestMapping(value = "/categories", method = RequestMethod.POST)
	public String addcategory(@ModelAttribute Category categoryDetails, BindingResult result,@RequestParam String action, Map<String, Object>map){
		{	System.out.println("bala1");
		Category productmodelResult = new Category();
	    switch(action.toLowerCase()){
	    case "add":
	
		
	   	    	categoryDAO.saveOrUpdate(categoryDetails);
		
	   	    	//map.put("caategoryList", categoryDAO.list());
			
				break;
				
	    case "edit":
	    	categoryDAO.edit(categoryDetails);
	    	productmodelResult = categoryDetails;
	    	break;  	
	    }
		return "category";
		}
	}
}

	/*@RequestMapping(value = "/addcategory", method = RequestMethod.POST)
	public ModelAndView addcategory(@ModelAttribute Category categoryDetails, BindingResult result) {
		ModelAndView modelAndView = new ModelAndView();
		if (result.hasErrors()) {
			modelAndView.addObject("categoryList", this.categoryDAO.list());
			modelAndView.setViewName("category");
		} else {
			System.out.println("bala add category");
			categoryDAO.saveOrUpdate(categoryDetails);
			
			categoryDetails= new Category();
			modelAndView.addObject(categoryDetails);
			
			modelAndView.setViewName("category");
			modelAndView.addObject("successmessage", "Category Added Successfully");
			modelAndView.addObject("categoryList", this.categoryDAO.list());
			
		
		return modelAndView;

	}
*/
/*	@RequestMapping(value = "/category/edit/{id}")
	public String editcategory(@PathVariable("id") String id, Model model) {
		categoryDetails = categoryDAO.get(id);
		model.addAttribute(categoryDetails);
		return "category";
	}
	
	@RequestMapping(value = "/category/delete/{id}")
	public String deletecategory(@PathVariable("id") String id, Model model) {
		categoryDAO.delete(id);
		categoryDetails= new Category();				
		model.addAttribute(categoryDetails);
		model.addAttribute("categoryList", this.categoryDAO.list());
		return "category";
	}

	@RequestMapping(value = "/listcategory", method = RequestMethod.GET)
	public String golistcategory(Model model) {
		model.addAttribute("categoryDetails", categoryDetails);
		model.addAttribute("categoryList", this.categoryDAO.list());
		return "viewcategory";
	}
*/
	


