package com.example.heckathon.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@WebServlet("/MBTIServlet")
public class MbtiController {

    @GetMapping("/")
    public String showQuestions() {
        return "questions";
    }

    @PostMapping("/result")
    public String showResult(@RequestParam String[] answers, Model model) {
        // Calculate MBTI type based on answers
        String mbtiType = calculateMbtiType(answers);
        model.addAttribute("mbtiType", mbtiType);
        return "result";
    }

    private String calculateMbtiType(String[] answers) {
        int[] scores = new int[4];

        // Loop through answers and calculate scores
        for (String answer : answers) {
            char[] answerChars = answer.toCharArray();
            for (int i = 0; i < answerChars.length; i++) {
                // For simplicity, assume 'a' and 'b' indicate opposing preferences
                // and calculate scores for each preference dimension
                if (answerChars[i] == 'a') {
                    scores[i]++;
                } else if (answerChars[i] == 'b') {
                    scores[i]--;
                }
            }
        }

        // Determine the MBTI type based on scores
        StringBuilder mbtiTypeBuilder = new StringBuilder();
        for (int score : scores) {
            if (score >= 2) {
                mbtiTypeBuilder.append("I");
            } else {
                mbtiTypeBuilder.append("E");
            }
        }
        for (int score : scores) {
            if (score >= 2) {
                mbtiTypeBuilder.append("N");
            } else {
                mbtiTypeBuilder.append("S");
            }
        }
        for (int score : scores) {
            if (score >= 2) {
                mbtiTypeBuilder.append("F");
            } else {
                mbtiTypeBuilder.append("T");
            }
        }
        for (int score : scores) {
            if (score >= 2) {
                mbtiTypeBuilder.append("P");
            } else {
                mbtiTypeBuilder.append("J");
            }
        }

        return mbtiTypeBuilder.toString();
    }
}
