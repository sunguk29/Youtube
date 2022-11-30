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
import java.text.ParseException;
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
    public ResponseEntity commentAdd(@RequestBody Review review) throws ParseException {

        int comment = playPageService.insertComment(review);
        Review reviewNo = playPageService.selectReviewNo(review);

        Time time = new Time();
        reviewNo.setInsert_reg_datetime(time.TimeFormatChatTimeString(reviewNo.getReg_datetime()));
        message.put("review", reviewNo);

        log.info(String.valueOf(reviewNo));

        return new ResponseEntity(DefaultRes.res(HttpStatus.OK, message), HttpStatus.OK);
    }
}