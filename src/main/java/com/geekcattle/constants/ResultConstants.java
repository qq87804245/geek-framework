package com.geekcattle.constants;

import org.springframework.ui.ModelMap;

/**
 * 响应结果字符串常量
 */
public class ResultConstants {

    //请求成功的响应编码
    public  static  final  Integer SUCCESS_CODE = 200;

    //请求失败的响应编码
    public  static  final  Integer ERROR_CODE = 500;

    //token失效的响应编码
    public  static  final  Integer TOKEN_TIME_OUT_CODE = 0;

    /**
     * 转发
     * @param url
     * @return
     */
    public static String viewToForward(String url){
        return url;
    }

    /**
     * 重定向
     * @param url
     * @return
     */
    public static String viewToRedirect(String url){
        return "redirect:"+url;
    }


    public static ModelMap success(String msg, Object obj, String referer){
        return getModelMap(msg, obj, referer, SUCCESS_CODE);
    }

    public static ModelMap error(String msg, Object obj, String referer){
        return getModelMap(msg, obj, referer, ERROR_CODE);
    }

    public static ModelMap getModelMap(String msg, Object obj, String referer, Integer code){
        ModelMap mp = new ModelMap();
        mp.put("code", code);
        mp.put("message", msg);
        mp.put("referer", referer);
        mp.put("data", obj);
        return mp;
    }

}
