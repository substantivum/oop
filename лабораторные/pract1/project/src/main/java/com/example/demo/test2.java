package com.example.demo;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;

@Configuration
@ComponentScan
public class test2 {
    @Bean
    public Algoritm sout(){
        return new Algoritm() {
            @Override
            public String shifr(String el) {
                return "" +el;
            }
        };
    }
}
