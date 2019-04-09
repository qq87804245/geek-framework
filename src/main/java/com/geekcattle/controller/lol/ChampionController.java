package com.geekcattle.controller.lol;
import java.util.List;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


import javax.annotation.Resource;

import com.geekcattle.model.lol.Champion;
import com.geekcattle.result.ResultData;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import com.geekcattle.service.lol.ChampionService;

/**
 * Controller
 * Create by liuyingao on 2018/11/13
 */
@Controller
@RequestMapping("/champion")
public class ChampionController{

	@Resource
	private ChampionService championService;

	/**
	 * 根据Id查询
	 * @param request
	 * @return
	 */
	@RequestMapping("/getChampionById")
	public ResultData<Champion> getChampionById(@RequestBody Champion request){
		return championService.getChampionById(request);
	}

	/**
	 * 多条件查询
	 * @param request
	 * @return
	 */
	@RequestMapping(value ="/getChampionByParams", produces = "application/json;charset=UTF-8")
	@ResponseBody
	public ResultData<List<Champion>> getChampionByParams(@RequestBody Champion request){
		return championService.getChampionByParams(request);
	}

	/**
	 * 添加
	 * @param request
	 * @return
	 */
	@RequestMapping("/addChampion")
	public ResultData addChampion(@RequestBody Champion request){
		return championService.addChampion(request);
	}

	/**
	 * 根据Id修改
	 * @param request
	 * @return
	 */
	@RequestMapping("/updateChampionById")
	public ResultData updateChampionById(@RequestBody Champion request){
		return championService.updateChampionById(request);
	}

	/**
	 * 根据Id删除
	 * @param request
	 * @return
	 */
	@RequestMapping("/deleteChampionById")
	public ResultData deleteChampionById(@RequestBody Champion request){
		return championService.deleteChampionById(request);
	}
	
	
	@RequestMapping("/getChampionAll")
	@ResponseBody
	public ResultData getChampionAll(String keyword){
		return championService.getChampionAll(keyword);
	}

	
}