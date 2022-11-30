package com.mapper;

import com.model.Review;
import com.model.Video;

import java.util.ArrayList;
import java.util.List;


public interface PlayPageMapper {

    Video selectVideo(Video video);

    int insertComment(Review review);

    Review selectReviewNo(Review review);

    ArrayList<Review> selectCommentList(Review review);

    ArrayList<Review> selectMoreCommentList(Review review);

    int selectMoreCommentCnt(Review review);

    int selectCommentCnt(Review review);

    int updateViews(int no);
}
