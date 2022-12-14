package com.service;

import com.dao.HomeDao;
import com.dao.PlayPageDao;
import com.model.Review;
import com.model.Video;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
public class PlayPageService {

    private final PlayPageDao playPageDao;

    public Video selectVideo(Video video) {
        return playPageDao.selectVideo(video);
    }

    public int insertComment(Review review) {
         playPageDao.insertComment(review);
         return review.getNo();
    }





    public Review selectReviewNo(Review review) {
        return playPageDao.selectReviewNo(review);
    }

    public ArrayList<Review> selectCommentList(Review review) {
        return playPageDao.selectCommentList(review);
    }



    public int selectMoreCommentCnt(Review review) {
        return playPageDao.selectMoreCommentCnt(review);
    }

    public int selectCommentCnt(Review review) {
        return playPageDao.selectCommentCnt(review);
    }


    public int updateViews(int no) {
        return playPageDao.updateViews(no);
    }

    public ArrayList<Review> selectMoreCommentList(int no, int video_no) {
        return playPageDao.selectMoreCommentList(no,video_no);
    }

    public int insertMoreComment(Review review) {
        return playPageDao.insertMoreComment(review);
    }
}
