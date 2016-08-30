package com.niit.shoppingcart.handler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;

import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.model.UserDetails;
//import com.niit.shoppingcart.model.User;

@Component
public class RegistrationHandler {
	@Autowired
	UserDAO userDAO;
	
	public UserDetails initFlow(){
		return new UserDetails();
	}

	public String validateDetails(UserDetails user,MessageContext messageContext){
		String status = "success";
		if(user.getId().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"id").defaultText("UserId cannot be Empty").build());
			status = "failure";
		}
		if(user.getName().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"name").defaultText("Name cannot be Empty").build());
			status = "failure";
		}
		if(user.getPassword().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"password").defaultText("Password cannot be Empty").build());
			status = "failure";
		}
	
		if(user.getMailID().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"email").defaultText("Email cannot be Empty").build());
			status = "failure";
		}
		if(user.getContactNumber().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"mobile").defaultText("Mobile cannot be Empty").build());
			status = "failure";
		}
		if(user.getAddress().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"address").defaultText("Address cannot be Empty").build());
			status = "failure";
		}
		
		return status;
	}
	public String saveDetails(UserDetails userDetails)
	{
		userDAO.saveOrUpdate(userDetails);
		return "success";
	}
}
