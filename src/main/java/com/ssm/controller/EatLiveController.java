package com.ssm.controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ssm.entity.eatlive.City;
import com.ssm.entity.eatlive.EatLive;
import com.ssm.service.eatlive.CityService;
import com.ssm.service.eatlive.EatLiveService;
import com.ssm.vo.eatlive.FilmVo;
import com.ssm.util.PageBean;

/**
 * @project_name: travel
 * @todo
 * @author: LC
 * @date: 2018年3月19日 下午3:33:28
 */
@Controller
@RequestMapping("/eatLive")
public class EatLiveController {
	
	private static final Integer pageSize = 2;
	private static final Integer firstPage = 1;
	private static final Integer defaultType = 0;

	@Autowired
	private EatLiveService eatliveService;
	
	@Autowired
	private CityService cityService;
	
	@RequestMapping("/list")
	public String query(Model model) {
		List<EatLive> eats = eatliveService.queryEatLive(0);
		List<EatLive> lives = eatliveService.queryEatLive(1);
		List<City> citys = cityService.queryAllCity();
		model.addAttribute("eats", eats);
		model.addAttribute("lives", lives);
		model.addAttribute("citys", citys);
		return "eatlive/index";
	}

	// 分页（数据库分页）
	@RequestMapping("/getData")
	public String getFilmData(Model model, FilmVo filmVo, HttpServletRequest request) throws Exception {
		String pageNo = request.getParameter("page");
		System.out.println("pageNo:"+pageNo);
		String type = request.getParameter("type");
		System.out.println("type:"+type);
		String citynum = request.getParameter("city");
		System.out.println("citynum:"+citynum);
		
		String typelv = request.getParameter("lv");
		System.out.println("typelv:" + typelv);
		EatLive eatlive = new EatLive();
		
		if(citynum != null && citynum != ""){
			String cityname = cityService.queryCity(citynum);
			System.out.println(cityname);
			eatlive.setCity(cityname);
		} else if(typelv != null && typelv != ""){
			String[] lvs = typelv.split(",");
			eatlive.setLv(lvs[0]);
			eatlive.setType(Integer.parseInt(lvs[1]));
		}else {
			if(type == null){
				type = String.valueOf(defaultType);
				eatlive.setType(Integer.parseInt(type));
			}else {
				eatlive.setType(Integer.parseInt(type));
			}
		}
		filmVo.setEatlive(eatlive);
		System.out.println("type:"+eatlive.getType());
		System.out.println("city:"+eatlive.getCity());
		
		if (pageNo == null) {
			pageNo = String.valueOf(firstPage);
		}
		PageBean<EatLive> page = eatliveService.queryByCondition(Integer.valueOf(pageNo), pageSize, filmVo);
		request.setAttribute("page", page);
		System.out.println(page);

		return "eatlive/EatLiveData";
	}

	@RequestMapping("/detail")
	public String queryDetail(Model model, Integer id) {
		EatLive eatLive = eatliveService.queryById(id);
		EatLive preEatLive = eatliveService.queryById(id - 1);
		EatLive aftEatLive = eatliveService.queryById(id + 1);
		model.addAttribute("eatLive", eatLive);
		model.addAttribute("preEatLive", preEatLive);
		model.addAttribute("aftEatLive", aftEatLive);
		return "eatlive/details";
	}

	/*
	 * @RequestMapping("/detail") public String queryDetail(Model model, Integer
	 * id) throws Exception{ EatLive eatLive = eatliveService.queryById(id);
	 * model.addAttribute("eatLive", eatLive); int counts =
	 * eatliveService.queryAll(); int type = eatLive.getType(); for (int i =
	 * (id-1); ; i--) { EatLive preEatLive = eatliveService.queryById(i);
	 * if(preEatLive.getType() == type || i == 0){
	 * model.addAttribute("preEatLive", preEatLive); break; }
	 * 
	 * } for (int i = (id+1); ; i++) { EatLive aftEatLive =
	 * eatliveService.queryById(i); if(aftEatLive.getType() == type || i >
	 * counts){ model.addAttribute("aftEatLive", aftEatLive); break; }
	 * 
	 * } return "catering/details"; }
	 */

	@RequestMapping("/catering")
	public String cateringBooking(Model model, Integer id) {
		EatLive eat = eatliveService.queryById(id);
		model.addAttribute("eat", eat);
		return "eatlive/eat";
	}

	@RequestMapping("/hotel")
	public String hotelBooking(Model model, Integer id) {
		EatLive live = eatliveService.queryById(id);
		model.addAttribute("live", live);
		return "eatlive/hotel";
	}
}
