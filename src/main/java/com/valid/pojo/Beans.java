package com.valid.pojo;

import org.springframework.stereotype.Component;

import jakarta.validation.constraints.AssertTrue;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;

@Component
public class Beans 
{
	@NotBlank(message="User Name can not be empty!!")
	@Size(min = 3,max = 12,message = "User Name must be between 3-12 characters!!")
	private String user;
	@Email(regexp = "^[a-zA-Z0-9_.-]+@[a-zA-Z0-9.-]+$",message="Invalid Email!!")
	private String email;
	@AssertTrue(message="Must agree terms and conditions!!")
	private boolean agree;
	
	public Beans() {}

	public Beans(String user, String email) {
		super();
		this.user = user;
		this.email = email;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public boolean isAgree() {
		return agree;
	}

	public void setAgree(boolean agree) {
		this.agree = agree;
	}
	
	
	
}
