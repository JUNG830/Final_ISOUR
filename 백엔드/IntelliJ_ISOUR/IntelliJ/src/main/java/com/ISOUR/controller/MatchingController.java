package com.ISOUR.controller;

import com.ISOUR.service.MatchingService;
import com.ISOUR.dto.MatDTO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

@CrossOrigin(origins = "http://localhost:3000/")
@RestController
@Slf4j
@RequiredArgsConstructor
public class MatchingController {
    private final com.ISOUR.service.MatchingService matchingService;

    /* 매칭 회원 조회 */
    @PostMapping("/Matching")
    public ResponseEntity<List<MatDTO>> Mat_MemberListPage(@RequestBody Map<String, String> PageData) {
        log.warn("★★★★★★★★★매칭 회원 조회 Controller★★★★★★★★★");
        String id = PageData.get("id");
        int pageNum = Integer.parseInt(PageData.get("pageNum"));
        int id_num = Integer.parseInt(PageData.get("localId_num"));
        log.warn("★★★★★★★★★ 페이지넘버 : " + pageNum);
        List<MatDTO> list = matchingService.Mat_MemberListPage(id, id_num, pageNum);
        log.warn("★★ 매칭 회원 정보 : " + list);
        return new ResponseEntity<>(list, HttpStatus.OK);
    }

}
