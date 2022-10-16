package com.dao;

import com.mapper.HomeMapper;
import com.model.Video;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class HomeDao {

    private HomeMapper mapper;
    private HomeDao(SqlSession sqlSession){
        this.mapper = sqlSession.getMapper(HomeMapper.class);
    }

    public void insertVideo(Video video) {
        mapper.insertVideo(video);
    }
}
