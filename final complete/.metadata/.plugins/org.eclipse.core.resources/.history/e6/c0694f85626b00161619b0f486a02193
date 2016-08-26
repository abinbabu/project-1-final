package com.niit.shoppingcart.handler;

import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;

import com.niit.shoppingcart.model.User;

@Component
public class RegistrationHandler {

	public User getInstance(){
		return new User();
	}
	
	public String validateDetails(User user,MessageContext messageContext) {
		String status="success";
		System.out.println("fdsgsdhfshfshgfhgf----------------****");
		
		if(user.getId().isEmpty()) {
			
			
			 messageContext.addMessage(new MessageBuilder().error().source("id").defaultText("UserId cannot be empty").build());
			 status="failure";
		}
		if(user.getName().isEmpty()) {
			messageContext.addMessage(new MessageBuilder().error().source("name").defaultText("Name cannot be empty").build());
			status="failure";
		}
		if(user.getPassword().isEmpty()) {
			messageContext.addMessage(new MessageBuilder().error().source("password").defaultText("Password cannot be empty").build());
			status="failure";
		}
		if(user.getContactnumber().isEmpty()) {
			messageContext.addMessage(new MessageBuilder().error().source("contactnumber").defaultText("Mobile Number cannot be empty").build());
			status="failure";
		}
	
		if(user.getMailid().isEmpty()) {
			messageContext.addMessage(new MessageBuilder().error().source("mailid").defaultText("MailId cannot be empty").build());
			status="failure";
		}
		if(user.getAddress().isEmpty()) {
			messageContext.addMessage(new MessageBuilder().error().source("address").defaultText("Address cannot be empty").build());
			status="failure";
		}
		
		return status;
	}
}
