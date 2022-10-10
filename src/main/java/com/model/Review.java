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
public class Review {
    private int no;
    private String type;
    private User userNo;
    private CreatorCommunity creatorCommunityNo;
    private Video videoNo;
    private String content;
    private DateTime regDatetime;
    private DateTime updateDatetime;
    private Review reviewNo;

}
