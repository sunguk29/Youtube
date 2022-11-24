package com.mapper;

import com.model.Review;
import com.model.Video;


public interface PlayPageMapper {

    Video selectVideo(Video video);

    int insertComment(Review review);
}
