package com.ssm.mapper.eatlive;
import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ssm.entity.eatlive.EatLive;
import com.ssm.mapper.eatlive.EatLiveMapper;
import com.ssm.vo.eatlive.FilmVo;

public class EatLiveMapperTest {
	
	ApplicationContext context;
	
	@Before
	public void setUp() throws Exception {
		context = new ClassPathXmlApplicationContext("classpath:spring-context.xml");
	}

	@Test
	public void testSelectEatAndLive() {
		EatLiveMapper eatLiveMapper = (EatLiveMapper) context.getBean("eatLiveMapper");
		List<EatLive> eatLives = eatLiveMapper.selectEatAndLive(0);
		for (EatLive eatLive : eatLives) {
			System.out.println(eatLive);
		}
	}
	
	@Test
	public void testSelectEatLive(){
		EatLiveMapper eatLiveMapper = (EatLiveMapper) context.getBean("eatLiveMapper");
		EatLive eatLive = eatLiveMapper.selectEatLive(1);
		System.out.println(eatLive);
	}
	
	@Test
	public void testSelectAlleat(){
		EatLiveMapper eatLiveMapper = (EatLiveMapper) context.getBean("eatLiveMapper");
		int counts = eatLiveMapper.selectAllEat();
		System.out.println(counts);
	}
	
	@Test
	public void testSelectAlllive(){
		EatLiveMapper eatLiveMapper = (EatLiveMapper) context.getBean("eatLiveMapper");
		int counts = eatLiveMapper.selectAllLive();
		System.out.println(counts);
	}
	
	@Test
	public void testSelectAllcity(){
		EatLiveMapper eatLiveMapper = (EatLiveMapper) context.getBean("eatLiveMapper");
		int counts = eatLiveMapper.selectAllCity("苏州");
		System.out.println(counts);
	}
	@Test
	public void testEatpage(){
		EatLiveMapper eatLiveMapper = (EatLiveMapper) context.getBean("eatLiveMapper");
		FilmVo filmVo = new FilmVo();
		filmVo.setCurrentPage(1);
		filmVo.setPageCount(2);
		EatLive eatLive = new EatLive();
		eatLive.setName("");
		filmVo.setEatlive(eatLive);
		List<EatLive> eatLives = eatLiveMapper.selectListEatByPage(filmVo);
		for (EatLive eatLive2 : eatLives) {
			System.out.println(eatLive2);
		}
	}
	
	@Test
	public void testLivepage(){
		EatLiveMapper eatLiveMapper = (EatLiveMapper) context.getBean("eatLiveMapper");
		FilmVo filmVo = new FilmVo();
		filmVo.setCurrentPage(3);
		filmVo.setPageCount(2);
		EatLive eatLive = new EatLive();
		eatLive.setName("");
		filmVo.setEatlive(eatLive);
		List<EatLive> eatLives = eatLiveMapper.selectListLiveByPage(filmVo);
		for (EatLive eatLive2 : eatLives) {
			System.out.println(eatLive2);
		}
	}
	
	@Test
	public void testpage(){
		EatLiveMapper eatLiveMapper = (EatLiveMapper) context.getBean("eatLiveMapper");
		FilmVo filmVo = new FilmVo();
		filmVo.setCurrentPage(1);
		filmVo.setPageCount(2);
		EatLive eatLive = new EatLive();
		eatLive.setName("");
		eatLive.setType(0);
//		eatLive.setCity("苏州");
		eatLive.setLv("04");
		filmVo.setEatlive(eatLive);
		List<EatLive> eatLives = eatLiveMapper.selectListByPage(filmVo);
		for (EatLive eatLive2 : eatLives) {
			System.out.println(eatLive2);
		}
	}
}
