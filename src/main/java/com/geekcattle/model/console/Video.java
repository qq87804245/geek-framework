package com.geekcattle.model.console;

import java.util.Date;

import com.geekcattle.model.Base;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@ApiModel(value = "video", description = "视频信息对象")
public class Video extends Base {

	private Integer id;

	@ApiModelProperty(value = "视频名称")
	private String name;

	private Date createTime;

	private Date updateTime;

	private Integer status;

	private String filePath;

	private String coverPicture;

	private String size;

	private String type;

	private String tag;

	public Video() {}
	public Video(Integer id) {
		this.id = id;
	}
	public Video(Integer id, String name, Date createTime, Date updateTime, Integer status, String filePath, String coverPicture, String size, String type, String tag) {
		this.id = id;
		this.name = name;
		this.createTime = createTime;
		this.updateTime = updateTime;
		this.status = status;
		this.filePath = filePath;
		this.coverPicture = coverPicture;
		this.size = size;
		this.type = type;
		this.tag = tag;
	}
}