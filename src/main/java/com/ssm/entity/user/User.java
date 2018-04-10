package com.ssm.entity.user;

import java.util.List;

import lombok.Data;


@Data
public class User {
	
	private Integer id;
	private String username;
	private String password;
	private String repassword;
	private String identifiyingcode;
	private Type type;
	private List<Address> addressList;
}
