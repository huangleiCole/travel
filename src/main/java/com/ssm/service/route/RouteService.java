package com.ssm.service.route;

import java.util.List;

import com.ssm.util.PageBean;
import com.ssm.entity.route.Route;
import com.ssm.vo.route.RouteVo;

public interface RouteService {
	public List<Route> findAll();
	
	public Route findRouteById(Integer id);
	
	public PageBean<Route> queryRouteByCondition(Integer currentPage,Integer size,RouteVo routeVo);
}
