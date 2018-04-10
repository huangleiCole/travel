package com.ssm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssm.entity.user.Address;
import com.ssm.entity.user.User;
import com.ssm.service.user.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;

	@RequestMapping("/login")
	public String login() throws Exception {
		return "user/login";

	}

	@RequestMapping("/loginHandler")
	@ResponseBody
	public String loginHandler(HttpServletRequest request, String cookies, User user, HttpSession session,
			HttpServletResponse response) throws Exception {
		session.setAttribute("user", user);
		return userService.login(user.getUsername(), user.getPassword());
	}

	@RequestMapping("/loginout")
	public String loginout(HttpSession session, User user) throws Exception {
		session.removeAttribute("user");
		return "user/login";
	}

	@RequestMapping("/register")
	public String register() {
		return "user/register";
	}

	@RequestMapping("/registers")
	public String registers(User user) {
		userService.register(user);
		return "user/login";
	}

	@RequestMapping("/updatepassword")
	public String updatepassword(HttpSession session, Integer id) {
		session.setAttribute("id", id);
		return "user/updatepassword";

	}

	@RequestMapping("/updatepasswords")
	public String updatepwd(HttpSession session, User user) {
		int id = (Integer) session.getAttribute("id");
		user.setId(id);
		userService.updatepassword(user);
		return "user/login";
	}

	@RequestMapping("/show")
	public String show(HttpSession session) throws Exception {
		User use = (User) session.getAttribute("user");
		User user = userService.selectByUsername(use.getUsername());
		session.setAttribute("user", user);
		return "user/show";

	}

	@RequestMapping("/address")
	public String address(Model model, HttpSession session) throws Exception {
		User user = (User) session.getAttribute("user");
		List<Address> address = userService.getAddressByUser(user);
		session.setAttribute("user", user);
		model.addAttribute("address", address);
		return "user/address";
	}

	@RequestMapping("/addaddress")
	public String addaddress() throws Exception {
		return "user/addaddress";
	}

	@RequestMapping("/addaddressS")
	public String addaddressS(HttpSession session, Address address) throws Exception {
		User user = (User) session.getAttribute("user");
		address.setUser(user);
		userService.addAddress(address);
		return "redirect:address";

	}

	@RequestMapping("/deleteaddress")
	public String deleteaddress(Integer id) throws Exception {
		Address address = new Address();
		address.setId(id);
		userService.removeAddress(address);
		return "redirect:address";
	}

	@RequestMapping("/updateaddress")
	public String updateaddress(Model model, Integer id) throws Exception {
		Address address = userService.queryById(id);
		model.addAttribute("address", address);
		return "user/updateaddress";

	}

	@RequestMapping("/updateaddressS")
	public String updateAddressS(Address address) {
		userService.updateAddress(address);
		return "redirect:address";
	}

	@RequestMapping("/order")
	public String orderAll() throws Exception {
		return "user/order";

	}
}
