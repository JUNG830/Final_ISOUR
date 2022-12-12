package com.ISOUR.service;

import com.ISOUR.dto.GChatDTO;
import com.ISOUR.entity.ChatList;
import com.ISOUR.entity.GChat;
import com.ISOUR.repository.ChatListRepository;
import com.ISOUR.repository.GChatRepository;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.persistence.OrderBy;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import static java.time.LocalDateTime.*;

@Service
@Slf4j
public class GChatService {
    private final GChatRepository GChatRepository;

    public GChatService(GChatRepository GChatRepository) {
        this.GChatRepository = GChatRepository;
    }
    @Autowired
    private ChatListRepository chatListRepository;

    public boolean sendPost(String content, String nickname) {
        log.warn("★★★★★★★★★채팅 보내기 서비스★★★★★★★★★");
        log.warn("내용(content) : " + content);

        GChat GChat = new GChat();
        GChat.setContent(content);
        GChat.setChatTime(LocalDateTime.now().withNano(0));
        GChat.setNickname(nickname);
//        GChat.setId(id);

        GChat result = GChatRepository.save(GChat);
        log.warn(result.toString());

        return true;
    }

    public List<GChatDTO> getChatList() {
        log.warn("★★★★★★★★★전체 회원 조회 서비스★★★★★★★★★");

        List<GChatDTO> GChatDTOS = new ArrayList<>();
        List<GChat> GChatInfoList = GChatRepository.findAll();
        for(GChat e : GChatInfoList) {
            GChatDTO GChatDTO = new GChatDTO();
//            GChatDTO.setId(e.getId());
            GChatDTO.setNickname(e.getNickname());
            GChatDTO.setChatNum(e.getChatNum());
            GChatDTO.setContent(e.getContent());
            GChatDTO.setChatTime(e.getChatTime());
            GChatDTOS.add(GChatDTO);
        }
        return GChatDTOS;
    }

    // 채팅 친구 추가
    public Boolean chatAddMember(String userId, String chatMemberId) {
        log.warn("★★★★★★★★★ 채팅 친구 추가 서비스★★★★★★★★★");
        log.warn("내 아이디 : " + userId);
        log.warn("친구 아이디 : " + chatMemberId);
        ChatList chatList = new ChatList();
        chatList.setUserId(userId);
        chatList.setChatMemberId(chatMemberId);
        chatList.setFirstChatTime(now().withNano(0));
        ChatList result = chatListRepository.save(chatList);
        log.warn(result.toString());

        return true;
    }
}
