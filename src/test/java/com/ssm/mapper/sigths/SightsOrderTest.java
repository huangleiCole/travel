package com.ssm.mapper.sigths;

import java.util.Date;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ssm.entity.sights.Sights;
import com.ssm.entity.sights.SightsOrder;
import com.ssm.entity.user.User;
import com.ssm.mapper.sights.SightsMapper;
import com.ssm.mapper.sights.SightsOrderMapper;

public class SightsOrderTest {

	ApplicationContext context;

	@Before
	public void setUp() throws Exception {
		context = new ClassPathXmlApplicationContext("classpath:spring-context.xml");
	}

	@Test
	public void testAdd() {
		SightsOrderMapper sightsOrderMapper = (SightsOrderMapper) context.getBean("sightsOrderMapper");
		SightsMapper sightsMapper = (SightsMapper) context.getBean("sightsMapper");
		User user = new User();
		user.setId(1);
		user.setUsername("jack");
		Sights sights = sightsMapper.selectById(2);
		SightsOrder sightsOrder = new SightsOrder(1, "16511", new Date(), 5, 2, 10, new Date(), sights, user, 0d, null);
		Integer t = sightsOrderMapper.add(sightsOrder);
		if (t > 0) {
			System.out.println("添加成功,受影响的行数:" + t);
		}
	}

	@Test
	public void testDelete() {
		SightsOrderMapper sightsOrderMapper = (SightsOrderMapper) context.getBean("sightsOrderMapper");
		Integer t = sightsOrderMapper.delete(1);
		if (t > 0) {
			System.out.println("删除成功,受影响的行数:" + t);
		}
	}

	@Test
	public void testUpdate() {
		SightsOrderMapper sightsOrderMapper = (SightsOrderMapper) context.getBean("sightsOrderMapper");
		SightsOrder sightsOrder = new SightsOrder();
		sightsOrder.setId(1);
		sightsOrder.setAdults(7);
		Integer t = sightsOrderMapper.update(sightsOrder);
		if (t > 0) {
			System.out.println("更新成功,受影响的行数:" + t);
		}
	}

	@Test
	public void testSelectById() {
		SightsOrderMapper sightsOrderMapper = (SightsOrderMapper) context.getBean("sightsOrderMapper");
		System.out.println(sightsOrderMapper.selectById(1));
	}

	@Test
	public void testQuerySightsOrderListByCondition() {
		SightsOrderMapper sightsOrderMapper = (SightsOrderMapper) context.getBean("sightsOrderMapper");
		sightsOrderMapper.querySightsOrderListByCondition(null).forEach(System.out::println);
	}

	@Test
	public void testSelectLastId() {
		SightsOrderMapper sightsOrderMapper = (SightsOrderMapper) context.getBean("sightsOrderMapper");
		System.out.println(sightsOrderMapper.selectLastId());
	}

	@Test
	public void testUpdateLastId() {
		SightsOrderMapper sightsOrderMapper = (SightsOrderMapper) context.getBean("sightsOrderMapper");

		sightsOrderMapper.updateLastId(1);
	}
}
