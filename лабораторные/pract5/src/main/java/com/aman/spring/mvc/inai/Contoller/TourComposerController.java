package com.aman.spring.mvc.inai.Contoller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/tourComposer")
public class TourComposerController {

    @RequestMapping("/menu-view")
    public String showMenu(){
        return "menu-view";
    }

}
