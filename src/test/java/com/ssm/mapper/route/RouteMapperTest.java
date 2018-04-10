package com.ssm.mapper.route;


import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ssm.entity.route.Route;
import com.ssm.vo.route.RouteVo;

public class RouteMapperTest {
	ApplicationContext context;
	
	@Before
	public void setUp() throws Exception {
		context = new ClassPathXmlApplicationContext("classpath:spring-context.xml");
	}
	@Test
	public void testSelectAll() {
		RouteMapper routeMapper = (RouteMapper) context.getBean("routeMapper");
		routeMapper.selectAll().forEach(System.out::println);
	}

	@Test
	public void testSelectRouteById() {
		RouteMapper routeMapper = (RouteMapper) context.getBean("routeMapper");
		Route route = routeMapper.selectRouteById(1);
		System.out.println(route);
	}
	@Test
	public void testSelectCountByCondition() {
		RouteVo routeVo = new RouteVo();
		RouteMapper routeMapper = (RouteMapper) context.getBean("routeMapper");
		int i = routeMapper.selectCountByCondition(routeVo);
		System.out.println(i);	
	}
	@Test
	public void testSelectListByPage(){
		RouteMapper routeMapper = (RouteMapper) context.getBean("routeMapper");
		RouteVo routeVo = new RouteVo();
		routeVo.setCurrentPage(1);
		routeVo.setPageCount(2);
		routeMapper.selectListByPage(routeVo).forEach(System.out::println);
	}

}
