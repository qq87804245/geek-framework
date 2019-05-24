package com.geekcattle;

import com.geekcattle.model.console.User;
import com.geekcattle.util.CommonUtil;
import org.junit.Test;
import redis.clients.jedis.Jedis;

import java.util.*;

public class TestRedis {

    @Test
    public void Test() {
        Jedis jedis = new Jedis("127.0.0.1", 6379);

        User user1 = new User(1, "admmin1", "123456", "管理员1", "男", new Date(), "10086", "admin@163.com", "-", CommonUtil.createUUID(), 1, new Date(), new Date());
        User user2 = new User(1, "admmin2", "123456", "管理员2", "男", new Date(), "10086", "admin@163.com", "-", CommonUtil.createUUID(), 1, new Date(), new Date());
        User user3 = new User(1, "admmin3", "123456", "管理员3", "男", new Date(), "10086", "admin@163.com", "-", CommonUtil.createUUID(), 1, new Date(), new Date());
        User user4 = new User(1, "admmin4", "123456", "管理员4", "男", new Date(), "10086", "admin@163.com", "-", CommonUtil.createUUID(), 1, new Date(), new Date());
        User user5 = new User(1, "admmin5", "123456", "管理员5", "男", new Date(), "10086", "admin@163.com", "-", CommonUtil.createUUID(), 1, new Date(), new Date());
        User user6 = new User(1, "admmin6", "123456", "管理员6", "男", new Date(), "10086", "admin@163.com", "-", CommonUtil.createUUID(), 1, new Date(), new Date());
        User user7 = new User(1, "admmin7", "123456", "管理员7", "男", new Date(), "10086", "admin@163.com", "-", CommonUtil.createUUID(), 1, new Date(), new Date());
        User user8 = new User(1, "admmin8", "123456", "管理员8", "男", new Date(), "10086", "admin@163.com", "-", CommonUtil.createUUID(), 1, new Date(), new Date());
        User user9 = new User(1, "admmin9", "123456", "管理员9", "男", new Date(), "10086", "admin@163.com", "-", CommonUtil.createUUID(), 1, new Date(), new Date());
        User user10 = new User(1, "admmin10", "123456", "管理员10", "男", new Date(), "10086", "admin@163.com", "-", CommonUtil.createUUID(), 1, new Date(), new Date());
        List<User> list = new ArrayList<>();
        list.add(user1);
        list.add(user2);
        list.add(user3);
        list.add(user4);
        list.add(user5);
        list.add(user6);
        list.add(user7);
        list.add(user8);
        list.add(user9);
        list.add(user10);


        Map<String, String> map = new HashMap<String, String>();
        int i = 1;
        for (User u : list) {
            map.put("user" + i, CommonUtil.fastJsonConvertObjectToJson(u));
            //System.out.println("----------- [ ]  :" + CommonUtil.fastJsonConvertObjectToJson(u));
            i ++;
        }

        jedis.hmset("SYS_USER", map);
        List<String> lists = jedis.hmget("SYS_USER", "user1", "user2", "user3", "user4", "user5", "user6", "user7", "user8", "user9", "user10");
        for (String s : lists) {
            User user = CommonUtil.fastJson_ConvertJsonToObject(s, User.class);
            
            System.out.println(" [ ] :"+user.getName() +"   "+user.getToken());
        }

    }


}
