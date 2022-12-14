package com.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;
import lombok.ToString;
import org.joda.time.DateTime;

import java.time.LocalDateTime;
import java.util.ArrayList;

@RequiredArgsConstructor
@Data
@AllArgsConstructor
@JsonIgnoreProperties
@ToString(callSuper = true)
public class Review {
    private int no;
    private String type;
    private int user_no;
    private int video_no;
    private String content;
    private LocalDateTime reg_datetime;
    private DateTime update_datetime;
    private int review_no;
    private String insert_reg_datetime;
    private ArrayList<Review> rereviews;

}
