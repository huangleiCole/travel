package com.ssm.mapper.route;


import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class RouteDayMapperTest {
ApplicationContext context;
	
	@Before
	public void setUp() throws Exception {
		context = new ClassPathXmlApplicationContext("classpath:spring-context.xml");
	}
	@Test
	public void testSelectRouteDayByRouId() {
		RouteDayMapper routeDayMapper = (RouteDayMapper) context.getBean("routeDayMapper");
		routeDayMapper.selectRouteDayByRouId(2).forEach(System.out::println);
	}

}
