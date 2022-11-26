package com.restcontroller;

import com.aws.file.FileUploadUtility;
import com.google.gson.Gson;
import com.model.Review;
import com.model.Video;
import com.model.common.MFile;
import com.response.DefaultRes;
import com.response.Message;
import com.service.HomeService;
import com.service.PlayPageService;
import com.util.Time;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import net.bramp.ffmpeg.FFprobe;
import net.bramp.ffmpeg.probe.FFmpegFormat;
import net.bramp.ffmpeg.probe.FFmpegProbeResult;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Map;

@Slf4j
@RestController
@RequiredArgsConstructor
public class PlayPageRestController {

    private final PlayPageService playPageService;

    Message message = new Message();
    Gson gson = new Gson();

    @PostMapping("/commentAdd")
    public ResponseEntity commentAdd(@RequestBody Review review){

        int comment = playPageService.insertComment(review);
        Review reviewNo = playPageService.selectReviewNo(comment);

        Review review1 = new Review(); // comment 번호갖고오는 용도(리뷰 객체 갖고와야함)

        review1.setNo(comment);
        review1.setContent(review.getContent());

        message.put("review", review1);

        return new ResponseEntity(DefaultRes.res(HttpStatus.OK, message), HttpStatus.OK);
    }
}