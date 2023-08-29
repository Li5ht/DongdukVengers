package com.example.heckathon.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ResultController {

    @GetMapping("/resultgame")
    public String showPage() {
        System.out.println("result controller start");
        return "firstresult";
    }


}
