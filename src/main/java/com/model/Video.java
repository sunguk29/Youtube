package com.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;
import lombok.ToString;
import org.joda.time.DateTime;
import org.springframework.web.multipart.MultipartFile;

@RequiredArgsConstructor
@Data
@AllArgsConstructor
@JsonIgnoreProperties
@ToString(callSuper = true)
public class Video {
    private int no;
    private String type;
    private int userNo;
    private String thumbnail;
    private int views;
    private DateTime reg_datetime;
    private DateTime update_datetime;
    private int likes;
    private int dislikes;
    private String title;
    private String description;
    private String time;
    private String videoFile;
    private MultipartFile thumbnail_file;
    private MultipartFile video_file;

}
