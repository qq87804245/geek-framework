package com.geekcattle.service.lol;

import javax.annotation.Resource;

import com.geekcattle.util.CommonValidate;
import org.springframework.stereotype.Service;
import java.util.List;
import com.geekcattle.constants.ExceptionConstants;
import com.geekcattle.model.lol.Champion;
import com.geekcattle.exception.ServiceException;
import com.geekcattle.mapper.lol.ChampionMapper;

import lombok.extern.slf4j.Slf4j;
import com.geekcattle.result.ResultData;
import com.geekcattle.util.CommonUtil;
import org.springframework.transaction.annotation.Propagation;

import org.springframework.transaction.annotation.Transactional;
import com.alibaba.fastjson.JSON;


@Slf4j
@Service
public class ChampionService{

	@Resource
	private ChampionMapper championMapper;

	/**
	 * 根据id查询
	 * @param request
	 * @return
	 */
	public  ResultData<Champion>getChampionById(Champion request){
		//检查参数Id是否为空
		checkParamsId(request);
		log.info("根据Id查询"+JSON.toJSONString(request));
		ResultData<Champion> data= new ResultData<>();
		//根据Id查询
		Champion champion = championMapper.getChampionById(request);
		data.setData(champion);
		log.info("数据请求成功,=====>返回:"+JSON.toJSONString(champion));
		return data;
	}


	/**
	 * 多条件查询
	 * @param request
	 * @return
	 */
	public ResultData<List<Champion>> getChampionByParams(Champion request){
		log.info("多条件查询信息"+JSON.toJSONString(request));
		ResultData<List<Champion>> data= new ResultData<>();
		//多条件查询信息
		List<Champion> championList = championMapper.getChampionByParams(request);
		data.setData(championList);
		log.info("数据请求成功,=====>返回:"+JSON.toJSONString(championList));
		return data;
	}

	public ResultData<List<Champion>> getChampionAll(String keyword) {
		ResultData<List<Champion>> data= new ResultData<>();
		//多条件查询信息
		keyword = keyword != null ? keyword.trim() : keyword;
		
		List<Champion> championList = championMapper.getChampionAll(keyword);
		data.setData(championList);
		log.info("数据请求成功,=====>返回:"+JSON.toJSONString(championList));
		return data;
	}
	
	/**
	 * 添加
	 * @param request
	 * @return
	 */
	@Transactional(rollbackFor = Exception.class, propagation = Propagation.REQUIRED)
	public ResultData addChampion(Champion request){
		log.info("添加,请求参数====>"+JSON.toJSONString(request));
		//检查必填参数项是否空
		checkParamsForAdd(request);
		log.info("添加====>参数校验成功");
		ResultData data = new ResultData();
		//添加
		int i = championMapper.addChampion(request);
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
	public ResultData updateChampionById(Champion request){
		log.info("修改,请求参数====>"+JSON.toJSONString(request));
		//检查id是否为空
		checkParamsId(request);
		log.info("参数校验成功,id不为空");
		ResultData data = new ResultData();
		//根据Id修改
		int i = championMapper.updateChampionById(request);
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
	public ResultData deleteChampionById(Champion request){
		log.info("删除,请求参数====>"+JSON.toJSONString(request));
		//检查id是否为空
		checkParamsId(request);
		log.info("参数校验成功,id不为空");
		ResultData data = new ResultData();
		//根据Id删除
		int i = championMapper.deleteChampionById(request);
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
	public void checkParamsId(Champion request){
		 if(CommonValidate.isStringEmpty(request.getId())){
            throw  new ServiceException(ExceptionConstants.ID_NOT_NULL);
        }
	}

	/**
	 * 检查添加参数是否齐全
	 * @param request
	 */
	public void checkParamsForAdd(Champion request){
		//判断是否为空
		if(CommonValidate.isStringEmpty(request.getId())){
            throw  new ServiceException(ExceptionConstants.ID_NOT_NULL);
        }
	}

	
	

}