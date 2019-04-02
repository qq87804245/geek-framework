package com.geekcattle.controller;

import com.geekcattle.constants.LoginConstants;
import com.geekcattle.model.console.User;
import com.geekcattle.service.console.UserService;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@Autowired
	private UserService userService;
	
	//private HttpSession session;

	@RequestMapping(value= {"/login", "/"})
	public String toLogin() {
//		User loginUser = (User) session.getAttribute(LoginConstants.SESSION_LOGIN_USER);
//		if(loginUser==null) {
//			return "login";
//		}
//		return "console/index";
		return "login";
	}
	
}
