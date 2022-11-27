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





    public Review selectReviewNo(int comment) {
        return playPageDao.selectReviewNo(comment);
    }

    public ArrayList<Review> selectCommentList(Review review) {
        return playPageDao.selectCommentList(review);
    }
}
