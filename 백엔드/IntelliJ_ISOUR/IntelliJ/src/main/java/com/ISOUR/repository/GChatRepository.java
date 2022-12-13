package com.ISOUR.repository;

import com.ISOUR.entity.GChat;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface GChatRepository extends JpaRepository<GChat, Long> {
    List<GChat> findAll();
}
