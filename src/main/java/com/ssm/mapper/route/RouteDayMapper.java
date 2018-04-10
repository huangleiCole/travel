package com.ssm.mapper.route;

import java.util.List;

import com.ssm.entity.route.RouteDay;

public interface RouteDayMapper {
	
	public List<RouteDay> selectRouteDayByRouId(Integer route_id);
}
