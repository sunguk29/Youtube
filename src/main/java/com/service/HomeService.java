package com.service;

import com.dao.HomeDao;
import com.model.Video;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
@RequiredArgsConstructor
public class HomeService {

    private final HomeDao homeDao ;

    public int insertVideo(Video video) {
        homeDao.insertVideo(video);
        return video.getNo();

    }


    public ArrayList<Video> selectVideoList(Video video) {
        return homeDao.selectVideoList(video);

    }

    public ArrayList<Video> selectInfinityVideoList(Video video, int last_no) {
        return homeDao.selectInfinityVideoList(video, last_no);
    }

    public ArrayList<Video> searchWord(String word) {
        return homeDao.searchWord(word);
    }

}
