package com.service;

import com.dao.HomeDao;
import com.model.Video;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class HomeService {

    private final HomeDao homeDao ;

     int videoInsert(Video video) {

    }
}
