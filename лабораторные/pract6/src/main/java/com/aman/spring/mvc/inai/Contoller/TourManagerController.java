package com.aman.spring.mvc.inai.Contoller;

import com.aman.spring.mvc.inai.POJO.Client;
import com.aman.spring.mvc.inai.POJO.Tour;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/tourManager")
public class TourManagerController {

    @RequestMapping("/menu-view")
    public String showMenu(){
        return "menu-view";
    }

    @RequestMapping("/tour-information-view")
    public String showTourInformation(Model model){
        model.addAttribute("tour",new Tour());
        return "tourManager/tour-information-view";
    }

    @RequestMapping("/get-client-list")
    public String getClientList(Model model){
        model.addAttribute("client",new Client());
        return "tourManager/get-client-list";
    }
}
