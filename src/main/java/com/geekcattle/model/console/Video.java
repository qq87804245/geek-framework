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

	@ApiModelProperty(value = "视频名称", name = "name", example = "视频111")
	private String name;

	private Date createTime;

	private Date updateTime;

	private Integer status;

	private String filePath;

	private String coverPicture;

	private String size;

	private String type;

}