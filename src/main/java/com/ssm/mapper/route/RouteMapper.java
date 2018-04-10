package com.ssm.mapper.route;

import java.util.List;

import com.ssm.entity.route.Route;
import com.ssm.vo.route.RouteVo;

public interface RouteMapper {
	/**
	 * 查询所有
	 * @return
	 */
	public List<Route> selectAll();
	/**
	 * 根据id查询
	 * @param id
	 * @return
	 */
	public Route selectRouteById(Integer id);	
	
	public int selectCountByCondition(RouteVo routeVo);
	
	public List<Route> selectListByPage(RouteVo routeVo);
	
}
