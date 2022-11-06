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

@Slf4j
@RequiredArgsConstructor
@Controller
public class HomeController {
    private final HomeService homeService;

    @GetMapping("/")
    public ModelAndView youtubeHome(ModelAndView mav, HttpServletRequest request, Video video){

        Gson gson = new Gson();

        ArrayList<Video> videoList = homeService.selectVideoList(video);

        int hour, minute, second;

        for(Video tmp:videoList){
            tmp.setThumbnail_mfile(new Gson().fromJson(tmp.getThumbnail(), MFile.class));
            tmp.setVideo_mfile(new Gson().fromJson(tmp.getVideoFile(), MFile.class));
            String time = tmp.getTime();
            int videoTime = Integer.parseInt(time);

            second = videoTime % 60;
            minute = videoTime / 60;
            hour = minute / 60;
            int realMinute = minute % 60;

            String dbMinute = Integer.toString(realMinute);
            String dbHour = Integer.toString(hour);
            String dbSecond = Integer.toString(second);

            if(realMinute < 10) {
                dbMinute = "0" + realMinute;
            }

            if(hour < 10){
                dbHour = "0" + hour;
            }

            if(second < 10){
                dbSecond = "0" + second;
            }

            String videoTimed;

            if(dbHour.equals("00")){
                 videoTimed = dbMinute + ":" + dbSecond;
            } else {
                 videoTimed = dbHour + ":" + dbMinute + ":" + dbSecond;
            }
            tmp.setTime(videoTimed);
        }

        mav.addObject("videoList", videoList);
        mav.addObject("video", video);

        mav.setViewName("main");
        return mav;
    }





}
