package com.ssm.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssm.entity.sights.PayStatus;
import com.ssm.entity.sights.Sights;
import com.ssm.entity.sights.SightsOrder;
import com.ssm.entity.user.User;
import com.ssm.service.sights.SightsOrderService;
import com.ssm.service.sights.SightsService;
import com.ssm.util.PageBean;
import com.ssm.vo.sights.SightsVo;

@Controller
@RequestMapping("/sights")
public class SightsController {

	private static final Integer pageSize = 2;
	private static final Integer firstPage = 1;

	@Autowired
	private SightsService sightsService;
	@Autowired
	private SightsOrderService sightsOrderService;

	@RequestMapping("/all")
	public String all(Model model, SightsVo sightsVo) throws Exception {
		model.addAttribute("sights", sightsService.QuerySightsListByCondition(sightsVo));
		return "sights/sights";
	}

	@RequestMapping("/detail")
	public String detail(Model model, Integer id) throws Exception {
		model.addAttribute("detail", sightsService.selectById(id));
		return "sights/detail";
	}

	@RequestMapping("/reorder")
	public String reorder(Model model, Integer id) throws Exception {
		model.addAttribute("order", sightsService.selectById(id));
		return "sights/sightsorder";
	}

	@RequestMapping("/order")
	public String order(HttpSession session, SightsOrder sightsOrder, Integer sightsid) throws Exception {
		User user = (User) session.getAttribute("user");
		sightsOrder.setUser(user);
		sightsOrder.setSights(sightsService.selectById(sightsid));

		session.setAttribute("orderinfo", sightsOrder);
		session.setAttribute("user", user);
		return "sights/sightsorderinfo";
	}

	@RequestMapping("/repay")
	public String repay(HttpSession session) throws Exception {
		SightsOrder sightsOrder = (SightsOrder) session.getAttribute("orderinfo");
		sightsOrder.setId(sightsOrderService.getNewId());
		session.setAttribute("newid", sightsOrderService.getNewId());
		session.setAttribute("orderinfo", sightsOrder);
		sightsOrderService.updateLastId();
		System.out.println(sightsOrder);
		sightsOrderService.save(sightsOrder);
		return "sights/orderpay";
	}

	@RequestMapping("/pay")
	@ResponseBody
	public String pay(HttpSession session, Integer sid) throws Exception {
		SightsOrder sightsOrder = sightsOrderService.selectById(sid);
		sightsOrder.setPayStatus(PayStatus.已付款);
		Sights sights = sightsOrder.getSights();
		sights.setBuyNum(sights.getBuyNum() + 1);
		sightsService.save(sights);
		sightsOrderService.update(sightsOrder);
		return "1";
	}

	@RequestMapping("/getSightsData")
	public String getRouteData(Model model, SightsVo sightsVo, HttpServletRequest request) throws Exception {
		String pageNo = request.getParameter("page");
		String location = request.getParameter("location");
		System.out.println(location);
		System.out.println(pageNo);
		if (location != null) {
			Sights sights = new Sights();
			sights.setLocation(location);
			sightsVo.setSights(sights);
		}
		if (pageNo == null) {
			pageNo = String.valueOf(firstPage);
		}
		PageBean<Sights> page = sightsService.querySightsPageByCondition(Integer.valueOf(pageNo), pageSize, sightsVo);
		System.out.println(page.getDatas());
		request.setAttribute("page", page);
		return "sights/sightsPageData";
	}
}
