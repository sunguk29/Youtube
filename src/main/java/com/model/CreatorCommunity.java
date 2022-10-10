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
public class CreatorCommunity {
    private int no;
    private User userNo;
    private String content;
    private DateTime regDatetime;
    private DateTime updateDatetime;

}
