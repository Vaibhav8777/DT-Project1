package com.niit.shoppingcart.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Entity
@Component
public class Role implements Serializable
{
	private static final long serialVersionUID = 19L;

	@Id
    @GeneratedValue
    private int roleId;
    private String id;
    private String role;
    

    public int getRoleId() {
  		return roleId;
  	}

  	public void setRoleId(int roleId) {
  		this.roleId = roleId;
  	}

  	public String getRole() {
  		return role;
  	}

  	public void setRole(String role) {
  		this.role = role;
  	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

    
}
