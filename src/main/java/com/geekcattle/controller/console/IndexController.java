package com.geekcattle.controller.console;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/console")
public class IndexController {
	
	@RequestMapping("/lol/index")
	public String index(){
		return "console/lol/index";
	}
	
	@RequestMapping("/welcome/{code}")
	@ResponseBody
	public String welcome(@PathVariable String code){
		return "Welcome:"+code;
	}
}
