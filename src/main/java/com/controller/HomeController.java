package com.controller;

import com.google.gson.Gson;
import com.model.Video;
import com.model.common.MFile;
import com.service.HomeService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
@Slf4j
@RequiredArgsConstructor
@Controller
public class HomeController {
    private final HomeService homeService;

    @GetMapping("/")
    public ModelAndView youtubeHome(ModelAndView mav, HttpServletRequest request, Video video){

        Gson gson = new Gson();


        ArrayList<Video> videoList = homeService.selectVideoList(video);


        for(Video tmp:videoList){
            tmp.setThumbnail_mfile(new Gson().fromJson(tmp.getThumbnail(), MFile.class));
            tmp.setVideo_mfile(new Gson().fromJson(tmp.getVideoFile(), MFile.class));
            log.info(tmp.toString());
        }


        mav.addObject("videoList", videoList);
        mav.addObject("video", video);


        mav.setViewName("main");
        return mav;
    }





}
