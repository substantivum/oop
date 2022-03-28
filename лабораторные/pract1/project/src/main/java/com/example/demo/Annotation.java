package com.example.demo;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

    @Configuration
    public class Annotation{
        @Bean
        public Helloworld hello2(){
            return new Helloworld();
    }
}
