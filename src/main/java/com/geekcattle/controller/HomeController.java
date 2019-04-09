package com.geekcattle.controller;

import com.geekcattle.constants.LoginConstants;
import com.geekcattle.constants.ResultConstants;
import com.geekcattle.model.console.User;
import com.geekcattle.service.console.UserService;
import org.springframework.ui.Model;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.thymeleaf.spring5.view.ThymeleafView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class HomeController {

	@Autowired
	private UserService userService;

	@RequestMapping(value= {"/login", "/login.htm", "/"})
	public String toLogin(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		User loginUser = (User) session.getAttribute(LoginConstants.SESSION_LOGIN_USER);
		if(loginUser==null) {
			return ResultConstants.viewToForward("console/login");
		}
		ThymeleafView tv = new ThymeleafView();
		return ResultConstants.viewToRedirect("/console/index.htm");
	}

	@RequestMapping("/welcome/{code}")
	@ResponseBody
	public String welcome(@PathVariable String code){
		return "Welcome:"+code;
	}
	
}
