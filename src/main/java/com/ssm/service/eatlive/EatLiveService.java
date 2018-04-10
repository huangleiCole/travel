package com.ssm.service.eatlive;

import java.util.List;

import com.ssm.entity.eatlive.EatLive;
import com.ssm.vo.eatlive.FilmVo;
import com.ssm.util.PageBean;

/**
 * @project_name: travel
 * @todo
 * @author: LC
 * @date: 2018年3月19日 下午3:28:17
 */
public interface EatLiveService {
	/*
	 * 查询餐饮住宿
	 */
	public List<EatLive> queryEatLive(Integer type);
	
	/*
	 * 根据id查询餐饮住宿详情
	 */
	public EatLive queryById(Integer id);
	
	/*
	 * 查询记录数
	 */
	public Integer queryAll();
	
	/**
	 * 分页查询列表
	 * @param currentPage 当前页
	 * @param size 每页数
	 * @param filmVo
	 * @return
	 */
	public PageBean<EatLive> queryEatByCondition(Integer currentPage,Integer size,FilmVo filmVo);
	
	/**
	 * 分页查询列表
	 * @param currentPage 当前页
	 * @param size 每页数
	 * @param filmVo
	 * @return
	 */
	public PageBean<EatLive> queryLiveByCondition(Integer currentPage,Integer size,FilmVo filmVo);
	
	/**
	 * 分页查询列表
	 * @param currentPage 当前页
	 * @param size 每页数
	 * @param filmVo
	 * @return
	 */
	public PageBean<EatLive> queryByCondition(Integer currentPage,Integer size,FilmVo filmVo);
}
