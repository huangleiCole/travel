package com.ssm.entity.user;

import lombok.Data;

@Data
public class Address {
	private Integer id;
	private String username;
	private String postcode;
	private String mobilephone;
	private String phone;
	private String detail;
	
	private User user;
	
}
