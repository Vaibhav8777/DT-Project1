package com.niit.shoppingcart.model;

import java.io.Serializable;

import javax.persistence.Entity;
//import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name="ACCOUNT")
@Component
public class Account implements Serializable
{
	
	private String userID;
	private String accountNumber;
	private int balance;
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getAccountNumber() {
		return accountNumber;
	}
	public void setAccountNumber(String accountNumber) {
		this.accountNumber = accountNumber;
	}
	public int getBalance() {
		return balance;
	}
	public void setBalance(int balance) {
		this.balance = balance;
	}
	

}
