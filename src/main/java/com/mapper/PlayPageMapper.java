package com.mapper;

import com.model.Review;
import com.model.Video;

import java.util.ArrayList;
import java.util.List;


public interface PlayPageMapper {

    Video selectVideo(Video video);

    int insertComment(Review review);

    Review selectReviewNo(int comment);

    ArrayList<Review> selectCommentList(Review review);
}
