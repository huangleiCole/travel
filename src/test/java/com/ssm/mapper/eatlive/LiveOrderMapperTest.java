package com.ssm.mapper.eatlive;
import java.util.Date;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ssm.entity.eatlive.LiveOrder;
import com.ssm.mapper.eatlive.LiveOrderMapper;

public class LiveOrderMapperTest {
	ApplicationContext context;
	@Before
	public void setUp() throws Exception {
		context = new ClassPathXmlApplicationContext("classpath:spring-context.xml");
	}

	@Test
	public void testInsertLiveOrder() {
		LiveOrderMapper liveOrderMapper = (LiveOrderMapper) context.getBean("liveOrderMapper");
		LiveOrder liveOrder = new LiveOrder(1, "001", "名庭酒店", "三人间", "tom", "1866551122", "65332156865214566", 3, new Date(), new Date(), "无");
		int i = liveOrderMapper.insertLiveOrder(liveOrder);
		System.out.println(i);
	}

}
