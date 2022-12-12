package com.ISOUR.dto;

import lombok.Getter;
import lombok.Setter;

import java.time.LocalDateTime;

@Getter
@Setter
public class GChatDTO {
    private Long chatNum;
    private String content;
//    private String id;
    private String nickname;
    private LocalDateTime chatTime;
}
