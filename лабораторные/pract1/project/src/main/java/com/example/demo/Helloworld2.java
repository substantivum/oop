package com.example.demo;

import org.springframework.context.annotation.Bean;

public class Helloworld2 {
    @Bean
    public Helloworld3 myHelloClass() {
        return new Helloworld3("Hello another world");
    }

    @Bean
    public Helloworld3 myChangedHello() {
        return  new Helloworld3("Hello another world");
    }

    public void getMessage() {
    }
}
