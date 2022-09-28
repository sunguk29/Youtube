package com.controller;

import com.service.HomeService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@RequiredArgsConstructor
@Controller
public class HomeController {
    private final HomeService homeService;

    @GetMapping("/home")
    public ModelAndView youtubeHome(ModelAndView mav, HttpServletRequest request){

        mav.setViewName("home");
        return mav;
    }





}
