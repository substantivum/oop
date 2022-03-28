package com.example.demo;

public class Helloworld {
    private String message = " hi";
    String a;
    public String greet(String target){
        return "Hello," + target;
    }

public void setMessage(String message){
    this.message = message;
}
public void getMessage(){
    System.out.println("Сообщение:" + message);
}

void displayInfo(){
    System.out.printf("Сообщение: %s \n", a);
}

}
