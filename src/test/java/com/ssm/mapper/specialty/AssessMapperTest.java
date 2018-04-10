package com.ssm.mapper.specialty;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ssm.entity.specialty.Assess;
import com.ssm.entity.specialty.SpecialtyOrder;
import com.ssm.entity.user.User;

/**
 * @authour 郑伟
 * @date 2018年3月24日 下午5:36:03
 * @describe
 */

public class AssessMapperTest {

	ApplicationContext context;

	@Before
	public void setUp() throws Exception {
		context = new ClassPathXmlApplicationContext("classpath:spring-context.xml");
	}

	@Test
	public void testSaveAssess() {
		AssessMapper assessMapper = (AssessMapper) context.getBean("assessMapper");
		Assess assess = new Assess();
		User user = new User();
		SpecialtyOrder specialtyOrder = new SpecialtyOrder();
		specialtyOrder.setId(29);
		user.setId(18);
		assess.setLevell("一般");
		assess.setContent("客服态度很不错");
		assess.setUser(user);
		assessMapper.saveAssess(assess);
	}
	
	@Test
	public  void testgetByUserId(){
		AssessMapper assessMapper = (AssessMapper) context.getBean("assessMapper");
		assessMapper.getByUserId(18).forEach(System.out::println);
	}
	@Test
	public  void testselectBySpecialtyId(){
		AssessMapper assessMapper = (AssessMapper) context.getBean("assessMapper");
		System.out.println(assessMapper.selectBySpecialtyId(2));
	}
	
	
}
