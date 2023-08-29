package com.example.heckathon.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MbtiController {

    @GetMapping("/")
    public String showQuestions() {
        return "questions";
    }

    //@PostMapping("/result")
   /* public String showResult(@RequestParam String[] answers, Model model) {
        // Calculate MBTI type based on answers
        String mbtiType = calculateMbtiType(answers);
        model.addAttribute("mbtiType", mbtiType);
        return "result";
    }*/

//    private String calculateMbtiType(String[] answers) {
//        // Implement your MBTI type calculation logic here based on user's answers
//        // This is a simplified example; you can use a more sophisticated algorithm
//        // to map answers to MBTI types.
//        // E.g., Counting E's and I's, N's and S's, etc.
//        // Return the calculated MBTI type as a string.
//        return;
//    }
}
