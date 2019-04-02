package com.geekcattle.controller.lol;
import java.util.List;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import javax.annotation.Resource;

import com.geekcattle.model.lol.Championandsummoner;
import com.geekcattle.result.ResultData;
import org.springframework.web.bind.annotation.RequestBody;
import com.geekcattle.service.lol.ChampionandsummonerService;

/**
 * Controller
 * Create by liuyingao on 2018/11/13
 */
@RestController
@RequestMapping("/championandsummoner")
public class ChampionandsummonerController{

	@Resource
	private ChampionandsummonerService championandsummonerService;

	/**
	 * 根据Id查询
	 * @param request
	 * @return
	 */
	@RequestMapping("/getChampionandsummonerById")
	public ResultData<Championandsummoner> getChampionandsummonerById(@RequestBody Championandsummoner request){
		return championandsummonerService.getChampionandsummonerById(request);
	}

	/**
	 * 多条件查询
	 * @param request
	 * @return
	 */
	@RequestMapping("/getChampionandsummonerByParams")
	public ResultData<List<Championandsummoner>> getChampionandsummonerByParams(@RequestBody Championandsummoner request){
		return championandsummonerService.getChampionandsummonerByParams(request);
	}

	/**
	 * 添加
	 * @param request
	 * @return
	 */
	@RequestMapping("/addChampionandsummoner")
	public ResultData addChampionandsummoner(@RequestBody Championandsummoner request){
		return championandsummonerService.addChampionandsummoner(request);
	}

	/**
	 * 根据Id修改
	 * @param request
	 * @return
	 */
	@RequestMapping("/updateChampionandsummonerById")
	public ResultData updateChampionandsummonerById(@RequestBody Championandsummoner request){
		return championandsummonerService.updateChampionandsummonerById(request);
	}

	/**
	 * 根据Id删除
	 * @param request
	 * @return
	 */
	@RequestMapping("/deleteChampionandsummonerById")
	public ResultData deleteChampionandsummonerById(@RequestBody Championandsummoner request){
		return championandsummonerService.deleteChampionandsummonerById(request);
	}
}