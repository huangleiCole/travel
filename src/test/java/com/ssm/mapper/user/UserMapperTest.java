package com.ssm.mapper.user;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ssm.entity.user.Type;
import com.ssm.entity.user.User;

public class UserMapperTest {
	ApplicationContext context;

	@Before
	public void setUp() throws Exception {
		context = new ClassPathXmlApplicationContext("classpath:spring-context.xml");
	}

	@Test
	public void testselect() {
		UserMapper mapper = (UserMapper) context.getBean("userMapper");
		User user = mapper.selectUser(13);
		System.out.println(user);
	}

	@Test
	public void testselectUser() {
		UserMapper mapper = (UserMapper) context.getBean("userMapper");
		User user = mapper.selectUserByUserName("jack");
		System.out.println(user);
	}

	@Test
	public void testinsert() {
		UserMapper mapper = (UserMapper) context.getBean("userMapper");
		User user = new User();
		user.setId(1);
		user.setUsername("jac8");
		user.setPassword("12345");
		user.setRepassword("12345");
		user.setIdentifiyingcode("22121");
		user.setType(Type.同意);
		mapper.insertUser(user);
	}

	@Test
	public void testupdate() {
		UserMapper mapper = (UserMapper) context.getBean("userMapper");
		User user = new User();
		user.setId(1);
		user.setPassword("54321");
		user.setRepassword("54321");
		mapper.updateUser(user);
	}

}
