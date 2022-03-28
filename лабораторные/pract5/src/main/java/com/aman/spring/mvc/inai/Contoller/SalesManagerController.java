package com.aman.spring.mvc.inai.Contoller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/salesManager")
public class SalesManagerController {

    @RequestMapping("/menu-view")
    public String showMenu(){
        return "menu-view";
    }

}
