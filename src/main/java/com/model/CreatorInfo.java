package com.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;
import lombok.ToString;
import org.joda.time.DateTime;

@RequiredArgsConstructor
@Data
@AllArgsConstructor
@JsonIgnoreProperties
@ToString(callSuper = true)
public class CreatorInfo {
    private int no;
    private User userNo;
    private int views;
    private String description;
    private String links;
    private String business;
    private String location;
    private String profileImage;
    private String bannerImage;
    private int subscribes;


}
