package com.mapper;

import com.model.Video;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;


public interface HomeMapper {

    void insertVideo(Video video);

    ArrayList<Video> selectVideoList(Video video);

    ArrayList<Video> selectInfinityVideoList(Video video, @Param("last_no") int last_no);

    ArrayList<Video> searchWord(@Param("word") String word);


}
