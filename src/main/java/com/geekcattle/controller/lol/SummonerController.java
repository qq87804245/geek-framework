package com.geekcattle.controller.lol;
import java.util.List;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import javax.annotation.Resource;

import com.geekcattle.model.lol.Summoner;
import com.geekcattle.result.ResultData;
import org.springframework.web.bind.annotation.RequestBody;
import com.geekcattle.service.lol.SummonerService;

/**
 * Controller
 * Create by liuyingao on 2018/11/13
 */
@RestController
@RequestMapping("/summoner")
public class SummonerController{

	@Resource
	private SummonerService summonerService;

	/**
	 * 根据Id查询
	 * @param request
	 * @return
	 */
	@RequestMapping("/getSummonerById")
	public ResultData<Summoner> getSummonerById(@RequestBody Summoner request){
		return summonerService.getSummonerById(request);
	}

	/**
	 * 多条件查询
	 * @param request
	 * @return
	 */
	@RequestMapping("/getSummonerByParams")
	public ResultData<List<Summoner>> getSummonerByParams(@RequestBody Summoner request){
		return summonerService.getSummonerByParams(request);
	}

	/**
	 * 添加
	 * @param request
	 * @return
	 */
	@RequestMapping("/addSummoner")
	public ResultData addSummoner(@RequestBody Summoner request){
		return summonerService.addSummoner(request);
	}

	/**
	 * 根据Id修改
	 * @param request
	 * @return
	 */
	@RequestMapping("/updateSummonerById")
	public ResultData updateSummonerById(@RequestBody Summoner request){
		return summonerService.updateSummonerById(request);
	}

	/**
	 * 根据Id删除
	 * @param request
	 * @return
	 */
	@RequestMapping("/deleteSummonerById")
	public ResultData deleteSummonerById(@RequestBody Summoner request){
		return summonerService.deleteSummonerById(request);
	}
}