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
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;

@Slf4j
@RestController
@RequiredArgsConstructor
public class HomeRestController {

    private final HomeService homeService;
    private final FileUploadUtility fileUploadUtility;

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

//    public ResponseEntity JsonToObject(HttpServletRequest request) {
//
//
//
//
//
//        return new ResponseEntity(DefaultRes.res(HttpStatus.OK, message), HttpStatus.OK);
//
//    }


}
