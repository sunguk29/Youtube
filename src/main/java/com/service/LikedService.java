package com.service;


import com.dao.LikedDao;
import com.model.Liked;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class LikedService {

    private final LikedDao likedDao ;

//    public int insertVideo(Video video) {
//        homeDao.insertVideo(video);
//        return video.getNo();
//
//    }


    public int insertLikes(Liked liked) {

        return likedDao.insertLikes(liked);

    }
}
