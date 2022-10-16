package com.mapper;

import com.model.Video;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;


public interface HomeMapper {

    void insertVideo(Video video);

}
