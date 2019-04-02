package com.geekcattle.model.lol;

import lombok.Getter;
import lombok.Setter;
import com.geekcattle.model.Base;

@Getter
@Setter
public class Summoner extends Base {

	/**
	 * 账号
	 */
	private String username;

	/**
	 * 密码
	 */
	private String password;

	/**
	 * 所在大区
	 */
	private Integer serverid;

	/**
	 * 召唤师名字
	 */
	private String name;

	/**
	 * 召唤师等级
	 */
	private Integer level;

	/**
	 * 游戏点券
	 */
	private Integer gamevoucher;

	/**
	 * 游戏币/蓝色精萃
	 */
	private Integer gamecurrency;

	/**
	 * 召唤师头像
	 */
	private String headportrait;

}