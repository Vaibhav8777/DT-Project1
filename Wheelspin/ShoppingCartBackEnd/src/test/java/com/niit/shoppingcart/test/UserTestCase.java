package com.niit.shoppingcart.test;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.UserDAO;

public class UserTestCase {
	
	AnnotationConfigApplicationContext context;
	UserDAO userDAO;
@Before
	public void init()
	{
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shoppingcart");
		context.refresh();
		
		userDAO =(UserDAO) context.getBean("userDAO");
	}

	@Test
	public void isValidUserTestCase()
	{
		assertEquals("Valid User Test Case", true,
				userDAO.isValidUser("NIIT", "NIIT", true));
	}
	@Test
	public void listAllUserTestCase()
	{
		assertEquals("List Users",   3 , userDAO.list().size());
	}
	
}
