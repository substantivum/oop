package com.example.demo;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;

@Component("Cha256")
public class Cha256 implements Algoritm {
    @Override
    public String shifr(String el){
        return "Cha256" + el;
    }
}