package com.ssm.service.eatlive;

import java.util.List;

import com.ssm.entity.eatlive.City;

public interface CityService {
	/*
	 * 根据编号查城市名称
	 */
	public String queryCity(String citynum);
	
	/*
	 * 查询所有城市
	 */
	public List<City> queryAllCity();

}
