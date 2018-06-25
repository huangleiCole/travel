package com.ssm.entity.user;

import java.io.Serializable;

import lombok.Data;

@Data
public class Address implements Serializable  {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private String username;
	private String postcode;
	private String mobilephone;
	private String phone;
	private String detail;
	
	private User user;
	
}
