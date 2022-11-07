package com.dao;

import com.mapper.HomeMapper;
import com.model.Video;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public class HomeDao {

    private HomeMapper mapper;
    private HomeDao(SqlSession sqlSession){
        this.mapper = sqlSession.getMapper(HomeMapper.class);
    }

    public void insertVideo(Video video) {
        mapper.insertVideo(video);
    }


    public ArrayList<Video> selectVideoList(Video video) {
        return mapper.selectVideoList(video);
    }

    public ArrayList<Video> selectInfinityVideoList(Video video, int last_no) {
        return mapper.selectInfinityVideoList(video, last_no);
    }

}
