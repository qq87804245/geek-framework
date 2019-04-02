package com.geekcattle.controller.console.video;
import java.io.IOException;
import java.util.List;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;

import javax.annotation.Resource;

import org.hibernate.validator.internal.IgnoreForbiddenApisErrors;
import com.geekcattle.model.console.Video;
import com.geekcattle.result.ResultData;
import com.geekcattle.service.console.VideoService;
import org.springframework.web.bind.annotation.RequestBody;

/**
 * Controller
 * Create by liuyingao on 2019/02/24
 */
@RestController
@RequestMapping("/video")
@Api(description = "视频Api")
public class VideoController{

	@Resource
	private VideoService videoService;

	/**
	 * 根据Id查询
	 * @param request
	 * @return
	 */
	@ApiOperation(value="根据id查询", notes="根据id查询")
	@RequestMapping(value="getVideoById", method=RequestMethod.POST)
	public ResultData<Video> getVideoById(@RequestBody Video request){
		return videoService.getVideoById(request);
	}

	/**
	 * 多条件查询
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/getVideoByParams", method=RequestMethod.POST)
	public ResultData<List<Video>> getVideoByParams(Video request){
		return videoService.getVideoByParams(request);
	}

	/**
	 * 添加
	 * @param request
	 * @return
	 * @throws IOException 
	 */
	@RequestMapping(value="/addVideo", method=RequestMethod.POST)
	public ResultData addVideo(Video request) throws IOException{
		return videoService.addVideo(request);
	}

	/**
	 * 根据Id修改
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/updateVideoById", method=RequestMethod.POST)
	public ResultData updateVideoById(@RequestBody Video request){
		return videoService.updateVideoById(request);
	}

	/**
	 * 根据Id删除
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/deleteVideoById", method=RequestMethod.POST)
	public ResultData deleteVideoById(@RequestBody Video request){
		return videoService.deleteVideoById(request);
	}
}