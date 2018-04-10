package com.ssm.service.user.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.entity.user.Address;
import com.ssm.entity.user.User;
import com.ssm.mapper.user.AddressMapper;
import com.ssm.mapper.user.UserMapper;
import com.ssm.service.user.UserService;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserMapper userMapper;
	@Autowired
	private AddressMapper addressMapper;

	public String login(String name, String pwd) {
		User u = userMapper.selectUserByUserName(name);
		if (u != null) {
			if (pwd.equals(u.getPassword())) {
				return "101"; // 
			} else {
				return "102"; //
			}
		} else {
			return "102"; // 
		}

	}

	public void register(User user) {
		userMapper.insertUser(user);
	}

	public boolean validate(String name) {
		User u = userMapper.selectUserByUserName(name);
		if (u == null) {
			return true;
		}
		return false;
	}

	public void updatepassword(User user) {
		userMapper.updateUser(user);
	}

	public void addAddress(Address a) {
		addressMapper.insert(a);
	}

	public void removeAddress(Address a) {

		addressMapper.delete(a);
	}

	public void updateAddress(Address a) {
		addressMapper.update(a);
	}

	public List<Address> getAddressByUser(User u) {

		return addressMapper.selectAllByUserId(u);
	}

	public Address queryById(Integer id) {
		return addressMapper.selectById(id);
	}

	public User selectByUsername(String username) {
		
		return userMapper.selectUserByUserName(username);
	}

}
