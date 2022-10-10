package com.service;

import com.dao.HomeDao;
import com.model.Video;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class HomeService {

    private final HomeDao homeDao ;

     public static int videoInsert(Video video) {
        HomeDao.videoInsert(video);
         return 0;
     }
}
