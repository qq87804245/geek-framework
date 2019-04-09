package com.geekcattle.model;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.Getter;
import lombok.Setter;
import javax.persistence.*;
/**
 * 实体类的基类
 */
@JsonInclude(JsonInclude.Include.NON_NULL)
@Getter
@Setter
public class Base {
    @Transient
    private Integer offset = 0;
    @Transient
    private Integer limit =10;

	 /**
     * token
     */
    //private  String pageToken;

    /**
     * 当前第几页
     */
    //private  Integer pageIndex;

    /**
     * 每页显示的记录数
     */
    //private  Integer pageSize;

    /*private  String limit;
    public void setLimit() {
        if(pageIndex!=null && pageSize!=null) {
            this.limit = ((pageIndex - 1) * pageSize) + ", " + pageSize;
        }
    }*/
}
