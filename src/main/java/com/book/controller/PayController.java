package com.book.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;


import com.book.services.PayService;

@Controller
public class PayController {
	@Autowired
	private  PayService payService;
	
	private String uname;
	 @ModelAttribute
	 @RequestMapping("/sucess")
	public String getuserdata(HttpServletRequest req)
	{
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	      String name = auth.getName(); 
	      HttpSession ses=req.getSession();
	      ses.setAttribute("u", name);
	      uname=(String)ses.getAttribute("u");
	      System.out.println((String)ses.getAttribute("u"));
	      payService.add(uname);
	      payService.order(uname);
	      return"thankyou";
	      
	}

}
