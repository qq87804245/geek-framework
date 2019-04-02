package com.geekcattle.controller.lol;

import java.util.List;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import javax.annotation.Resource;

import com.geekcattle.model.lol.Championgrouping;
import com.geekcattle.result.ResultData;
import org.springframework.web.bind.annotation.RequestBody;
import com.geekcattle.service.lol.ChampiongroupingService;

/**
 * Controller Create by liuyingao on 2018/11/13
 */
@RestController
@RequestMapping("/championgrouping")
public class ChampiongroupingController {

	@Resource
	private ChampiongroupingService championgroupingService;

	/**
	 * 根据Id查询
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping("/getChampiongroupingById")
	public ResultData<Championgrouping> getChampiongroupingById(@RequestBody Championgrouping request) {
		return championgroupingService.getChampiongroupingById(request);
	}

	/**
	 * 多条件查询
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping("/getChampiongroupingByParams")
	public ResultData<List<Championgrouping>> getChampiongroupingByParams(@RequestBody Championgrouping request) {
		return championgroupingService.getChampiongroupingByParams(request);
	}

	/**
	 * 添加
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping("/addChampiongrouping")
	public ResultData addChampiongrouping(@RequestBody Championgrouping request) {
		return championgroupingService.addChampiongrouping(request);
	}

	/**
	 * 根据Id修改
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping("/updateChampiongroupingById")
	public ResultData updateChampiongroupingById(@RequestBody Championgrouping request) {
		return championgroupingService.updateChampiongroupingById(request);
	}

	/**
	 * 根据Id删除
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping("/deleteChampiongroupingById")
	public ResultData deleteChampiongroupingById(@RequestBody Championgrouping request) {
		return championgroupingService.deleteChampiongroupingById(request);
	}
}