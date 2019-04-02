package com.geekcattle.model;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.Getter;
import lombok.Setter;

/**
 * 实体类的基类
 */
@JsonInclude(JsonInclude.Include.NON_NULL)
@Getter
@Setter
public class Base {
	 /**
     * token
     */
    private  String pageToken;

    /**
     * 当前第几页
     */
    private  Integer pageIndex;

    /**
     * 每页显示的记录数
     */
    private  Integer pageSize;
}
