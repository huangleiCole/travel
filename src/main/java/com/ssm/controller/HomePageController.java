package com.ssm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ssm.util.PageBean;
import com.ssm.entity.route.Route;
import com.ssm.entity.specialty.Specialty;
import com.ssm.service.route.RouteService;
import com.ssm.service.specialty.SpecialtySerive;
import com.ssm.vo.route.RouteVo;
import com.ssm.vo.specialty.SpecialtyVo;
@Controller
public class HomePageController {
	
	@Autowired
	private RouteService routeService;
	@Autowired
	private SpecialtySerive specialtySerive;
	
	@RequestMapping(value = "/index")
	public String begin(Model model,RouteVo routeVo,SpecialtyVo specialtyVo) throws Exception{
		PageBean<Route> pageBean1 = routeService.queryRouteByCondition(1, 4, routeVo);
		PageBean<Specialty> pageBean2 = specialtySerive.queryFilmByCondition(1, 8, specialtyVo);
		pageBean2.getDatas().forEach(System.out::println);
		model.addAttribute("page1", pageBean1);
		model.addAttribute("page2", pageBean2);
		return "index";	
	}
}
