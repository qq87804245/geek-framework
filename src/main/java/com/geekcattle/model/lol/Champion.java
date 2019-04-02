package com.geekcattle.model.lol;
import java.util.Date;

import com.geekcattle.model.Base;

import lombok.Getter;import lombok.Setter;


@Getter
@Setter
public class Champion extends Base{


	private String id;

	/**
	 * 称号
	 */
	private String title;

	/**
	 * 名字
	 */
	private String name;

	/**
	 * 游戏点券
	 */
	private Integer voucher;

	/**
	 * 游戏币/蓝色精萃
	 */
	private Integer currency;

	/**
	 * 分类
	 */
	private String grouping;

	/**
	 * 头像
	 */
	private String headportrait;

	/**
	 * 发布日期
	 */
	private Date releasedate;

}