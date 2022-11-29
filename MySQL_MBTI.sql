SELECT * FROM I_MEMBER;
SELECT * FROM MBTI;

create table MBTI (
	USER_MBTI	varchar(30),
	MAT_MBTI	varchar(30),
	ORDER_MBTI	INTEGER
);

select * from MBTI;
-- --drop table MBTI;
-- --drop table I_MEMBER;

commit;

-- ********* 매칭 해주는 쿼리
SELECT 
	im.ID_NUM AS user_id_num,
	im.NICK_NAME AS user_nick, 
	im.MBTI AS user_mbti, 
	im.INTRODUCE AS user_introduce,
	im2.ID_NUM AS mat_id_num,
	im2.NICK_NAME AS mat_nick,
	im2.MBTI AS mat_mbti,
	im2.INTRODUCE AS mat_introduce,
	m.ORDER_MBTI AS order_mbti
FROM I_MEMBER im
	INNER JOIN MBTI m 
		ON im.MBTI = m.USER_MBTI
	INNER JOIN I_MEMBER im2 
		ON im2.MBTI = m.MAT_MBTI
WHERE im.ID = "test3"
ORDER BY m.ORDER_MBTI;

-- 페이지당 2개씩 보여주는 쿼리 
-- := 문법은 좌측에 있는 변수에 우측에 있는 값을 할당시키는 문법이다. 
SELECT PG2.*
FROM ( SELECT PG1.*, @ROWNUM := @ROWNUM + 1 as R_NUM
       FROM (SELECT
	          		im.ID_NUM AS user_id_num,
	                im.NICK_NAME AS user_nick,
	                im.MBTI AS user_mbti,
	                im.INTRODUCE AS user_introduce,
	                im2.ID_NUM AS mat_id_num,
	                im2.NICK_NAME AS mat_nick,
	                im2.MBTI AS mat_mbti,
	                im2.INTRODUCE AS mat_introduce,
	                m.ORDER_MBTI AS order_mbti
                FROM I_MEMBER im
	                INNER JOIN MBTI m
	                ON im.MBTI = m.USER_MBTI
	                INNER JOIN I_MEMBER im2
	                ON im2.MBTI = m.MAT_MBTI
                WHERE im.ID = "test17" 
                ORDER BY m.ORDER_MBTI) PG1
        WHERE (@rownum := 0) = 0 <= /*count*/2 * /*startNum*/1) PG2
WHERE R_NUM > /*count*/2 * (/*startNum*/1 - 1)                     
limit /*count*/2;

-- SELECT * 
-- FROM LIKE_MEMBER;


-- ********** INFP
INSERT INTO MBTI VALUES("INFP", "ENTJ", 1);
INSERT INTO MBTI VALUES("INFP", "ENTP", 2);
INSERT INTO MBTI VALUES("INFP", "INFP", 3);
INSERT INTO MBTI VALUES("INFP", "ENFP", 4);
INSERT INTO MBTI VALUES("INFP", "INFJ", 5);
INSERT INTO MBTI VALUES("INFP", "ENFJ", 6);
INSERT INTO MBTI VALUES("INFP", "INTJ", 7);
INSERT INTO MBTI VALUES("INFP", "INTP", 8);
INSERT INTO MBTI VALUES("INFP", "ISFP", 9);
INSERT INTO MBTI VALUES("INFP", "ESFP", 10);
INSERT INTO MBTI VALUES("INFP", "ISTP", 11);
INSERT INTO MBTI VALUES("INFP", "ESTP", 12);
INSERT INTO MBTI VALUES("INFP", "ISFJ", 13);
INSERT INTO MBTI VALUES("INFP", "ESFJ", 14);
INSERT INTO MBTI VALUES("INFP", "ISTJ", 15);
INSERT INTO MBTI VALUES("INFP", "ESTJ", 16);

-- ********** ENFP
INSERT INTO MBTI VALUES("ENFP", "INFP", 1);
INSERT INTO MBTI VALUES("ENFP", "INTJ", 2);
INSERT INTO MBTI VALUES("ENFP", "ENTJ", 3);
INSERT INTO MBTI VALUES("ENFP", "ENTP", 4);
INSERT INTO MBTI VALUES("ENFP", "ENFP", 5);
INSERT INTO MBTI VALUES("ENFP", "INFJ", 6);
INSERT INTO MBTI VALUES("ENFP", "ENFJ", 7);
INSERT INTO MBTI VALUES("ENFP", "INTP", 8);
INSERT INTO MBTI VALUES("ENFP", "ISFP", 9);
INSERT INTO MBTI VALUES("ENFP", "ESFP", 10);
INSERT INTO MBTI VALUES("ENFP", "ISTP", 11);
INSERT INTO MBTI VALUES("ENFP", "ESTP", 12);
INSERT INTO MBTI VALUES("ENFP", "ISFJ", 13);
INSERT INTO MBTI VALUES("ENFP", "ESFJ", 14);
INSERT INTO MBTI VALUES("ENFP", "ISTJ", 15);
INSERT INTO MBTI VALUES("ENFP", "ESTJ", 16);

-- ********** INFJ
INSERT INTO MBTI VALUES("INFJ", "ENFP", 1);
INSERT INTO MBTI VALUES("INFJ", "ENTP", 2);
INSERT INTO MBTI VALUES("INFJ", "INFP", 3);
INSERT INTO MBTI VALUES("INFJ", "INFJ", 4);
INSERT INTO MBTI VALUES("INFJ", "ENFJ", 5);
INSERT INTO MBTI VALUES("INFJ", "INTJ", 6);
INSERT INTO MBTI VALUES("INFJ", "ENTJ", 7);
INSERT INTO MBTI VALUES("INFJ", "INTP", 8);
INSERT INTO MBTI VALUES("INFJ", "ISFP", 9);
INSERT INTO MBTI VALUES("INFJ", "ESFP", 10);
INSERT INTO MBTI VALUES("INFJ", "ISTP", 11);
INSERT INTO MBTI VALUES("INFJ", "ESTP", 12);
INSERT INTO MBTI VALUES("INFJ", "ISFJ", 13);
INSERT INTO MBTI VALUES("INFJ", "ESFJ", 14);
INSERT INTO MBTI VALUES("INFJ", "ISTJ", 15);
INSERT INTO MBTI VALUES("INFJ", "ESTJ", 16);

-- ********** ENFJ
INSERT INTO MBTI VALUES("ENFJ", "INFP", 1);
INSERT INTO MBTI VALUES("ENFJ", "ISFP", 2);
INSERT INTO MBTI VALUES("ENFJ", "ENFP", 3);
INSERT INTO MBTI VALUES("ENFJ", "ENTP", 4);
INSERT INTO MBTI VALUES("ENFJ", "INFJ", 5);
INSERT INTO MBTI VALUES("ENFJ", "ENFJ", 6);
INSERT INTO MBTI VALUES("ENFJ", "INTJ", 7);
INSERT INTO MBTI VALUES("ENFJ", "ENTJ", 8);
INSERT INTO MBTI VALUES("ENFJ", "INTP", 9);
INSERT INTO MBTI VALUES("ENFJ", "ESFP", 10);
INSERT INTO MBTI VALUES("ENFJ", "ISTP", 11);
INSERT INTO MBTI VALUES("ENFJ", "ESTP", 12);
INSERT INTO MBTI VALUES("ENFJ", "ISFJ", 13);
INSERT INTO MBTI VALUES("ENFJ", "ESFJ", 14);
INSERT INTO MBTI VALUES("ENFJ", "ISTJ", 15);
INSERT INTO MBTI VALUES("ENFJ", "ESTJ", 16);

-- ********** INTJ
INSERT INTO MBTI VALUES("INTJ", "ENFP", 1);
INSERT INTO MBTI VALUES("INTJ", "ENTP", 2);
INSERT INTO MBTI VALUES("INTJ", "INFP", 3);
INSERT INTO MBTI VALUES("INTJ", "INFJ", 4);
INSERT INTO MBTI VALUES("INTJ", "ENFJ", 5);
INSERT INTO MBTI VALUES("INTJ", "INTJ", 6);
INSERT INTO MBTI VALUES("INTJ", "ENTJ", 7);
INSERT INTO MBTI VALUES("INTJ", "INTP", 8);
INSERT INTO MBTI VALUES("INTJ", "ISFP", 9);
INSERT INTO MBTI VALUES("INTJ", "ESFP", 10);
INSERT INTO MBTI VALUES("INTJ", "ISTP", 11);
INSERT INTO MBTI VALUES("INTJ", "ESTP", 12);
INSERT INTO MBTI VALUES("INTJ", "ISFJ", 13);
INSERT INTO MBTI VALUES("INTJ", "ESFJ", 14);
INSERT INTO MBTI VALUES("INTJ", "ISTJ", 15);
INSERT INTO MBTI VALUES("INTJ", "ESTJ", 16);

-- ********** ENTJ
INSERT INTO MBTI VALUES("ENTJ", "INFP", 1);
INSERT INTO MBTI VALUES("ENTJ", "INTP", 2);
INSERT INTO MBTI VALUES("ENTJ", "ENFP", 3);
INSERT INTO MBTI VALUES("ENTJ", "ENTP", 4);
INSERT INTO MBTI VALUES("ENTJ", "INFJ", 5);
INSERT INTO MBTI VALUES("ENTJ", "ENFJ", 6);
INSERT INTO MBTI VALUES("ENTJ", "INTJ", 7);
INSERT INTO MBTI VALUES("ENTJ", "ENTJ", 8);
INSERT INTO MBTI VALUES("ENTJ", "ISFP", 9);
INSERT INTO MBTI VALUES("ENTJ", "ESFP", 10);
INSERT INTO MBTI VALUES("ENTJ", "ISTP", 11);
INSERT INTO MBTI VALUES("ENTJ", "ESTP", 12);
INSERT INTO MBTI VALUES("ENTJ", "ISFJ", 13);
INSERT INTO MBTI VALUES("ENTJ", "ESFJ", 14);
INSERT INTO MBTI VALUES("ENTJ", "ISTJ", 15);
INSERT INTO MBTI VALUES("ENTJ", "ESTJ", 16);

-- ********** INTP
INSERT INTO MBTI VALUES("INTP", "ENTJ", 1);
INSERT INTO MBTI VALUES("INTP", "ENFP", 2);
INSERT INTO MBTI VALUES("INTP", "ENTP", 3);
INSERT INTO MBTI VALUES("INTP", "INFJ", 4);
INSERT INTO MBTI VALUES("INTP", "ENFJ", 5);
INSERT INTO MBTI VALUES("INTP", "INTJ", 6);
INSERT INTO MBTI VALUES("INTP", "INFP", 7);
INSERT INTO MBTI VALUES("INTP", "INTP", 8);
INSERT INTO MBTI VALUES("INTP", "ISFP", 9);
INSERT INTO MBTI VALUES("INTP", "ESFP", 10);
INSERT INTO MBTI VALUES("INTP", "ISTP", 11);
INSERT INTO MBTI VALUES("INTP", "ESTP", 12);
INSERT INTO MBTI VALUES("INTP", "ISFJ", 13);
INSERT INTO MBTI VALUES("INTP", "ESFJ", 14);
INSERT INTO MBTI VALUES("INTP", "ISTJ", 15);
INSERT INTO MBTI VALUES("INTP", "ESTJ", 16);

-- ********** ENTP
INSERT INTO MBTI VALUES("ENTP", "INFJ", 1);
INSERT INTO MBTI VALUES("ENTP", "INTJ", 2);
INSERT INTO MBTI VALUES("ENTP", "ENFP", 3);
INSERT INTO MBTI VALUES("ENTP", "ENTP", 4);
INSERT INTO MBTI VALUES("ENTP", "ENTJ", 5);
INSERT INTO MBTI VALUES("ENTP", "ENFJ", 6);
INSERT INTO MBTI VALUES("ENTP", "INFP", 7);
INSERT INTO MBTI VALUES("ENTP", "INTP", 8);
INSERT INTO MBTI VALUES("ENTP", "ISFP", 9);
INSERT INTO MBTI VALUES("ENTP", "ESFP", 10);
INSERT INTO MBTI VALUES("ENTP", "ISTP", 11);
INSERT INTO MBTI VALUES("ENTP", "ESTP", 12);
INSERT INTO MBTI VALUES("ENTP", "ISFJ", 13);
INSERT INTO MBTI VALUES("ENTP", "ESFJ", 14);
INSERT INTO MBTI VALUES("ENTP", "ISTJ", 15);
INSERT INTO MBTI VALUES("ENTP", "ESTJ", 16);

-- ********** ISFP
INSERT INTO MBTI VALUES("ISFP", "ENFJ", 1);
INSERT INTO MBTI VALUES("ISFP", "ESFJ", 2);
INSERT INTO MBTI VALUES("ISFP", "ESTJ", 3);
INSERT INTO MBTI VALUES("ISFP", "INTJ", 4);
INSERT INTO MBTI VALUES("ISFP", "ENTJ", 5);
INSERT INTO MBTI VALUES("ISFP", "INTP", 6);
INSERT INTO MBTI VALUES("ISFP", "ENTP", 7);
INSERT INTO MBTI VALUES("ISFP", "ISFP", 8);
INSERT INTO MBTI VALUES("ISFP", "ESFP", 9);
INSERT INTO MBTI VALUES("ISFP", "ISTP", 10);
INSERT INTO MBTI VALUES("ISFP", "ESTP", 11);
INSERT INTO MBTI VALUES("ISFP", "ISFJ", 12);
INSERT INTO MBTI VALUES("ISFP", "ISTJ", 13);
INSERT INTO MBTI VALUES("ISFP", "INFP", 14);
INSERT INTO MBTI VALUES("ISFP", "ENFP", 15);
INSERT INTO MBTI VALUES("ISFP", "INFJ", 16);

-- ********** ESFP
INSERT INTO MBTI VALUES("ESFP", "ISFJ", 1);
INSERT INTO MBTI VALUES("ESFP", "ISTJ", 2);
INSERT INTO MBTI VALUES("ESFP", "INTJ", 3);
INSERT INTO MBTI VALUES("ESFP", "ENTJ", 4);
INSERT INTO MBTI VALUES("ESFP", "INTP", 5);
INSERT INTO MBTI VALUES("ESFP", "ENTP", 6);
INSERT INTO MBTI VALUES("ESFP", "ISFP", 7);
INSERT INTO MBTI VALUES("ESFP", "ESFP", 8);
INSERT INTO MBTI VALUES("ESFP", "ISTP", 9);
INSERT INTO MBTI VALUES("ESFP", "ESTP", 10);
INSERT INTO MBTI VALUES("ESFP", "ESFJ", 11);
INSERT INTO MBTI VALUES("ESFP", "ESTJ", 12);
INSERT INTO MBTI VALUES("ESFP", "ENFJ", 13);
INSERT INTO MBTI VALUES("ESFP", "INFP", 14);
INSERT INTO MBTI VALUES("ESFP", "ENFP", 15);
INSERT INTO MBTI VALUES("ESFP", "INFJ", 16);

-- ********** ISTP
INSERT INTO MBTI VALUES("ISTP", "ESFJ", 1);
INSERT INTO MBTI VALUES("ISTP", "ESTJ", 2);
INSERT INTO MBTI VALUES("ISTP", "INTJ", 3);
INSERT INTO MBTI VALUES("ISTP", "ENTJ", 4);
INSERT INTO MBTI VALUES("ISTP", "INTP", 5);
INSERT INTO MBTI VALUES("ISTP", "ENTP", 6);
INSERT INTO MBTI VALUES("ISTP", "ISFP", 7);
INSERT INTO MBTI VALUES("ISTP", "ESFP", 8);
INSERT INTO MBTI VALUES("ISTP", "ISTP", 9);
INSERT INTO MBTI VALUES("ISTP", "ESTP", 10);
INSERT INTO MBTI VALUES("ISTP", "ISFJ", 11);
INSERT INTO MBTI VALUES("ISTP", "ISTJ", 12);
INSERT INTO MBTI VALUES("ISTP", "ENFJ", 13);
INSERT INTO MBTI VALUES("ISTP", "INFP", 14);
INSERT INTO MBTI VALUES("ISTP", "ENFP", 15);
INSERT INTO MBTI VALUES("ISTP", "INFJ", 16);

-- ********** ESTP
INSERT INTO MBTI VALUES("ESTP", "ISFJ", 1);
INSERT INTO MBTI VALUES("ESTP", "ISTJ", 2);
INSERT INTO MBTI VALUES("ESTP", "INTJ", 3);
INSERT INTO MBTI VALUES("ESTP", "ENTJ", 4);
INSERT INTO MBTI VALUES("ESTP", "INTP", 5);
INSERT INTO MBTI VALUES("ESTP", "ENTP", 6);
INSERT INTO MBTI VALUES("ESTP", "ISFP", 7);
INSERT INTO MBTI VALUES("ESTP", "ESFP", 8);
INSERT INTO MBTI VALUES("ESTP", "ISTP", 9);
INSERT INTO MBTI VALUES("ESTP", "ESTP", 10);
INSERT INTO MBTI VALUES("ESTP", "ESFJ", 11);
INSERT INTO MBTI VALUES("ESTP", "ESTJ", 12);
INSERT INTO MBTI VALUES("ESTP", "ENFJ", 13);
INSERT INTO MBTI VALUES("ESTP", "INFP", 14);
INSERT INTO MBTI VALUES("ESTP", "ENFP", 15);
INSERT INTO MBTI VALUES("ESTP", "INFJ", 16);

-- ********** ISFJ
INSERT INTO MBTI VALUES("ISFJ", "ESFP", 1);
INSERT INTO MBTI VALUES("ISFJ", "ESTP", 2);
INSERT INTO MBTI VALUES("ISFJ", "ISFJ", 3);
INSERT INTO MBTI VALUES("ISFJ", "ESFJ", 4);
INSERT INTO MBTI VALUES("ISFJ", "ISTJ", 5);
INSERT INTO MBTI VALUES("ISFJ", "ESTJ", 6);
INSERT INTO MBTI VALUES("ISFJ", "INTJ", 7);
INSERT INTO MBTI VALUES("ISFJ", "ENTJ", 8);
INSERT INTO MBTI VALUES("ISFJ", "INTP", 9);
INSERT INTO MBTI VALUES("ISFJ", "ENTP", 10);
INSERT INTO MBTI VALUES("ISFJ", "ISFP", 11);
INSERT INTO MBTI VALUES("ISFJ", "ISTP", 12);
INSERT INTO MBTI VALUES("ISFJ", "ENFJ", 13);
INSERT INTO MBTI VALUES("ISFJ", "INFP", 14);
INSERT INTO MBTI VALUES("ISFJ", "ENFP", 1);
INSERT INTO MBTI VALUES("ISFJ", "INFJ", 16);

-- ********** ESFJ
INSERT INTO MBTI VALUES("ESFJ", "ISFP", 1);
INSERT INTO MBTI VALUES("ESFJ", "ISTP", 2);
INSERT INTO MBTI VALUES("ESFJ", "ISFJ", 3);
INSERT INTO MBTI VALUES("ESFJ", "ESFJ", 4);
INSERT INTO MBTI VALUES("ESFJ", "ISTJ", 5);
INSERT INTO MBTI VALUES("ESFJ", "ESTJ", 6);
INSERT INTO MBTI VALUES("ESFJ", "INTJ", 7);
INSERT INTO MBTI VALUES("ESFJ", "ENTJ", 8);
INSERT INTO MBTI VALUES("ESFJ", "INTP", 9);
INSERT INTO MBTI VALUES("ESFJ", "ENTP", 10);
INSERT INTO MBTI VALUES("ESFJ", "ESFP", 11);
INSERT INTO MBTI VALUES("ESFJ", "ESTP", 12);
INSERT INTO MBTI VALUES("ESFJ", "ENFJ", 13);
INSERT INTO MBTI VALUES("ESFJ", "INFP", 14);
INSERT INTO MBTI VALUES("ESFJ", "ENFP", 15);
INSERT INTO MBTI VALUES("ESFJ", "INFJ", 16);

-- ********** ISTJ
INSERT INTO MBTI VALUES("ISTJ", "ESFP", 1);
INSERT INTO MBTI VALUES("ISTJ", "ESTP", 2);
INSERT INTO MBTI VALUES("ISTJ", "ISFJ", 3);
INSERT INTO MBTI VALUES("ISTJ", "ESFJ", 4);
INSERT INTO MBTI VALUES("ISTJ", "ISTJ", 5);
INSERT INTO MBTI VALUES("ISTJ", "ESTJ", 6);
INSERT INTO MBTI VALUES("ISTJ", "INTJ", 7);
INSERT INTO MBTI VALUES("ISTJ", "ENTJ", 8);
INSERT INTO MBTI VALUES("ISTJ", "INTP", 9);
INSERT INTO MBTI VALUES("ISTJ", "ENTP", 10);
INSERT INTO MBTI VALUES("ISTJ", "ISFP", 11);
INSERT INTO MBTI VALUES("ISTJ", "ISTP", 12);
INSERT INTO MBTI VALUES("ISTJ", "ENFJ", 13);
INSERT INTO MBTI VALUES("ISTJ", "INFP", 14);
INSERT INTO MBTI VALUES("ISTJ", "ENFP", 15);
INSERT INTO MBTI VALUES("ISTJ", "INFJ", 16);

-- ********** ESFJ
INSERT INTO MBTI VALUES("ESFJ", "ISFP", 1);
INSERT INTO MBTI VALUES("ESFJ", "ISTP", 2);
INSERT INTO MBTI VALUES("ESFJ", "INTP", 3);
INSERT INTO MBTI VALUES("ESFJ", "ISFJ", 4);
INSERT INTO MBTI VALUES("ESFJ", "ESFJ", 5);
INSERT INTO MBTI VALUES("ESFJ", "ISTJ", 6);
INSERT INTO MBTI VALUES("ESFJ", "ESTJ", 7);
INSERT INTO MBTI VALUES("ESFJ", "INTJ", 8);
INSERT INTO MBTI VALUES("ESFJ", "ENTJ", 9);
INSERT INTO MBTI VALUES("ESFJ", "ENTP", 10);
INSERT INTO MBTI VALUES("ESFJ", "ESFP", 11);
INSERT INTO MBTI VALUES("ESFJ", "ESTP", 12);
INSERT INTO MBTI VALUES("ESFJ", "ENFJ", 13);
INSERT INTO MBTI VALUES("ESFJ", "INFP", 14);
INSERT INTO MBTI VALUES("ESFJ", "ENFP", 15);
INSERT INTO MBTI VALUES("ESFJ", "INFJ", 16);
