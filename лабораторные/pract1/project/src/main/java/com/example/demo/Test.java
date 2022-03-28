package com.example.demo;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test {
    public static void main(String[] args) {
        ClassPathXmlApplicationContext context
                = new ClassPathXmlApplicationContext("applicationContext.xml");
        Helloworld helloworld1 = context.getBean("hello",Helloworld.class);
        helloworld1.getMessage();

        //Second method//
        Helloworld helloworld = new Helloworld();
        helloworld.getMessage();
        Helloworld a;
        //Третий метод//
        AnnotationConfigApplicationContext context1 = new AnnotationConfigApplicationContext(Annotation.class);
        Helloworld helloworld2 = context1.getBean("hello2", Helloworld.class);
        helloworld2.getMessage();


        //Второе задание 1ый раз//
        Miner miner = new Miner();
        miner.test("Hello","Cha256");
        miner.test("World","Ceazer");
        miner.test("World","sout");
        //Второе задание 2ой раз//

    }
}