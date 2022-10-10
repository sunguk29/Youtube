package com.dao;

import com.mapper.HomeMapper;
import com.model.Video;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

@Repository
@RequiredArgsConstructor
public class HomeDao {

    public static void videoInsert(Video video) {
        HomeMapper.videoInsert(video);
    }
}
