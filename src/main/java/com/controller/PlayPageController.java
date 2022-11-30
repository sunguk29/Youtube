package com.controller;

import com.google.gson.Gson;
import com.model.Review;
import com.model.Video;
import com.model.common.MFile;
import com.service.HomeService;
import com.service.PlayPageService;
import com.util.Time;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Array;
import java.text.ParseException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Slf4j
@RequiredArgsConstructor
@Controller
public class PlayPageController {

    private final PlayPageService playPageService;
    private final HomeService homeService;

    @GetMapping("/playpage.do")
    public ModelAndView playpage(ModelAndView mav, HttpServletRequest request, Video video, Review review) throws ParseException {

        Time times = new Time();

        String num = request.getParameter("no");
        int no = Integer.parseInt(num);
        review.setVideo_no(no);

        Video playVideo = playPageService.selectVideo(video);
        int updateViews = playPageService.updateViews(no);

        ArrayList<Video> videoList = homeService.selectVideoList(video);

        playVideo.setVideo_mfile(new Gson().fromJson(playVideo.getVideoFile(), MFile.class));

        int hour, minute, second;

        for(Video tmp:videoList){
            tmp.setThumbnail_mfile(new Gson().fromJson(tmp.getThumbnail(), MFile.class));
            tmp.setVideo_mfile(new Gson().fromJson(tmp.getVideoFile(), MFile.class));

            LocalDateTime localDateTime = tmp.getReg_datetime();
            String regDateTime = times.TimeFormatChatTimeString(localDateTime);
            tmp.setCompare_reg_datetime(regDateTime);
            try {

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

            } catch (NumberFormatException e) {
                e.printStackTrace();
            }

        }

        ArrayList<Review> commentList = playPageService.selectCommentList(review);

        for(Review tmp: commentList){
            tmp.setInsert_reg_datetime(times.TimeFormatChatTimeString(tmp.getReg_datetime()));
        }

        ArrayList<Review> moreCommentList = playPageService.selectMoreCommentList(review);

        for(Review tmp: moreCommentList){
            tmp.setInsert_reg_datetime(times.TimeFormatChatTimeString(tmp.getReg_datetime()));
        }

        int commentCnt = playPageService.selectCommentCnt(review);
        int moreCommentCnt = playPageService.selectMoreCommentCnt(review);


        log.info("videoList", videoList);

        mav.addObject("videoList", videoList);
        mav.addObject("playVideo", playVideo);
        mav.addObject("video", video);
        mav.addObject("review", review);
        mav.addObject("commentList", commentList);
        mav.addObject("moreCommentList", moreCommentList);
        mav.addObject("commentCnt", commentCnt);
        mav.addObject("moreCommentCnt", moreCommentCnt);

        mav.setViewName("playpage");
        return mav;
    }

}
