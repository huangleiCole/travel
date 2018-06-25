package com.ssm.entity.user;

import java.io.Serializable;
import java.util.List;

import lombok.Data;


@Data
public class User implements Serializable  {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private String username;
	private String password;
	private String repassword;
	private String identifiyingcode;
	private Type type;
	private List<Address> addressList;
}
