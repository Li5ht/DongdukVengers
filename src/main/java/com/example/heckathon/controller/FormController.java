package com.example.heckathon.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class FormController {
    @GetMapping("/form")
    public String showPage() {
        System.out.println("form controller start");
        return "form";
    }

}
