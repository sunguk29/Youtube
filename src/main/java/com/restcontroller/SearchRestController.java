package com.restcontroller;

import com.aws.file.FileUploadUtility;
import com.google.gson.Gson;
import com.model.Video;
import com.model.common.MFile;
import com.response.DefaultRes;
import com.response.Message;
import com.service.HomeService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import net.bramp.ffmpeg.FFprobe;
import net.bramp.ffmpeg.probe.FFmpegFormat;
import net.bramp.ffmpeg.probe.FFmpegProbeResult;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.net.URI;
import java.util.ArrayList;
import java.util.Map;

@Slf4j
@RestController
@RequiredArgsConstructor
public class SearchRestController {

    private final HomeService homeService;
    private final FileUploadUtility fileUploadUtility;
    private final HomeRestController homeRestController;


    public String word;


//    @RequestMapping(value = "/getSearch", method = RequestMethod.GET)
//    public ResponseEntity<String> getSearch(HttpServletRequest request, Video video )throws Exception{
//
////        last_no = 19;
//
//        String word =  homeRestController.word;
//
//        log.info("mmmmmmmmmmmmmmmmmm" + word);
//
//        ArrayList<Video> videoList = homeService.searchWord(word);
//
//
//        int hour, minute, second;
//
////        log.info("hhhhhhhhhhhhhh  " + String.valueOf(last_no));
//
//
//        Message message = new Message();
//
//        for(Video tmp:videoList){
//            tmp.setThumbnail_mfile(new Gson().fromJson(tmp.getThumbnail(), MFile.class));
//            tmp.setVideo_mfile(new Gson().fromJson(tmp.getVideoFile(), MFile.class));
//            String time = tmp.getTime();
//            int videoTime = Integer.parseInt(time);
//
//            second = videoTime % 60;
//            minute = videoTime / 60;
//            hour = minute / 60;
//            int realMinute = minute % 60;
//
//            String dbMinute = Integer.toString(realMinute);
//            String dbHour = Integer.toString(hour);
//            String dbSecond = Integer.toString(second);
//
//            if (realMinute < 10) {
//                dbMinute = "0" + realMinute;
//            }
//
//            if (hour < 10) {
//                dbHour = "0" + hour;
//            }
//
//            if (second < 10) {
//                dbSecond = "0" + second;
//            }
//
//            String videoTimed;
//
//            if (dbHour.equals("00")) {
//                videoTimed = dbMinute + ":" + dbSecond;
//            } else {
//                videoTimed = dbHour + ":" + dbMinute + ":" + dbSecond;
//            }
//            tmp.setTime(videoTimed);
//        }
//
//        log.info("hhhhhhhhhhhhhhhhhhhhhhhhhhh         " + videoList.toString());
//
//
//
//
//        message.put("videoList", videoList);
////        mav.setViewName("search");
//
////        mav.addObject("videoList", videoList);
////
////        mav.setViewName("main");
////        log.info("NNNNNNNNNNNNNNNNNNNN   " + String.valueOf(last_no));
//
//
//        return new ResponseEntity(DefaultRes.res(HttpStatus.OK, message), HttpStatus.OK);
////        return mav;
//    }



}