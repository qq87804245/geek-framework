package com.geekcattle.mapper.console;

import java.util.List;
import com.geekcattle.model.console.User;

public interface UserMapper {

	/**
	 * 登录
	 * 
	 * @param user
	 * @return
	 */
	public User login(User user);

	/**
	 * 根据Id查询
	 * 
	 * @param user
	 * @return
	 */
	public User getUserById(User user);

	/**
	 * 多条件查询(选配分页)
	 * 
	 * @param user
	 * @return
	 */
	public List<User> getUserByParams(User user);

	/**
	 * 添加
	 * 
	 * @param user
	 * @return
	 */
	public int addUser(User user);

	/**
	 * 根据Id修改
	 * 
	 * @param user
	 * @return
	 */
	public int updateUserById(User user);

	/**
	 * 根据Id删除
	 * 
	 * @param user
	 * @return
	 */
	public int deleteUserById(User user);
}