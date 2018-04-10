package com.ssm.mapper.specialty;


import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ssm.entity.specialty.Specialty;
import com.ssm.vo.specialty.SpecialtyVo;



/**
* @authour 郑伟
* @date 2018年3月19日 下午11:12:33
* @describe
*/

public class SpecialtyMapperTest {

ApplicationContext context;
	
	@Before
	public void setUp() throws Exception {
		context = new ClassPathXmlApplicationContext("classpath:spring-context.xml");
	}

	@Test
	public void testGetAllSpecialtys() {
		SpecialtyMapper customerMapper = (SpecialtyMapper) context.getBean("specialtyMapper");
		customerMapper.getAllSpecialtys().forEach(System.out::println);
		
	}
	
	@Test
	public void testSelectById() {
		SpecialtyMapper customerMapper = (SpecialtyMapper) context.getBean("specialtyMapper");
		System.out.println(customerMapper.selectById(2)); 
	}
	
	@Test
	public void testSelectByFilmName() {
		SpecialtyMapper filmMapper = (SpecialtyMapper) context.getBean("specialtyMapper");
		SpecialtyVo specialtyVo = new SpecialtyVo ();
		Specialty specialty  = new Specialty();
		specialty.setSpeName("笼包");
		specialtyVo.setSpecialty(specialty);
		filmMapper.selectByFilmName(specialtyVo).forEach(System.out::println);;
		
	}
	
	@Test
	public void testselectListByPage() {
		SpecialtyMapper filmMapper = (SpecialtyMapper) context.getBean("specialtyMapper");
		SpecialtyVo specialtyVo = new SpecialtyVo ();
		Specialty specialty = new Specialty();
		specialty.setOrigin("2");
		specialtyVo.setSpecialty(specialty);
		specialtyVo.setCurrentPage(1);
		specialtyVo.setPageCount(15);
		List<Specialty> specialtys = filmMapper.selectListByPage(specialtyVo);
		
		specialtys.forEach(System.out::println);
	}
	
	@Test
	public void selectCountByCondition() {
		SpecialtyMapper filmMapper = (SpecialtyMapper) context.getBean("specialtyMapper");
		SpecialtyVo specialtyVo = new SpecialtyVo ();
		int count = filmMapper.selectCountByCondition(specialtyVo);
		
		System.out.println(count);
	}
	
	@Test
	public void selectByOrigin() {
		SpecialtyMapper filmMapper = (SpecialtyMapper) context.getBean("specialtyMapper");
		filmMapper.selectByOrigin("1001").forEach(System.out::println);
	}
}
