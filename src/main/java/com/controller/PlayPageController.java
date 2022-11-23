package com.controller;

import com.google.gson.Gson;
import com.model.Video;
import com.model.common.MFile;
import com.service.PlayPageService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.text.ParseException;

@Slf4j
@RequiredArgsConstructor
@Controller
public class PlayPageController {

    private final PlayPageService playPageService;

    @GetMapping("/playpage.do")
    public ModelAndView playpage(ModelAndView mav, HttpServletRequest request, Video video)  {

        Video playVideo = playPageService.selectVideo(video);
        playVideo.setVideo_mfile(new Gson().fromJson(playVideo.getVideoFile(), MFile.class));

        mav.addObject("playVideo", playVideo);
        mav.addObject("Video", video);

        mav.setViewName("playpage");
        return mav;
    }

}
