/*
  package com.book.controller;
  
  import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired; import
  org.springframework.stereotype.Controller; import
  org.springframework.validation.BindingResult; import
  org.springframework.web.bind.annotation.ModelAttribute; import
  org.springframework.web.bind.annotation.RequestMapping; import
  org.springframework.web.bind.annotation.RequestMethod; import
  org.springframework.web.servlet.ModelAndView;
  
  import com.book.model.BornUser;
import com.book.model.UserDetails;
import com.book.services.RegisterService;
  //it is used to make the java as controller

  @Controller public class RegisterController {
	  //it is used to create a object as like new()
  
  @Autowired(required = true) RegisterService rs;
  
  // it is to make combined model variable into single atributes
  
  @ModelAttribute("regform")
  public BornUser getfh() {
	  return new BornUser(); 
	  }
  

  
  //it is to make mapped b/w jsp and java
  
  @RequestMapping(value = "/register", method = RequestMethod.GET)
	public String viewLogin(Map<String, Object> model)
  {
		BornUser user = new BornUser();
		model.put("userForm", user);
		return "register";
	
  }
  //it is to make mapped b/w jsp and java
  
  @RequestMapping(value = "/register", method = RequestMethod.POST) 
  public String BornUser( @Valid @ModelAttribute("regform") BornUser ob, BindingResult result, Map<String, Object> model)
  {
	  //rs.save(ob);
	  if (result.hasErrors()) {
			return "register";
		}

		return "login";
  }
  
  }*/
 
