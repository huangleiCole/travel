package com.ssm.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssm.entity.eatlive.EatOrder;
import com.ssm.entity.eatlive.LiveOrder;
import com.ssm.service.eatlive.EatOrderService;
import com.ssm.service.eatlive.LiveOrderService;

/**
 * @project_name: travel
 * @todo
 * @author: LC
 * @date: 2018年3月19日 下午3:33:28
 */
@Controller
@RequestMapping("/order")
public class EatLiveOrderController {
	
	@Autowired
	private EatOrderService eatOrderService; 
	
	@Autowired
	private LiveOrderService liveOrderService;
	
	@RequestMapping("/saveEatOrder")
	@ResponseBody
	public String saveEatOrder(EatOrder eatOrder){
		String flag = eatOrderService.saveEatOrder(eatOrder);
		return flag;
	}
	
	@RequestMapping("/saveLiveOrder")
	@ResponseBody
	public String saveLiveOrder(LiveOrder liveOrder){
		String flag = liveOrderService.saveLiveOrder(liveOrder);
		return flag;
	}
}
