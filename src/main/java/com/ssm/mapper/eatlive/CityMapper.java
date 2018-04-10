package com.ssm.mapper.eatlive;

import java.util.List;

import com.ssm.entity.eatlive.City;

public interface CityMapper {

	/*
	 * 根据编号查找城市
	 */
	public String selectCityByNum(String citynum);
	
	/*
	 * 查询所有城市
	 */
	public List<City> selectAllCity();
}
