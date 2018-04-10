package com.ssm.controller;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ssm.entity.specialty.Assess;
import com.ssm.util.PageBean;
import com.ssm.entity.specialty.Specialty;
import com.ssm.entity.specialty.SpecialtyOrder;
import com.ssm.entity.user.User;
import com.ssm.service.specialty.AssessSeervice;
import com.ssm.service.specialty.SpecialtyOrderSevice;
import com.ssm.service.specialty.SpecialtySerive;
import com.ssm.service.user.UserService;
import com.ssm.util.ID;
import com.ssm.vo.specialty.SpecialtyVo;

/**
 * @authour 郑伟
 * @date 2018年3月19日 下午11:28:46
 * @describe
 */
@Controller
@RequestMapping("/Specialty")
public class SpecialtyController {

	private static final Integer pageSize = 12;
	private static final Integer firstPage = 1;

	@Autowired
	private SpecialtySerive specialtySerive;
	@Autowired
	private SpecialtyOrderSevice specialtyOrderSerive;
	@Autowired
	private UserService userService;
	@Autowired
	private AssessSeervice assessSeervice;

	@RequestMapping(value = "/SpecialtyList", method = RequestMethod.GET)
	public String SpecialtyList(Model model, SpecialtyVo specialtyVo, HttpSession session) throws Exception {
		List<Specialty> specialtyList = specialtySerive.selectBySpecialty(specialtyVo);
		model.addAttribute("specialtyList", specialtyList);

		return "specialty/specialty";
	}

	@RequestMapping(value = "/SpecialtyListOrigin", method = RequestMethod.GET)
	public String SpecialtyListOrigin(Model model, String Origin) throws Exception {
		List<Specialty> specialtyList = specialtySerive.selectByOriginSpecialty(Origin);
		model.addAttribute("specialtyList", specialtyList);
		return "specialty/specialty";
	}

	@RequestMapping("/specialtyxq")
	public String specialtyxq(Model model, Integer id, HttpSession session) throws Exception {
		User user = (User) session.getAttribute("user");
		if (user != null) {
			session.setAttribute("address", userService.queryById(user.getId()));
		}

		model.addAttribute("specialty", specialtySerive.selectByIdSpecialty(id));
		return "specialty/specialtyxq";
	}

	@RequestMapping("/specialtyOrder")
	public String specialtyOrder(Model model, Integer id) throws Exception {

		model.addAttribute("specialty", specialtySerive.selectByIdSpecialty(id));
		return "specialty/specialtyOrder";
	}

	@RequestMapping("/specialtypay")
	public String specialtypay(Model model, HttpSession session, Integer id) throws Exception {
		User user = (User) session.getAttribute("user");

		Specialty specialty = specialtySerive.selectByIdSpecialty(id);
		SpecialtyOrder specialtyOrder = new SpecialtyOrder();
		specialtyOrder.setUser(user);
		specialtyOrder.setSpecialty(specialty);
		specialtyOrder.setSpecialtyOrderId(ID.getID());
		specialtyOrder.setNopayOrderDate(new Date());
		specialtyOrder.setQuantity(1);
		specialtyOrder.setSpeName(specialty.getSpeName());
		specialtyOrder.setRadio(specialty.getDistribution());
		specialtyOrder.setIntegral(specialty.getPreferentialPrice() * 0.1);
		specialtyOrder.setPreferential(specialty.getCourierFees());
		specialtyOrder.setToal(specialty.getPreferentialPrice() + specialty.getCourierFees() + 1);
		specialtyOrder.setPreferentialPrice(specialty.getPreferentialPrice());
		specialtyOrder.setState("未付款");
		specialtyOrderSerive.saveOrder(specialtyOrder);
		session.setAttribute("specialtyOrder", specialtyOrder);
		model.addAttribute("specialty", specialtySerive.selectByIdSpecialty(id));
		return "specialty/specialtypay";
	}

	@RequestMapping("/specialtysuccess")
	public String specialtysuccess(Model model, Integer id, HttpSession session) throws Exception {
		SpecialtyOrder specialtyOrder = (SpecialtyOrder) session.getAttribute("specialtyOrder");
		long ids1 = specialtyOrder.getSpecialtyOrderId();
		SpecialtyOrder specialtyOrder1 = specialtyOrderSerive.selectByIdSpecialtyOrder(ids1);
		specialtyOrder1.setState("已付款");
		specialtyOrderSerive.updateByUser(specialtyOrder1);
		model.addAttribute("specialty", specialtySerive.selectByIdSpecialty(id));
		return "specialty/specialtysuccess";
	}

	@RequestMapping("/specialtyevaluation")
	public String specialtyevaluation(Model model, Integer id, HttpSession session) throws Exception {
		SpecialtyOrder specialtyOrder = (SpecialtyOrder) session.getAttribute("specialtyOrder");
		long ids1 = specialtyOrder.getSpecialtyOrderId();
		SpecialtyOrder specialtyOrder1 = specialtyOrderSerive.selectByIdSpecialtyOrder(ids1);
		specialtyOrder1.setState("已收货");
		specialtyOrderSerive.updateByUser(specialtyOrder1);
		model.addAttribute("specialty", specialtySerive.selectByIdSpecialty(id));
		return "specialty/specialtyevaluation";
	}

	@RequestMapping("/specialtyevaluation2")
	public String specialtyevaluation2(Model model, Integer id, HttpSession session) throws Exception {
		SpecialtyOrder specialtyOrder = (SpecialtyOrder) session.getAttribute("specialtyOrder");
		long ids1 = specialtyOrder.getSpecialtyOrderId();
		SpecialtyOrder specialtyOrder1 = specialtyOrderSerive.selectByIdSpecialtyOrder(ids1);
		specialtyOrder1.setState("已评价");
		specialtyOrderSerive.updateByUser(specialtyOrder1);
		model.addAttribute("specialty", specialtySerive.selectByIdSpecialty(id));
		return "specialty/specialtyevaluation2";
	}

	// 获取列表信息
	@RequestMapping("/getFilmData")
	public String getFilmData(Model model, SpecialtyVo specialtyVo, HttpServletRequest request) throws Exception {
		String pageNo = request.getParameter("page");
		String Origin = request.getParameter("Origin");
		if (Origin != null) {
			Specialty specialty = new Specialty();
			specialty.setOrigin(Origin);
			;
			specialtyVo.setSpecialty(specialty);
		}
		if (pageNo == null) {
			pageNo = String.valueOf(firstPage);
		}
		PageBean<Specialty> page = specialtySerive.queryFilmByCondition(Integer.valueOf(pageNo), pageSize, specialtyVo);
		request.setAttribute("page", page);
		return "specialty/specialtyDatePage";
	}

	@RequestMapping("/saveLiveOrder")
	public String saveLiveOrder(Model model, Integer id, HttpSession session, Assess assess) throws IOException {
		User user = (User) session.getAttribute("user");
		assess.setSpecialty(specialtySerive.selectByIdSpecialty(id));
		assess.setUser(user);
		assessSeervice.saveAssessByUserId(assess);
		return "specialty/specialty";
	}
}
