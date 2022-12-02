package com.ISOUR.dto;

import com.ISOUR.Service.ChatService;
import lombok.Builder;
import lombok.Getter;
import org.springframework.web.socket.WebSocketSession;

import java.util.HashSet;
import java.util.Set;

@Getter
public class ChatRoom {
    private String roomId;
    private String name;
    // Set 은 집합이란 개념
    private Set<WebSocketSession> sessions = new HashSet<>();
    @Builder
    public ChatRoom(String roomId, String name) {
        this.roomId = roomId;
        this.name = name;
    }
    public void handleActions(WebSocketSession session, ChatDTO chatMessage, ChatService chatService) {
        if(chatMessage.getType().equals(ChatDTO.MessageType.ENTER)) {
            sessions.add(session);
//            chatMessage.setMessage(chatMessage.getSender() + "님이 입장했습니다.");
        }
        sendMessage(chatMessage, chatService);
    }
    private <T> void sendMessage(T message, ChatService chatService) {
        // forEach() : 스트림의 요소를 하나씩 참조해서 람다식으로 처리하는 반복자
        sessions.parallelStream()
                .forEach(session -> chatService.sendMessage(session, message));
    }
}
