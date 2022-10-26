package com.dao;

import com.mapper.AdvertiseMapper;
import com.mapper.LikedMapper;
import com.model.Advertise;
import com.model.Liked;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class LikedDao {

    private LikedMapper mapper;

    private LikedDao(SqlSession sqlSession){
        this.mapper = sqlSession.getMapper(LikedMapper.class);
    }

    public int insertLikes(Liked liked) {

        return mapper.insertLikes(liked);

    }
}
