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
public class CreatorPlaylistInfo {
    private int no;
    private int userNo;
    private int videoCount;
    private String title;
    private DateTime regDatetime;
    private DateTime updateDatetime;

}
