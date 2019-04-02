package com.geekcattle.service.lol;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import java.util.List;
import com.geekcattle.constants.ExceptionConstants;
import com.geekcattle.model.lol.Server;
import com.geekcattle.exception.ServiceException;
import com.geekcattle.mapper.lol.ServerMapper;

import lombok.extern.slf4j.Slf4j;
import com.geekcattle.result.ResultData;
import com.geekcattle.util.CommonUtil;
import org.springframework.transaction.annotation.Propagation;

import org.springframework.transaction.annotation.Transactional;
import com.alibaba.fastjson.JSON;


@Slf4j
@Service
public class ServerService{

	@Resource
	private ServerMapper serverMapper;

	/**
	 * 根据id查询
	 * @param request
	 * @return
	 */
	public  ResultData<Server>getServerById(Server request){
		//检查参数Id是否为空
		checkParamsId(request);
		log.info("根据Id查询"+JSON.toJSONString(request));
		ResultData<Server> data= new ResultData<>();
		//根据Id查询
		Server server = serverMapper.getServerById(request);
		data.setData(server);
		log.info("数据请求成功,=====>返回:"+JSON.toJSONString(server));
		return data;
	}


	/**
	 * 多条件查询
	 * @param request
	 * @return
	 */
	public ResultData<List<Server>> getServerByParams(Server request){
		log.info("多条件查询信息"+JSON.toJSONString(request));
		ResultData<List<Server>> data= new ResultData<>();
		//多条件查询信息
		List<Server> serverList = serverMapper.getServerByParams(request);
		data.setData(serverList);
		log.info("数据请求成功,=====>返回:"+JSON.toJSONString(serverList));
		return data;
	}


	/**
	 * 添加
	 * @param request
	 * @return
	 */
	@Transactional(rollbackFor = Exception.class, propagation = Propagation.REQUIRED)
	public ResultData addServer(Server request){
		log.info("添加,请求参数====>"+JSON.toJSONString(request));
		//检查必填参数项是否空
		checkParamsForAdd(request);
		log.info("添加====>参数校验成功");
		ResultData data = new ResultData();
		//添加
		int i = serverMapper.addServer(request);
		if(i == 0){
			throw  new ServiceException(ExceptionConstants.ADD_FAIL);
		}
		log.info("添加成功");
		return data;
	}


	/**
	 * 根据id修改
	 * @param request
	 * @return
	 */
	@Transactional(rollbackFor = Exception.class, propagation = Propagation.REQUIRED)
	public ResultData updateServerById(Server request){
		log.info("修改,请求参数====>"+JSON.toJSONString(request));
		//检查id是否为空
		checkParamsId(request);
		log.info("参数校验成功,id不为空");
		ResultData data = new ResultData();
		//根据Id修改
		int i = serverMapper.updateServerById(request);
		if(i == 0){

			throw  new ServiceException(ExceptionConstants.UPDATE_FAIL);
		}
		log.info("修改成功");
		return data;
	}


	/**
	 * 根据id删除
	 * @param request
	 * @return
	 */
	@Transactional(rollbackFor = Exception.class, propagation = Propagation.REQUIRED)
	public ResultData deleteServerById(Server request){
		log.info("删除,请求参数====>"+JSON.toJSONString(request));
		//检查id是否为空
		checkParamsId(request);
		log.info("参数校验成功,id不为空");
		ResultData data = new ResultData();
		//根据Id删除
		int i = serverMapper.deleteServerById(request);
		if(i == 0){
			throw  new ServiceException(ExceptionConstants.DELTE_FAIL);
		}
		log.info("删除成功");
		return data;
	}

	/**
	 * 检查参数中的id是否为空
	 * @param request
	 */
	public void checkParamsId(Server request){
		 if(CommonUtil.isStringEmpty(request.getId().toString())){
            throw  new ServiceException(ExceptionConstants.ID_NOT_NULL);
        }
	}

	/**
	 * 检查添加参数是否齐全
	 * @param request
	 */
	public void checkParamsForAdd(Server request){
		//判断是否为空
		if(CommonUtil.isStringEmpty(request.getId().toString())){
            throw  new ServiceException(ExceptionConstants.ID_NOT_NULL);
        }
	}

}