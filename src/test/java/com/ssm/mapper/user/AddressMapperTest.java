package com.ssm.mapper.user;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ssm.entity.user.Address;
import com.ssm.entity.user.User;

public class AddressMapperTest {
	ApplicationContext context;

	@Before
	public void setUp() throws Exception {
		context = new ClassPathXmlApplicationContext("classpath:spring-context.xml");
	}

	@Test
	public void testinsert() {
		AddressMapper addressMapper = (AddressMapper) context.getBean("addressMapper");
		Address address = new Address();
		User user = new User();
		user.setId(1);
		address.setUsername("jack56");
		address.setMobilephone("24");
		address.setPostcode("233");
		address.setDetail("sdkk");
		address.setUser(user);
		addressMapper.insert(address);
	}

	@Test
	public void testdelete() {
		AddressMapper addressMapper = (AddressMapper) context.getBean("addressMapper");
		Address address = new Address();
		address.setId(2);
		addressMapper.delete(address);
	}

	@Test
	public void testupdate() {
		AddressMapper addressMapper = (AddressMapper) context.getBean("addressMapper");
		Address address = new Address();
		address.setId(3);
		address.setUsername("tom");
		addressMapper.update(address);
	}
	@Test
	public void testselectAll(){
		AddressMapper addressMapper = (AddressMapper) context.getBean("addressMapper");
		User u = new User();
		u.setId(1);
		List<Address> address = addressMapper.selectAllByUserId(u);
		System.out.println(address);
	}
}
