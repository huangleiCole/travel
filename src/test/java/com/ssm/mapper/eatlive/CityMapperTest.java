package com.ssm.mapper.eatlive;
import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ssm.entity.eatlive.City;
import com.ssm.mapper.eatlive.CityMapper;

public class CityMapperTest {
	
	ApplicationContext context;
	@Before
	public void setUp() throws Exception {
		context = new ClassPathXmlApplicationContext("classpath:spring-context.xml");
	}

	@Test
	public void testSelectCityByNum() {
		CityMapper cityMapper = (CityMapper) context.getBean("cityMapper");
		String cityname = cityMapper.selectCityByNum("005");
		System.out.println(cityname);
	}
	
	@Test
	public void testSelectAll() {
		CityMapper cityMapper = (CityMapper) context.getBean("cityMapper");
		List<City> citys = cityMapper.selectAllCity();
		for (City city : citys) {
			System.out.println(city);
		}
	}

}
