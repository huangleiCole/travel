package com.ssm.service.user;

import java.util.List;

import com.ssm.entity.user.Address;
import com.ssm.entity.user.User;

public interface UserService {
	String login(String name, String pwd); 

	void register(User user);

	boolean validate(String name);

	void addAddress(Address a);
	
	void removeAddress(Address a);
	
	void updateAddress(Address a);
	
	List<Address> getAddressByUser(User u);
	
	void updatepassword(User user);
	
	Address queryById(Integer id);
	
	User selectByUsername(String username);
}
