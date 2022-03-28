package com.example.demo;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class Miner {
    AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext(test2.class);

    public void test(String a, String b) {
        Algoritm algoritm = context.getBean(b, Algoritm.class);
        System.out.println(algoritm.shifr(a));
    }
}
