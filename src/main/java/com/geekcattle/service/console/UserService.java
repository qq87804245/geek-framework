package com.geekcattle.service.console;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import java.util.List;
import com.geekcattle.constants.ExceptionConstants;
import com.geekcattle.exception.ServiceException;
import lombok.extern.slf4j.Slf4j;
import com.geekcattle.result.ResultData;
import com.geekcattle.util.CommonUtil;
import com.geekcattle.model.console.User;
import com.geekcattle.mapper.console.UserMapper;
import org.springframework.transaction.annotation.Propagation;

import org.springframework.transaction.annotation.Transactional;
import com.alibaba.fastjson.JSON;


@Slf4j
@Service
public class UserService{

	@Resource
	private UserMapper userMapper;
	
	/**
	 * 登录
	 * @param user
	 * @return
	 */
	public User login(User request){
		//检查参数Id是否为空
		checkLogin(request);
		log.info("登录请求参数===》"+JSON.toJSONString(request));
		User user = userMapper.login(request);
		log.info("数据请求成功,=====>返回:"+JSON.toJSONString(user));
		return user;
	}

	/**
	 * 根据id查询
	 * @param request
	 * @return
	 */
	public  ResultData<User>getUserById(User request){
		//检查参数Id是否为空
		checkParamsId(request);
		log.info("根据Id查询"+JSON.toJSONString(request));
		ResultData<User> data= new ResultData<>();
		//根据Id查询
		User user = userMapper.getUserById(request);
		data.setData(user);
		log.info("数据请求成功,=====>返回:"+JSON.toJSONString(user));
		return data;
	}


	/**
	 * 多条件查询
	 * @param request
	 * @return
	 */
	public ResultData<List<User>> getUserByParams(User request){
		log.info("多条件查询信息"+JSON.toJSONString(request));
		ResultData<List<User>> data= new ResultData<>();
		//多条件查询信息
		List<User> userList = userMapper.getUserByParams(request);
		data.setData(userList);
		log.info("数据请求成功,=====>返回:"+JSON.toJSONString(userList));
		return data;
	}


	/**
	 * 添加
	 * @param request
	 * @return
	 */
	@Transactional(rollbackFor = Exception.class, propagation = Propagation.REQUIRED)
	public ResultData addUser(User request){
		log.info("添加,请求参数====>"+JSON.toJSONString(request));
		//检查必填参数项是否空
		checkParamsForAdd(request);
		log.info("添加====>参数校验成功");
		ResultData data = new ResultData();
		//添加
		int i = userMapper.addUser(request);
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
	public ResultData updateUserById(User request){
		log.info("修改,请求参数====>"+JSON.toJSONString(request));
		//检查id是否为空
		checkParamsId(request);
		log.info("参数校验成功,id不为空");
		ResultData data = new ResultData();
		//根据Id修改
		int i = userMapper.updateUserById(request);
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
	public ResultData deleteUserById(User request){
		log.info("删除,请求参数====>"+JSON.toJSONString(request));
		//检查id是否为空
		checkParamsId(request);
		log.info("参数校验成功,id不为空");
		ResultData data = new ResultData();
		//根据Id删除
		int i = userMapper.deleteUserById(request);
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
	public void checkParamsId(User request){
		 if(CommonUtil.isStringEmpty(request.getUserid().toString())){
            throw  new ServiceException(ExceptionConstants.ID_NOT_NULL);
        }
	}

	/**
	 * 检查添加参数是否齐全
	 * @param request
	 */
	public void checkParamsForAdd(User request){
		//判断是否为空
		if(CommonUtil.isStringEmpty(request.getUserid().toString())){
            throw  new ServiceException(ExceptionConstants.IS_NULL);
        }
		//判断用户名是否为空
		if(CommonUtil.isStringEmpty(request.getUsername())){
            throw  new ServiceException(ExceptionConstants.IS_NULL);
        }
	}
	
	public String checkLogin(User request){
		if(CommonUtil.isStringEmpty(request.getUsername())){
            throw  new ServiceException(ExceptionConstants.IS_NULL);
        }
		if(CommonUtil.isStringEmpty(request.getPassword())){
			throw  new ServiceException(ExceptionConstants.IS_NULL);
		}
		return null;
	}

}