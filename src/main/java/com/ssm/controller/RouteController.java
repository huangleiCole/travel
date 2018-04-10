package com.ssm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ssm.util.PageBean;
import com.ssm.entity.route.Route;
import com.ssm.entity.route.RouteDay;
import com.ssm.service.route.RouteService;
import com.ssm.vo.route.RouteVo;

@Controller
@RequestMapping(value = "/route")
public class RouteController {
	private static final Integer pageSize = 2;
	private static final Integer firstPage = 1;
	@Autowired
	private RouteService routeService;
	
	@RequestMapping(value = "/routeList", method = RequestMethod.GET)
	public String routeList(Model model,RouteVo routeVo)
			throws Exception {
		PageBean<Route> pageBean = routeService.queryRouteByCondition(firstPage, pageSize, routeVo);
		model.addAttribute("page", pageBean);
		return "route/routeList";
	}
	@RequestMapping(value = "/getRouteData")
	public String getRouteData(Model model,RouteVo routeVo,HttpServletRequest request) throws Exception{
		String pageNo = request.getParameter("page");
		if(pageNo == null){
			pageNo = String.valueOf(firstPage);
		}
		PageBean<Route> page = routeService.queryRouteByCondition(Integer.valueOf(pageNo), pageSize,routeVo);
		request.setAttribute("page", page);
		return "route/routeListPage";
	}
	@RequestMapping(value = "/routeDetail")
	public String routeDetail(Model model,@RequestParam(value="id",required=true)Integer id)throws Exception{
		Route route = routeService.findRouteById(id);
		List<RouteDay> routeDays = route.getRouteDays();
		model.addAttribute("route",route);
		model.addAttribute("routeDays",routeDays);
		return "route/routeDetail";
	}
	@RequestMapping(value = "/routeReserve")
	public String routeReserve(Model model,@RequestParam(value="id",required=true)Integer id) throws Exception{
		Route route = routeService.findRouteById(id);
		model.addAttribute("route",route);
		return "route/routeReserve";
	}
	
}
