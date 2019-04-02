package com.geekcattle.model.console;

import java.util.Date;

import com.geekcattle.model.Base;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class User extends Base {

	private Integer userid;

	/**
	 * 用户名
	 */
	private String username;

	/**
	 * 密码
	 */
	private String password;

	/**
	 * 名字
	 */
	private String name;

	/**
	 * 性别
	 */
	private String sex;

	/**
	 * 生日
	 */
	private Date birthday;

	/**
	 * 手机号
	 */
	private String phone;

	/**
	 * 电子邮箱
	 */
	private String email;

	/**
	 * 头像
	 */
	private String photo;

	/**
	 * 
	 */
	private String token;

	/**
	 * 状态
	 */
	private Integer status;

	/**
	 * 注册时间
	 */
	private Date firsttime;

	/**
	 * 最后登录时间
	 */
	private Date lasttime;

}