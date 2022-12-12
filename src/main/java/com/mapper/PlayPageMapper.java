package com.mapper;

import com.model.Review;
import com.model.Video;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;
import java.util.List;


public interface PlayPageMapper {

    Video selectVideo(Video video);

    int insertComment(Review review);

    Review selectReviewNo(Review review);

    ArrayList<Review> selectCommentList(Review review);

    int selectMoreCommentCnt(Review review);

    int selectCommentCnt(Review review);

    int updateViews(int no);

    ArrayList<Review> selectMoreCommentList(@Param("no") int no,@Param("video_no") int video_no);

    int insertMoreComment(Review review);
}
