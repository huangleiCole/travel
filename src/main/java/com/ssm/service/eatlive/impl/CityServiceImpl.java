package com.ssm.service.eatlive.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.entity.eatlive.City;
import com.ssm.mapper.eatlive.CityMapper;
import com.ssm.service.eatlive.CityService;

@Service
public class CityServiceImpl implements CityService {

	@Autowired
	private CityMapper cityMapper;
	@Override
	public String queryCity(String citynum) {
		String cityname = cityMapper.selectCityByNum(citynum);
		return cityname;
	}
	@Override
	public List<City> queryAllCity() {
		List<City> citys = cityMapper.selectAllCity();
		return citys;
	}

}
