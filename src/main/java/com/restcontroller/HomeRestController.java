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
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Map;

@Slf4j
@RestController
@RequiredArgsConstructor
public class HomeRestController {

    private final HomeService homeService;
    private final FileUploadUtility fileUploadUtility;

    int last_no;

    @PostMapping("/test/main")
    public ResponseEntity videoInsert(HttpServletRequest request, Video video) {
        Gson gson = new Gson();
        Message message = new Message();
        //ArrayList<String> strings = new ArrayList<>();
        //strings.add("blahblah");
        MFile mFile = null;
        if (video.getVideo_file() == null || video.getVideo_file().getSize() == 0) {
            message.put("status", false);
        } else {
            mFile = fileUploadUtility.uploadFile(video.getVideo_file(), null);
            //GSON 변환
            String uploadVideo = gson.toJson(mFile);
            video.setVideoFile(uploadVideo);
        }

        if (video.getThumbnail_file() == null || video.getThumbnail_file().getSize()==0){
            message.put("status", false);
        } else {
            mFile = fileUploadUtility.uploadFile(video.getThumbnail_file(), null);
            String uploadThumbnail = gson.toJson(mFile);
            video.setThumbnail(uploadThumbnail);
        }
        message.put("status", true);
        int videoNum = homeService.insertVideo(video);
        log.info(String.valueOf(video));
        //message.put("strings", strings);
        return new ResponseEntity(DefaultRes.res(HttpStatus.OK, message), HttpStatus.OK);
    }

    @RequestMapping(value = "/testPreview", method = RequestMethod.POST)
    public ResponseEntity<String> uploadPreviewVideo( HttpServletRequest request, MultipartFile video_file)throws Exception{
        Message message = new Message();

        MFile file = fileUploadUtility.uploadFile(video_file, null);
        message.put("file", file);
        message.put("url", file.getUrl());


        return new ResponseEntity(DefaultRes.res(HttpStatus.OK, message), HttpStatus.OK);

    }

    @PostMapping(value = "/getLastNo")
    public ResponseEntity<String> getLastNo(HttpServletRequest request, @RequestBody Map<String, Object> params )throws Exception{

        last_no = Integer.parseInt(params.get("lastNo").toString()) ;

        log.info("ssssssssssssssssssssssssssssssssssssssssssss" + params.get("lastNo").toString());
        Message message = new Message();

        return new ResponseEntity(DefaultRes.res(HttpStatus.OK, message), HttpStatus.OK);
    }

    @RequestMapping(value = "/getinfinity", method = RequestMethod.GET)
    public ResponseEntity<String> getInfinity(HttpServletRequest request, Video video )throws Exception{

        last_no = 19;

        log.info("hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh" + String.valueOf(last_no));

        ArrayList<Video> videoList = homeService.selectInfinityVideoList(video, last_no);

        Message message = new Message();

        for(Video tmp:videoList){
            tmp.setThumbnail_mfile(new Gson().fromJson(tmp.getThumbnail(), MFile.class));
            tmp.setVideo_mfile(new Gson().fromJson(tmp.getVideoFile(), MFile.class));
            log.info(tmp.toString());
        }




        message.put("videoList", videoList);


//        mav.addObject("videoList", videoList);
//
//        mav.setViewName("main");
        log.info("NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN" + String.valueOf(last_no));

        return new ResponseEntity(DefaultRes.res(HttpStatus.OK, message), HttpStatus.OK);
    }




}
