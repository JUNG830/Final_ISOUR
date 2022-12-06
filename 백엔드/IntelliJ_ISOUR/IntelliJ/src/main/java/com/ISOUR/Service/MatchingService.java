package com.ISOUR.service;

import com.ISOUR.dto.MatDTO;
import com.ISOUR.repository.*;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.qlrm.mapper.JpaResultMapper;
import org.springframework.stereotype.Service;

import javax.persistence.*;
import javax.transaction.Transactional;
import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
@Transactional
public class MatchingService {

    private final MatchingRepository matchingRepository;
    private final MemberRepository memberRepository;


    @PersistenceContext
    EntityManager em;
    // 오라클 버전
//    public List<MatDTO> Mat_MemberListPage(String id, int num) {
//        log.warn("★★★★★★★★★매칭 회원 조회 서비스★★★★★★★★★");
//        log.warn("★★★★★★★★ 아이디 : " + id);
//        log.warn("★★★★★★★★ 페이지넘버 : " + num);
//        String sql2 = "SELECT PG2.*\n" +
//                "        FROM ( SELECT PG1.*, ROWNUM AS R_NUM\n" +
//                "                FROM (\tSELECT\n" +
//                "                        im.ID_NUM AS user_id_num,\n" +
//                "                        im.NICK_NAME AS user_nick,\n" +
//                "                        im.MBTI AS user_mbti,\n" +
//                "                        im.INTRODUCE AS user_introduce,\n" +
//                "                        im2.ID_NUM AS mat_id_num,\n" +
//                "                        im2.NICK_NAME AS mat_nick,\n" +
//                "                        im2.MBTI AS mat_mbti,\n" +
//                "                        im2.INTRODUCE AS mat_introduce,\n" +
//                "                        m.ORDER_MBTI AS order_mbti\n" +
//                "                        FROM I_MEMBER im\n" +
//                "                        INNER JOIN MBTI m\n" +
//                "                        ON im.MBTI = m.USER_MBTI\n" +
//                "                        INNER JOIN I_MEMBER im2\n" +
//                "                        ON im2.MBTI = m.MAT_MBTI\n" +
//                "                        WHERE im.ID = ? \n" +
//                "                        ORDER BY m.ORDER_MBTI) PG1\n" +
//                "                WHERE ROWNUM <= /*count*/2 * /*startNum*/?) PG2\n" +
//                "        WHERE R_NUM > /*count*/2 * (/*startNum*/? - 1)\n" +
//                "        AND ROWNUM <= /*count*/2";
//
//        JpaResultMapper result2 = new JpaResultMapper();
//        Query query2 = em.createNativeQuery(sql2)
//                .setParameter(1, id)
//                .setParameter(2, num)
//                .setParameter(3, num);
//        List<MatDTO> list = result2.list(query2, MatDTO.class);
////        log.warn("매칭 결과 : " + list);
//        return list;
//    }

    // MySql 버전
    public List<MatDTO> Mat_MemberListPage(String id, int id_num, int num) {
        log.warn("★★★★★★★★★매칭 회원 조회 서비스★★★★★★★★★");
        log.warn("★★★★★★★★ 아이디 : " + id);
        log.warn("★★★★★★★★ 페이지넘버 : " + num);
        log.warn("★★★★★★★★ 아이디넘 : " + id_num);
        
        String sql2 = "SELECT PG2.*\n" +
                "FROM ( SELECT PG1.*, @ROWNUM \\:= @ROWNUM + 1 as R_NUM\n" +
                "       FROM (SELECT\n" +
                "\t          \t\tim.ID_NUM AS user_id_num,\n" +
                "\t          \t\tim.ID AS user_id,\n" +
                "\t          \t\tim.FACE AS user_face,\n" +
                "\t                im.NICKNAME AS user_nick,\n" +
                "\t                im.MBTI AS user_mbti,\n" +
                "\t                im.INTRODUCE AS user_introduce,\n" +
                "\t                im2.ID_NUM AS mat_id_num,\n" +
                "\t                im2.ID AS mat_id,\n" +
                "\t                im2.NICKNAME AS mat_nick,\n" +
                "\t                im2.FACE AS mat_face,\n" +
                "\t                im2.MBTI AS mat_mbti,\n" +
                "\t                im2.INTRODUCE AS mat_introduce,\n" +
                "\t                m.ORDER_MBTI AS order_mbti\n" +
                "                FROM I_MEMBER im\n" +
                "\t                INNER JOIN MBTI m\n" +
                "\t                ON im.MBTI = m.USER_MBTI\n" +
                "\t                INNER JOIN I_MEMBER im2\n" +
                "\t                ON im2.MBTI = m.MAT_MBTI\n" +
                "                WHERE im.ID = ? \n" +
                "                \tand m.ORDER_MBTI <= 1 \n" +
                "                ORDER BY rand(?)) PG1\n" +
                "        WHERE (@rownum \\:= 0) = 0 <= /*count*/2 * /*startNum*/?) PG2\n" +
                "WHERE R_NUM > /*count*/2 * (/*startNum*/? - 1)                     \n" +
                "limit /*count*/2";

        JpaResultMapper result2 = new JpaResultMapper();
        Query query2 = em.createNativeQuery(sql2)
                .setParameter(1, id)
                .setParameter(2, id_num)
                .setParameter(3, num)
                .setParameter(4, num);
        List<MatDTO> list = result2.list(query2, MatDTO.class);
        log.warn("매칭 결과 : " + list);
        return list;
    }

    /* 좋아요 조회 서비스 */
//    public MemberDTO Mat_MyInfo(String id) {
//        log.warn("★★★★★★★★★ 매칭 내 정보 조회 서비스★★★★★★★★★");
//        log.warn("조회할 아이디(id) : " + id);
//        MemberInfo memberInfo = memberRepository.findById(id);
//        MemberDTO memberDTO = new MemberDTO();
//        memberDTO.setId_num(memberInfo.getId_num());
//        memberDTO.setNickName(memberInfo.getNickName());
//        memberDTO.setMbti(memberInfo.getMbti());
//        memberDTO.setIntroduce(memberInfo.getIntroduce());
//
//        return memberDTO;
//    }

}


