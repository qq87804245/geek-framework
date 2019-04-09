package com.geekcattle.util;

import java.util.Collection;
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

}
