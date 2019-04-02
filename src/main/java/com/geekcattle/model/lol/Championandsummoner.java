package com.geekcattle.model.lol;

import java.util.Date;
import com.geekcattle.model.Base;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Championandsummoner extends Base {
	/**
	 * 召唤师账号
	 */
	private String summonerid;
	/**
	 * 召唤师所在服务器id
	 */
	private Integer summonerserverid;

	/**
	 * 英雄id
	 */
	private String championid;

	/**
	 * 购买日期
	 */
	private Date purchasetime;

}