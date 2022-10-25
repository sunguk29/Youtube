package com.mapper;

import com.model.Video;

import java.util.ArrayList;


public interface HomeMapper {

    void insertVideo(Video video);

    ArrayList<Video> selectVideoList(Video video);
}
