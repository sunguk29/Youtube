package com.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.model.common.MFile;
import com.model.grant.GRANT_TYPE;
import com.model.jwt.RootUser;
import lombok.*;
import org.joda.time.DateTime;

@RequiredArgsConstructor
@Data
@AllArgsConstructor
@JsonIgnoreProperties
@ToString(callSuper = true)
public class User extends RootUser {
    private int no;
    private String type;
    private String name;
    private String password;
    private String email;
    private DateTime regDatetime;
    private DateTime updateDatetime;
    private GRANT_TYPE grant = GRANT_TYPE.USER;
    private String access_token = "setting the password";
    private MFile profile_img;

}
