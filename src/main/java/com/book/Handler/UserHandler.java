package com.book.Handler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;

import com.book.model.EmailAPI;
import com.book.model.UserDetails;
import com.book.services.RegisterService;
//@component is to make a one component of class in below.

@Component
public class UserHandler {

	@Autowired
	EmailAPI mailtouser;
	// it is used to create a object as like new()
	@Autowired(required = true)
	RegisterService regser;

	// it is to link the model attributes b/w java and jsp
	public UserDetails startFlow() {
		return new UserDetails();
	}

	public void send(UserDetails newuser)

	{
		try {
			String toAddr = newuser.getMail_id();
			System.out.println("USERHANDLER"+toAddr);
			String fromAddr = "mybalasubramani@gmail.com";

			// email subject
			String subject = "Welcomes you";

			// email body
			String body = "Welcome to the ShoppingCart " + newuser.getUser_firstname() + "."
					+ System.getProperty("line.separator") + "Thanks to begin with us."
					+ System.getProperty("line.separator") + System.getProperty("line.separator")
					+ System.getProperty("line.separator") + System.getProperty("line.separator") + "------------"
					+ System.getProperty("line.separator") + "-Book";
			mailtouser.mailmethod(toAddr, fromAddr, subject, body);

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

	/*
	 * public void saveRegister(UserDetails userDetails) {
	 * 
	 * regser.saveOrUpdate(userDetails);
	 * 
	 * }
	 */

	public String validateDetails(UserDetails userDetails, MessageContext messageContext) {
		// it is to validate the sign up page in java class
		String status = "success";
		System.out.println("bala");
		if (userDetails.getUser_firstname().isEmpty()) {
			messageContext.addMessage(new MessageBuilder().error().source("user_firstname")
					.defaultText("Username cannot be Empty").build());
			status = "failure";
		}
		if (userDetails.getUser_lastname().isEmpty()) {
			messageContext.addMessage(new MessageBuilder().error().source("user_lastname")
					.defaultText("Username cannot be Empty").build());
			status = "failure";
		}
		if (userDetails.getMail_id().isEmpty()) {
			messageContext.addMessage(new MessageBuilder().error().source("mail_id")
					.defaultText("User's email id cannot be Empty").build());
			status = "failure";
		}
		if (userDetails.getMobile_number() == null) {
			messageContext.addMessage(new MessageBuilder().error().source("mobile_number")
					.defaultText("User's mobile number cannot be Empty").build());
			status = "failure";
		}
		if (userDetails.getPassword() == null) {
			messageContext.addMessage(
					new MessageBuilder().error().source("password").defaultText("Please enter your password").build());
			status = "failure";
		}
		if (userDetails.getConfirm_password() == null) {
			messageContext.addMessage(new MessageBuilder().error().source("confirm_password")
					.defaultText("Please enter your password").build());
			status = "failure";
		}
		// this is to save the data to the database

		if (status.equals("success")) {
			regser.saveOrUpdate(userDetails);
		}

		return status;
	}

}
