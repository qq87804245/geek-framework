package com.geekcattle.controller.console;

import com.geekcattle.constants.ResultConstants;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/console")
public class IndexController {
	
	@RequestMapping("/index.htm")
	public String index(){
		return ResultConstants.viewToForward("console/index");
	}

	@RequestMapping("/lol/info-heros.htm")
	public String lolIndex(){
		return ResultConstants.viewToForward("console/lol/heros");
	}


}
