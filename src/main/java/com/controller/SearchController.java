package com.controller;

import com.google.gson.Gson;
import com.model.Video;
import com.model.common.MFile;
import com.response.Message;
import com.service.HomeService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;
import  com.restcontroller.HomeRestController;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;

@Slf4j
@RequiredArgsConstructor
@Controller
public class SearchController {
    private final HomeService homeService;
    private final HomeRestController homeRestController;


    @GetMapping("/search.do")
    public ModelAndView youtubeSearch(ModelAndView mav, HttpServletRequest request, Video video){

        String word =  homeRestController.word;


        ArrayList<Video> videoList = homeService.searchWord(word);


        int hour, minute, second;

//        log.info("hhhhhhhhhhhhhh  " + String.valueOf(last_no));


//        Message message = new Message();

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

            if (realMinute < 10) {
                dbMinute = "0" + realMinute;
            }

            if (hour < 10) {
                dbHour = "0" + hour;
            }

            if (second < 10) {
                dbSecond = "0" + second;
            }

            String videoTimed;

            if (dbHour.equals("00")) {
                videoTimed = dbMinute + ":" + dbSecond;
            } else {
                videoTimed = dbHour + ":" + dbMinute + ":" + dbSecond;
            }
            tmp.setTime(videoTimed);
        }





//        message.put("videoList", videoList);
        mav.addObject("videoList", videoList);
        mav.addObject("video", video);
//        mav.setViewName("search");

//        mav.addObject("videoList", videoList);
//
//        mav.setViewName("main");
//        log.info("NNNNNNNNNNNNNNNNNNNN   " + String.valueOf(last_no));

        mav.setViewName("search");
        return mav;
    }







}
