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

	public User(){};
	public User(Integer userid){
		this.userid = userid;
	};
	public User(Integer userid, String username, String password, String name, String sex, Date birthday, String phone, String email, String photo, String token, Integer status, Date firsttime, Date lasttime) {
		this.userid = userid;
		this.username = username;
		this.password = password;
		this.name = name;
		this.sex = sex;
		this.birthday = birthday;
		this.phone = phone;
		this.email = email;
		this.photo = photo;
		this.token = token;
		this.status = status;
		this.firsttime = firsttime;
		this.lasttime = lasttime;
	}
}