package com.geekcattle.controller.lol;
import java.util.List;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import javax.annotation.Resource;

import com.geekcattle.model.lol.Server;
import com.geekcattle.result.ResultData;
import org.springframework.web.bind.annotation.RequestBody;
import com.geekcattle.service.lol.ServerService;

/**
 * Controller
 * Create by liuyingao on 2018/11/13
 */
@RestController
@RequestMapping("/server")
public class ServerController{

	@Resource
	private ServerService serverService;

	/**
	 * 根据Id查询
	 * @param request
	 * @return
	 */
	@RequestMapping("/getServerById")
	public ResultData<Server> getServerById(@RequestBody Server request){
		return serverService.getServerById(request);
	}

	/**
	 * 多条件查询
	 * @param request
	 * @return
	 */
	@RequestMapping("/getServerByParams")
	public ResultData<List<Server>> getServerByParams(@RequestBody Server request){
		return serverService.getServerByParams(request);
	}

	/**
	 * 添加
	 * @param request
	 * @return
	 */
	@RequestMapping("/addServer")
	public ResultData addServer(@RequestBody Server request){
		return serverService.addServer(request);
	}

	/**
	 * 根据Id修改
	 * @param request
	 * @return
	 */
	@RequestMapping("/updateServerById")
	public ResultData updateServerById(@RequestBody Server request){
		return serverService.updateServerById(request);
	}

	/**
	 * 根据Id删除
	 * @param request
	 * @return
	 */
	@RequestMapping("/deleteServerById")
	public ResultData deleteServerById(@RequestBody Server request){
		return serverService.deleteServerById(request);
	}

}