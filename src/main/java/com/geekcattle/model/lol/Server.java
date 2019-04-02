package com.geekcattle.model.lol;

import lombok.Getter;
import lombok.Setter;
import com.geekcattle.model.Base;

@Getter
@Setter
public class Server extends Base {

	private Integer id;

	/**
	 * 名称
	 */
	private String name;

	/**
	 * 所在网络
	 */
	private String network;

	/**
	 * 区服序号
	 */
	private Integer serialnumber;

}