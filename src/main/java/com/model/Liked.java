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
public class Liked {
    private int no;
    private String type;
    private CreatorCommunity creatorCommunityNo;
    private User userNo;
    private Video videoNo;

}
