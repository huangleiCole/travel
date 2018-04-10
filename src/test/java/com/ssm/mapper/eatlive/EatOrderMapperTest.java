package com.ssm.mapper.eatlive;
import java.util.Date;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ssm.entity.eatlive.EatOrder;
import com.ssm.mapper.eatlive.EatOrderMapper;

public class EatOrderMapperTest {
	ApplicationContext context;
	@Before
	public void setUp() throws Exception {
		context = new ClassPathXmlApplicationContext("classpath:spring-context.xml");
	}

	@Test
	public void testInsertEat() {
		EatOrderMapper eatOrderMapper = (EatOrderMapper) context.getBean("eatOrderMapper");
		EatOrder eatOrder = new EatOrder(2, "0001" ,"中式饭店", "tom", "1859523546", "54231862123651233", 3, new Date(), "无");
		int i = eatOrderMapper.insertEat(eatOrder);
		System.out.println(i);
	}

}
