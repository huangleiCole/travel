package com.ssm.service.route.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.util.PageBean;
import com.ssm.entity.route.Route;
import com.ssm.mapper.route.RouteMapper;
import com.ssm.service.route.RouteService;
import com.ssm.vo.route.RouteVo;
@Service
public class RouteServiceImpl implements RouteService{
	
	@Autowired
	private RouteMapper routeMapper;
	@Override
	public List<Route> findAll() {
		return routeMapper.selectAll();
	}
	@Override
	public Route findRouteById(Integer id) {
		return routeMapper.selectRouteById(id);
	}
	@Override
	public PageBean<Route> queryRouteByCondition(Integer currentPage, Integer size, RouteVo routeVo) {
		routeVo.setCurrentPage(currentPage);
		routeVo.setPageCount(size);
		int count = routeMapper.selectCountByCondition(routeVo);
		List<Route> routes = routeMapper.selectListByPage(routeVo);
		PageBean<Route> pageBean = new PageBean<>(count, size);
		pageBean.setCurrent(currentPage);
		pageBean.setDatas(routes);
		return pageBean;
	}

}
