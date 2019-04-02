package com.geekcattle.service.console;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.List;
import com.geekcattle.constants.ExceptionConstants;
import com.geekcattle.model.console.Video;
import com.geekcattle.exception.ServiceException;
import com.geekcattle.mapper.console.VideoMapper;

import lombok.extern.slf4j.Slf4j;
import com.geekcattle.result.ResultData;
import org.springframework.transaction.annotation.Propagation;

import org.springframework.transaction.annotation.Transactional;
import com.alibaba.fastjson.JSON;

@Slf4j
@Service
public class VideoService {

	@Resource
	private VideoMapper videoMapper;

	/**
	 * 根据id查询
	 * 
	 * @param request
	 * @return
	 */
	public ResultData<Video> getVideoById(Video request) {
		// 检查参数Id是否为空
		checkParamsId(request);
		log.info("根据Id查询" + JSON.toJSONString(request));
		ResultData<Video> data = new ResultData<>();
		// 根据Id查询
		Video video = videoMapper.getVideoById(request);
		data.setData(video);
		log.info("数据请求成功,=====>返回:" + JSON.toJSONString(video));
		return data;
	}

	/**
	 * 多条件查询
	 * 
	 * @param request
	 * @return
	 */
	public ResultData<List<Video>> getVideoByParams(Video request) {
		log.info("多条件查询信息" + JSON.toJSONString(request));
		ResultData<List<Video>> data = new ResultData<>();
		// 多条件查询信息
		List<Video> videoList = videoMapper.getVideoByParams(request);
		Video v = videoList.get(0);

		data.setData(videoList);
		log.info("数据请求成功,=====>返回:" + JSON.toJSONString(videoList));
		return data;
	}

	/**
	 * 添加
	 * 
	 * @param request
	 * @return
	 * @throws IOException
	 */
	@Transactional(rollbackFor = Exception.class, propagation = Propagation.REQUIRED)
	public ResultData addVideo(Video request) throws IOException {
		log.info("添加,请求参数====>" + JSON.toJSONString(request));
		// 检查必填参数项是否空
		checkParamsForAdd(request);
		log.info("添加====>参数校验成功");
		ResultData data = new ResultData();

		// 添加
		int i = videoMapper.addVideo(request);
		if (i == 0) {
			throw new ServiceException(ExceptionConstants.ADD_FAIL);
		}
		log.info("添加成功");
		return data;
	}

	/**
	 * 根据id修改
	 * 
	 * @param request
	 * @return
	 */
	@Transactional(rollbackFor = Exception.class, propagation = Propagation.REQUIRED)
	public ResultData updateVideoById(Video request) {
		log.info("修改,请求参数====>" + JSON.toJSONString(request));
		// 检查id是否为空
		checkParamsId(request);
		log.info("参数校验成功,id不为空");
		ResultData data = new ResultData();
		// 根据Id修改
		int i = videoMapper.updateVideoById(request);
		if (i == 0) {

			throw new ServiceException(ExceptionConstants.UPDATE_FAIL);
		}
		log.info("修改成功");
		return data;
	}

	/**
	 * 根据id删除
	 * 
	 * @param request
	 * @return
	 */
	@Transactional(rollbackFor = Exception.class, propagation = Propagation.REQUIRED)
	public ResultData deleteVideoById(Video request) {
		log.info("删除,请求参数====>" + JSON.toJSONString(request));
		// 检查id是否为空
		checkParamsId(request);
		log.info("参数校验成功,id不为空");
		ResultData data = new ResultData();
		// 根据Id删除
		int i = videoMapper.deleteVideoById(request);
		if (i == 0) {
			throw new ServiceException(ExceptionConstants.DELTE_FAIL);
		}
		log.info("删除成功");
		return data;
	}

	/**
	 * 检查参数中的id是否为空
	 * 
	 * @param request
	 */
	public void checkParamsId(Video request) {

	}

	/**
	 * 检查添加参数是否齐全
	 * 
	 * @param request
	 */
	public void checkParamsForAdd(Video request) {

	}

}