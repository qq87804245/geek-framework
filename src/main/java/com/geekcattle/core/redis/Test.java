package com.geekcattle.core.redis;

import com.geekcattle.model.console.User;

public class Test extends Student {
    Test() {
        System.out.println(" 子类 ( ) 构造方法");
    }

    Test(String s) {
        System.out.println(" 子类 ( ) 有参构造方法");
    }

    {
        System.out.println(" 子类 { } 构造块");
    }

    static {
        System.out.println(" 子类 static { } ");
    }

    public void run() {
        System.out.println(" 子类 run()");
    }

}

class Student {
    Student() {
        System.out.println(" 父类 ( ) 构造方法");
    }

    Student(String s) {
        System.out.println(" 父类 ( ) 有参构造方法");
    }

    {
        System.out.println(" 父类 { } 构造块");
    }

    static {
        System.out.println(" 父类 static { } ");
    }

    public void run() {
        System.out.println(" 父类 run()");
    }
}

class Start {
    public static void main(String[] args) {
        Test t = new Test("12");
        t.run();
        User p1 = new User(1);
        System.out.println(p1.getUserid());
        change(p1);
        System.out.println(p1.getUserid());


    }

    public static void change(User p2) {
        p2 = new User(2);
    }
}