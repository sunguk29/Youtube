package com.restcontroller;

import com.api.sns.kakao.KakaoInfo;
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
public class HomeRestController {

    private final HomeService homeService;
    private final FileUploadUtility fileUploadUtility;

    int last_no;
    public String word;

    @PostMapping("/test/main")

    public ResponseEntity videoInsert(HttpServletRequest request, Video video) {

        Gson gson = new Gson();
        Message message = new Message();
        //ArrayList<String> strings = new ArrayList<>();
        //strings.add("blahblah");
        MFile mFile = null;

        if (video.getThumbnail_file() == null || video.getThumbnail_file().getSize()==0){
            message.put("status", false);
        } else {
            mFile = fileUploadUtility.uploadFile(video.getThumbnail_file(), null);
            String uploadThumbnail = gson.toJson(mFile);
            video.setThumbnail(uploadThumbnail);
        }

        if (video.getVideo_file() == null || video.getVideo_file().getSize() == 0) {
            message.put("status", false);
        } else {
            mFile = fileUploadUtility.uploadFile(video.getVideo_file(), null);
            //GSON 변환
            String uploadVideo = gson.toJson(mFile);
            video.setVideoFile(uploadVideo);
        }

        message.put("status", true);

        String returnData = "0";

        try {
            FFprobe ffprobe = new FFprobe("C:/Users/user/ffmpeg-5.1.2-essentials_build/ffmpeg-5.1.2-essentials_build/bin/ffprobe.exe"); // window에 설치된  ffprobe.exe 경로
            log.info(mFile.getUrl());
            FFmpegProbeResult probeResult = ffprobe.probe(mFile.getUrl()); // 동영상 경로
            FFmpegFormat format = probeResult.getFormat();
            double second = format.duration; // 초단위
            int videoSecond = (int) Double.parseDouble(String.valueOf(second));
            Math.floor(videoSecond);

            returnData = videoSecond + "";
            System.out.println("second==" + videoSecond);

        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            System.out.println("@@ media_player_time end @@");
        }

        log.info(returnData);
        video.setTime(returnData);
        int videoNum = homeService.insertVideo(video);

        log.info(String.valueOf(video));
        //message.put("strings", strings);
        return new ResponseEntity(DefaultRes.res(HttpStatus.OK, message), HttpStatus.OK);
    }

    @RequestMapping(value = "/testPreview", method = RequestMethod.POST)
    public ResponseEntity<String> uploadPreviewVideo(ModelAndView mav, HttpServletRequest request, MultipartFile video_file)throws Exception{
        Message message = new Message();

        MFile file = fileUploadUtility.uploadFile(video_file, null);
        message.put("file", file);
        message.put("url", file.getUrl());

        mav.addObject("file", video_file);

        return new ResponseEntity(DefaultRes.res(HttpStatus.OK, message), HttpStatus.OK);

    }

    @PostMapping(value = "/getLastNo")
    public ResponseEntity<String> getLastNo(HttpServletRequest request, @RequestBody Map<String, Object> params )throws Exception{

        last_no = Integer.parseInt(params.get("lastNo").toString()) ;

//        log.info("sssssssssssssssssssss   " + params.get("lastNo").toString());
        Message message = new Message();

        return new ResponseEntity(DefaultRes.res(HttpStatus.OK, message), HttpStatus.OK);
    }

    @RequestMapping(value = "/getinfinity", method = RequestMethod.GET)
    public ResponseEntity<String> getInfinity(HttpServletRequest request, Video video )throws Exception{

//        last_no = 19;

        int hour, minute, second;

//        log.info("hhhhhhhhhhhhhh  " + String.valueOf(last_no));

        ArrayList<Video> videoList = homeService.selectInfinityVideoList(video, last_no);

        Message message = new Message();

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




        message.put("videoList", videoList);


//        mav.addObject("videoList", videoList);
//
//        mav.setViewName("main");
//        log.info("NNNNNNNNNNNNNNNNNNNN   " + String.valueOf(last_no));

        return new ResponseEntity(DefaultRes.res(HttpStatus.OK, message), HttpStatus.OK);
    }

    @PostMapping(value = "/postSearchWord")
    public ResponseEntity<String> postSearchWord(HttpServletRequest request, @RequestBody Map<String, Object> params)throws Exception{

        log.info("sssssssssssssssssssss   " + params.get("word").toString());

        word = params.get("word").toString();

        Message message = new Message();

        return new ResponseEntity(DefaultRes.res(HttpStatus.OK, message), HttpStatus.OK);
    }

//    @RequestMapping(value = "/getSearch", method = RequestMethod.GET)
//    public ResponseEntity<String> getSearch(HttpServletRequest request, Video video )throws Exception{
//
////        last_no = 19;
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