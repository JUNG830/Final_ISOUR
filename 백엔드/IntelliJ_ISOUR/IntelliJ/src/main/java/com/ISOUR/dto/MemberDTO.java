package com.ISOUR.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MemberDTO {
    private Long idNum;
    private String id;
    private String pwd;
    private String name;
    private String nickname;
    private String email;
    private String birth;
    private String gender;
    private String region1;
    private String region2;
    private String mbti;
    private String introduce;
    private String face;
}
