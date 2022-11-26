package com.mapper;

import com.model.Review;
import com.model.Video;

import java.util.List;


public interface PlayPageMapper {

    Video selectVideo(Video video);

    int insertComment(Review review);

    List<Review> selectCommentList(Review review);

    Review selectReviewNo(int comment);
}
