package com.ssm.mapper.eatlive;

import java.util.List;

import com.ssm.entity.eatlive.EatLive;
import com.ssm.vo.eatlive.FilmVo;

/**
 * @project_name: travel
 * @todo
 * @author: LC
 * @date: 2018年3月19日 下午2:42:55
 */
public interface EatLiveMapper {
	/*
	 * 根据类型查餐饮
	 */
	public List<EatLive> selectEatAndLive(Integer type);
	
	/*
	 * 根据id查详情
	 */
	public EatLive selectEatLive(Integer id);
	
	/*
	 * 查询餐饮记录数
	 */
	public Integer selectAllEat();
	
	/*
	 * 查询住宿记录数
	 */
	public Integer selectAllLive();
	
	/*
	 * 查询指定城市记录数
	 */
	public Integer selectAllCity(String city);
	
	/*
	 * 查询餐饮分页
	 */
	public List<EatLive> selectListEatByPage(FilmVo filmVo);
	
	/*
	 * 查询住宿分页
	 */
	public List<EatLive> selectListLiveByPage(FilmVo filmVo);
	
	/*
	 * 查询餐饮住宿分页
	 */
	public List<EatLive> selectListByPage(FilmVo filmVo);
}
