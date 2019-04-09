package com.geekcattle.result;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.Getter;
import lombok.Setter;
import org.springframework.ui.ModelMap;

import java.util.List;

/**
 * Web通用的响应对象
 * @param <T>
 */
@Getter
@Setter
@JsonInclude(JsonInclude.Include.NON_NULL)
public class ResultData<T> {

    //响应编码
    private int code = 200;

    //响应信息
    private String message = "成功";

    //响应数据
    private T data;

    public ResultData(){}
    public ResultData(T t){
        this.setData(t);
    }

}
