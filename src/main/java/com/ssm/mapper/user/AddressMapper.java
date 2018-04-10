package com.ssm.mapper.user;

import java.util.List;

import com.ssm.entity.user.Address;
import com.ssm.entity.user.User;

public interface AddressMapper {

	void insert(Address address);

	Integer update(Address address);

	void delete(Address address);
	
	List<Address> selectAllByUserId(User u);
	
	Address selectById(Integer id);
}
