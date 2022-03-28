package com.example.demo;

import org.springframework.stereotype.Component;

@Component("Ceazer")
public class Ceazer implements Algoritm {
    @Override
    public String shifr(String el){
        return "Ceazer" + el;
    }
}
