package com.service;

import com.dao.HomeDao;
import com.dao.PlayPageDao;
import com.model.Video;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
@RequiredArgsConstructor
public class PlayPageService {

    private final PlayPageDao playPageDao;

    public Video selectVideo(Video video) {
        return playPageDao.selectVideo(video);
    }
}
