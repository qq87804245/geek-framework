package com.geekcattle.service.lol;

import javax.annotation.Resource;

import com.geekcattle.util.CommonValidate;
import org.springframework.stereotype.Service;
import java.util.List;
import com.geekcattle.constants.ExceptionConstants;
import com.geekcattle.model.lol.Summoner;
import com.geekcattle.exception.ServiceException;
import com.geekcattle.mapper.lol.SummonerMapper;

import lombok.extern.slf4j.Slf4j;
import com.geekcattle.result.ResultData;
import com.geekcattle.util.CommonUtil;
import org.springframework.transaction.annotation.Propagation;

import org.springframework.transaction.annotation.Transactional;
import com.alibaba.fastjson.JSON;


@Slf4j
@Service
public class SummonerService{

	@Resource
	private SummonerMapper summonerMapper;

	/**
	 * 根据id查询
	 * @param request
	 * @return
	 */
	public  ResultData<Summoner>getSummonerById(Summoner request){
		//检查参数Id是否为空
		checkParamsId(request);
		log.info("根据Id查询"+JSON.toJSONString(request));
		ResultData<Summoner> data= new ResultData<>();
		//根据Id查询
		Summoner summoner = summonerMapper.getSummonerById(request);
		data.setData(summoner);
		log.info("数据请求成功,=====>返回:"+JSON.toJSONString(summoner));
		return data;
	}


	/**
	 * 多条件查询
	 * @param request
	 * @return
	 */
	public ResultData<List<Summoner>> getSummonerByParams(Summoner request){
		log.info("多条件查询信息"+JSON.toJSONString(request));
		ResultData<List<Summoner>> data= new ResultData<>();
		//多条件查询信息
		List<Summoner> summonerList = summonerMapper.getSummonerByParams(request);
		data.setData(summonerList);
		log.info("数据请求成功,=====>返回:"+JSON.toJSONString(summonerList));
		return data;
	}


	/**
	 * 添加
	 * @param request
	 * @return
	 */
	@Transactional(rollbackFor = Exception.class, propagation = Propagation.REQUIRED)
	public ResultData addSummoner(Summoner request){
		log.info("添加,请求参数====>"+JSON.toJSONString(request));
		//检查必填参数项是否空
		checkParamsForAdd(request);
		log.info("添加====>参数校验成功");
		ResultData data = new ResultData();
		//添加
		int i = summonerMapper.addSummoner(request);
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
	public ResultData updateSummonerById(Summoner request){
		log.info("修改,请求参数====>"+JSON.toJSONString(request));
		//检查id是否为空
		checkParamsId(request);
		log.info("参数校验成功,id不为空");
		ResultData data = new ResultData();
		//根据Id修改
		int i = summonerMapper.updateSummonerById(request);
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
	public ResultData deleteSummonerById(Summoner request){
		log.info("删除,请求参数====>"+JSON.toJSONString(request));
		//检查id是否为空
		checkParamsId(request);
		log.info("参数校验成功,id不为空");
		ResultData data = new ResultData();
		//根据Id删除
		int i = summonerMapper.deleteSummonerById(request);
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
	public void checkParamsId(Summoner request){
		 if(CommonValidate.isStringEmpty(request.getUsername())){
            throw  new ServiceException(ExceptionConstants.ID_NOT_NULL);
        }
	}

	/**
	 * 检查添加参数是否齐全
	 * @param request
	 */
	public void checkParamsForAdd(Summoner request){
	}

}