package com.controller;

import com.model.Liked;
import com.service.LikedService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@RequiredArgsConstructor
@Controller
public class LikedController {
    private final LikedService likedService;

    @GetMapping("/liked")
    public ModelAndView youtubeHome(ModelAndView mav, HttpServletRequest request, Liked liked){

        int likeCount = likedService.insertLikes(liked);

        mav.addObject("likeCount", likeCount);

        return mav;

    }





}
