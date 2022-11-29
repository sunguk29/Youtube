package com.dao;

import com.mapper.HomeMapper;
import com.mapper.PlayPageMapper;
import com.model.Review;
import com.model.Video;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

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


    public Review selectReviewNo(int comment) {
        return mapper.selectReviewNo(comment);
    }

    public ArrayList<Review> selectCommentList(Review review) {
        return mapper.selectCommentList(review);
    }

    public ArrayList<Review> selectMoreCommentList(Review review) {
        return mapper.selectMoreCommentList(review);
    }

    public int selectMoreCommentCnt(Review review) {
        return mapper.selectMoreCommentCnt(review);
    }

    public int selectCommentCnt(Review review) {
        return mapper.selectCommentCnt(review);
    }


    public int updateViews(int no) {
        return mapper.updateViews(no);
    }
}
