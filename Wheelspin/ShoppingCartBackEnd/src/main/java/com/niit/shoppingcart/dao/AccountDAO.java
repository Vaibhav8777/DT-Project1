package com.niit.shoppingcart.dao;

import com.niit.shoppingcart.model.Account;

public interface AccountDAO {

	
	public Account get(String id);
	public boolean trasfer(String id, int amount);

}
