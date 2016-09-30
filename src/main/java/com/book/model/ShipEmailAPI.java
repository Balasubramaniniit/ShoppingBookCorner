package com.book.model;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Service;

@Service
public class ShipEmailAPI {
	
		@Autowired
		MailSender mailsender;
		public void mailmethod(String toAddress, String fromAddress, String subject, String msgBody){
			SimpleMailMessage msgdetails = new SimpleMailMessage();
			msgdetails.setFrom(fromAddress);
			msgdetails.setTo(toAddress);
			msgdetails.setSubject(subject);
			msgdetails.setText(msgBody);
			mailsender.send(msgdetails);
		}
		
		


}
