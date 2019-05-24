package com.geekcattle.util;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;

import java.util.List;
import java.util.UUID;

/**
 * 公用工具类
 */
public class CommonUtil {

    /**
     * @return
     * @description 创建UUID唯一键
     */
    public static String createUUID() {
        UUID uuid = UUID.randomUUID();
        String uu = uuid.toString().replaceAll("-", "");
        return uu;
    }


    /**
     * object转json
     * @param obj
     * @return
     */
    public static String fastJsonConvertObjectToJson(Object obj){
        String objJson = JSON.toJSONString(obj);
        return objJson;
    }

    /**
     * json转对象
     * @param jsonString
     * @param clazz
     * @param <T>
     * @return
     */
    public static <T> T fastJson_ConvertJsonToObject(String jsonString, Class<T> clazz){
        T t = JSON.parseObject(jsonString, clazz);
        return t;
    }
    /**
     * json转List
     * @param jsonString
     * @param clazz
     * @param <T>
     * @return
     */
    public static <T> List<T> fastJson_ConvertJsonToList(String jsonString, Class<T> clazz){
        List<T> list = JSONObject.parseArray(jsonString, clazz);
        return list;
    }

}
