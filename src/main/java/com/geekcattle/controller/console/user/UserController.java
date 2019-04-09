package com.geekcattle.controller.console.user;
import java.util.List;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

import com.geekcattle.result.ResultData;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import com.geekcattle.model.console.User;
import com.geekcattle.service.console.UserService;

/**
 * Controller
 * Create by liuyingao on 2019/01/11
 */
@Controller
@RequestMapping("/console/user")
public class UserController{

	@Resource
	private UserService userService;

	/**
	 * 根据Id查询
	 * @param request
	 * @return
	 */
	@RequestMapping("/getUserById")
	public ResultData<User> getUserById(@RequestBody User request){
		return userService.getUserById(request);
	}

	/**
	 * 多条件查询
	 * @param request
	 * @return
	 */
	@RequestMapping("/getUserByParams")
	public ResultData<List<User>> getUserByParams(@RequestBody User request){
		return userService.getUserByParams(request);
	}

	/**
	 * 添加
	 * @param request
	 * @return
	 */
	@RequestMapping("/addUser")
	public ResultData addUser(@RequestBody User request){
		return userService.addUser(request);
	}

	/**
	 * 根据Id修改
	 * @param request
	 * @return
	 */
	@RequestMapping("/updateUserById")
	public ResultData updateUserById(@RequestBody User request){
		return userService.updateUserById(request);
	}

	/**
	 * 根据Id删除
	 * @param request
	 * @return
	 */
	@RequestMapping("/deleteUserById")
	public ResultData deleteUserById(@RequestBody User request){
		return userService.deleteUserById(request);
	}

}