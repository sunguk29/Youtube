package com.dao;

import com.mapper.HomeMapper;
import com.mapper.PlayPageMapper;
import com.model.Review;
import com.model.Video;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public class PlayPageDao {

    private PlayPageMapper mapper;
    private PlayPageDao(SqlSession sqlSession){
        this.mapper = sqlSession.getMapper(PlayPageMapper.class);
    }

    public Video selectVideo(Video video) {
        return mapper.selectVideo(video);
    }


    public int insertComment(Review review) {
        return mapper.insertComment(review);
    }
}
