package com.ssm.mapper.specialty;


import java.util.Date;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ssm.entity.specialty.SpecialtyOrder;

/**
* @authour 郑伟
* @date 2018年3月22日 下午6:56:43
* @describe
*/

public class SpecialtyOrderMapperTest {

ApplicationContext context;
	
	@Before
	public void setUp() throws Exception {
		context = new ClassPathXmlApplicationContext("classpath:spring-context.xml");
	}

	@Test
	public void testSaveSpecialtyOrder() {
		SpecialtyOrderMapper specialtyOrderMapper = (SpecialtyOrderMapper) context.getBean("specialtyOrderMapper");
		SpecialtyOrder specialtyOrder = new SpecialtyOrder();
		specialtyOrder.setIntegral(60.00);
		specialtyOrder.setPreferential(10.00);
		specialtyOrder.setQuantity(2);
		specialtyOrder.setSpeName("酥糖");
		specialtyOrder.setPreferentialPrice(75.00);
		specialtyOrder.setNopayOrderDate(new Date());
		specialtyOrderMapper.saveSpecialtyOrder(specialtyOrder);
	}
	
	@Test
	public void testSelectById(){
		SpecialtyOrderMapper specialtyOrderMapper = (SpecialtyOrderMapper) context.getBean("specialtyOrderMapper");
	 	SpecialtyOrder specialtyOrder =   specialtyOrderMapper.selectById(1);
		System.out.println(specialtyOrder);
	
	}
	
	@Test
	public void testUpdate(){
		SpecialtyOrderMapper specialtyOrderMapper = (SpecialtyOrderMapper) context.getBean("specialtyOrderMapper");
		SpecialtyOrder specialtyOrder =	specialtyOrderMapper.selectById(2018032346070000L);
		specialtyOrder.setState("未付款");
		specialtyOrderMapper.updateByUserId(specialtyOrder);
	}
	
	@Test
	public  void testselectBySpecialtyOrderId(){
		SpecialtyOrderMapper specialtyOrderMapper = (SpecialtyOrderMapper) context.getBean("specialtyOrderMapper");
		System.out.println(specialtyOrderMapper.selectBySpecialtyOrderId(1));
		
	}

}
