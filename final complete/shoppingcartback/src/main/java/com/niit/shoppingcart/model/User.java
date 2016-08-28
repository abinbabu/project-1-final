package com.niit.shoppingcart.model;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.stereotype.Component;
@Entity
@Table(name="USER_INFO")
@Component
public class User implements Serializable{
	@Id
	private String id;
	 @NotNull(message="Name cannot be null")
	 @Size(min=2, max=30)
	private String name;
	 @NotNull(message="Name cannot be null")
	private String mailid;
	 @NotNull(message="Name cannot be null")
	 @Size(max=30)
	private String address;
	 @NotNull(message="Name cannot be null")
	private String contactnumber;
	 @NotNull(message="Name cannot be null")
	 @Size(min=7)
	private String password;
	
	@OneToMany(mappedBy="user",fetch = FetchType.EAGER)
	private Set<Cart> carts;
	
	
	
	
	
	
	public Set<Cart> getCarts() {
		return carts;
	}
	public void setCarts(Set<Cart> carts) {
		this.carts = carts;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMailid() {
		return mailid;
	}
	public void setMailid(String mailid) {
		this.mailid = mailid;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getContactnumber() {
		return contactnumber;
	}
	public void setContactnumber(String contactnumber) {
		this.contactnumber = contactnumber;
	}


	
	
	

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
	
	
	@Column(name="isadmin")
	private boolean isAdmin;
	public boolean isAdmin() {
		return isAdmin;
	}
	public void setAdmin(boolean isAdmin) {
		this.isAdmin = isAdmin;
	}
	
	
	

}
