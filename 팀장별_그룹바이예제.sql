/* Formatted on 2018/06/28 오후 5:47:33 (QP5 v5.326) */
---------------------------------------------------------------------------------

  SELECT *
    FROM SCHEDULE
ORDER BY SCHE_DATE;

  SELECT *
    FROM PLAYER
ORDER BY TEAM_ID;

SELECT * FROM TEAM;

SELECT * FROM STADIUM;


CREATE TABLE TEAMZ
(
    TEAM_ID      VARCHAR2 (20) PRIMARY KEY,
    TEAM_NAME    VARCHAR2 (20)
);

CREATE TABLE TEAMW
(
    MEM_ID      VARCHAR2 (20) PRIMARY KEY,
    TEAM_ID     VARCHAR2 (20),
    MEM_NAME    VARCHAR2 (20),
    MEM_AGE     DECIMAL,
    ROLL        VARCHAR2 (20)
);                        --팀장, 회원담당,아이템담당,게시판담당,관리자담당

ALTER TABLE TEAMW
    ADD CONSTRAINT TEAM_fk_TEAM_ID FOREIGN KEY (TEAM_ID)
            REFERENCES TEAMZ (TEAM_ID);



INSERT INTO TEAMZ (TEAM_ID, TEAM_NAME)
     VALUES ('ATEAM', '저스티스');

INSERT INTO TEAMZ (TEAM_ID, TEAM_NAME)
     VALUES ('HTEAM', '엘카로');

INSERT INTO TEAMZ (TEAM_ID, TEAM_NAME)
     VALUES ('CTEAM', '가오갤');

INSERT INTO TEAMZ (TEAM_ID, TEAM_NAME)
     VALUES ('STEAM', '어벤저스');

INSERT INTO TEAMW (MEM_ID,
                   TEAM_ID,
                   MEM_NAME,
                   MEM_AGE)
     VALUES ('저스티스1',
             'ATEAM',
             '형준',
             '34');

INSERT INTO TEAMW (MEM_ID,
                   TEAM_ID,
                   MEM_NAME,
                   MEM_AGE)
     VALUES ('저스티스2',
             'ATEAM',
             '세인',
             '35');

INSERT INTO TEAMW (MEM_ID,
                   TEAM_ID,
                   MEM_NAME,
                   MEM_AGE)
     VALUES ('저스티스3',
             'ATEAM',
             '희태',
             '21');

INSERT INTO TEAMW (MEM_ID,
                   TEAM_ID,
                   MEM_NAME,
                   MEM_AGE)
     VALUES ('저스티스4',
             'ATEAM',
             '상훈',
             '29');

INSERT INTO TEAMW (MEM_ID,
                   TEAM_ID,
                   MEM_NAME,
                   MEM_AGE)
     VALUES ('저스티스5',
             'ATEAM',
             '태형',
             '25');

INSERT INTO TEAMW (MEM_ID,
                   TEAM_ID,
                   MEM_NAME,
                   MEM_AGE)
     VALUES ('엘카로1',
             'HTEAM',
             '혜리',
             '26');

INSERT INTO TEAMW (MEM_ID,
                   TEAM_ID,
                   MEM_NAME,
                   MEM_AGE)
     VALUES ('엘카로2',
             'HTEAM',
             '지은',
             '26');

INSERT INTO TEAMW (MEM_ID,
                   TEAM_ID,
                   MEM_NAME,
                   MEM_AGE)
     VALUES ('엘카로3',
             'HTEAM',
             '준',
             '27');

INSERT INTO TEAMW (MEM_ID,
                   TEAM_ID,
                   MEM_NAME,
                   MEM_AGE)
     VALUES ('엘카로4',
             'HTEAM',
             '재경',
             '30');

INSERT INTO TEAMW (MEM_ID,
                   TEAM_ID,
                   MEM_NAME,
                   MEM_AGE)
     VALUES ('엘카로5',
             'HTEAM',
             '단아',
             '26');

INSERT INTO TEAMW (MEM_ID,
                   TEAM_ID,
                   MEM_NAME,
                   MEM_AGE)
     VALUES ('가오갤1',
             'CTEAM',
             '최정훈',
             '32');

INSERT INTO TEAMW (MEM_ID,
                   TEAM_ID,
                   MEM_NAME,
                   MEM_AGE)
     VALUES ('가오갤2',
             'CTEAM',
             '윤호',
             '31');

INSERT INTO TEAMW (MEM_ID,
                   TEAM_ID,
                   MEM_NAME,
                   MEM_AGE)
     VALUES ('가오갤3',
             'CTEAM',
             '가은',
             '29');

INSERT INTO TEAMW (MEM_ID,
                   TEAM_ID,
                   MEM_NAME,
                   MEM_AGE)
     VALUES ('가오갤4',
             'CTEAM',
             '정훈',
             '23');

INSERT INTO TEAMW (MEM_ID,
                   TEAM_ID,
                   MEM_NAME,
                   MEM_AGE)
     VALUES ('가오갤5',
             'CTEAM',
             '승태',
             '30');

INSERT INTO TEAMW (MEM_ID,
                   TEAM_ID,
                   MEM_NAME,
                   MEM_AGE)
     VALUES ('어벤져스1',
             'STEAM',
             '승호',
             '27');

INSERT INTO TEAMW (MEM_ID,
                   TEAM_ID,
                   MEM_NAME,
                   MEM_AGE)
     VALUES ('어벤져스2',
             'STEAM',
             '소진',
             '26');

INSERT INTO TEAMW (MEM_ID,
                   TEAM_ID,
                   MEM_NAME,
                   MEM_AGE)
     VALUES ('어벤져스3',
             'STEAM',
             '이슬',
             '29');

INSERT INTO TEAMW (MEM_ID,
                   TEAM_ID,
                   MEM_NAME,
                   MEM_AGE)
     VALUES ('어벤져스4',
             'STEAM',
             '진태',
             '26');

INSERT INTO TEAMW (MEM_ID,
                   TEAM_ID,
                   MEM_NAME,
                   MEM_AGE)
     VALUES ('어벤져스5',
             'STEAM',
             '누리',
             '30');


UPDATE TEAMW
   SET MEM_NAME = '태형'
 WHERE MEM_NAME LIKE '태영';



  SELECT Z1.TEAM_ID              팀,
         COUNT (Z1.MEM_NAME)     명수,
         SUM (Z1.MEM_AGE)        나이합,
         MAX (Z1.MEM_AGE)        나이최대치,
         MIN (Z1.MEM_AGE)        나이최소치,
         AVG (Z1.MEM_AGE)        나이평균
    FROM TEAMW Z1
GROUP BY Z1.TEAM_ID
ORDER BY AVG (Z1.MEM_AGE) DESC;

  SELECT Z1.TEAM_NAME           팀명,
         COUNT (W.MEM_NAME)     팀원수,
         SUM (W.MEM_AGE)        나이합,
         MAX (W.MEM_AGE)        나이최대치,
         MIN (W.MEM_AGE)        나이최소치,
         AVG (W.MEM_AGE)        나이평균
    FROM TEAMW W JOIN TEAMZ Z1 ON W.TEAM_ID LIKE Z1.TEAM_ID
GROUP BY Z1.TEAM_NAME;

  SELECT (SELECT Z2.TEAM_NAME
            FROM TEAMZ Z2
           WHERE Z2.TEAM_ID LIKE Z1.TEAM_ID)
             팀명,
         COUNT (W.MEM_NAME)
             팀원수,
         SUM (W.MEM_AGE)
             나이합,
         MAX (W.MEM_AGE)
             나이최대치,
         MIN (W.MEM_AGE)
             나이최소치,
         AVG (W.MEM_AGE)
             나이평균
    FROM TEAMW W JOIN TEAMZ Z1 ON W.TEAM_ID LIKE Z1.TEAM_ID
GROUP BY Z1.TEAM_ID;


  SELECT (SELECT Z2.TEAM_NAME
            FROM TEAMZ Z2
           WHERE Z2.TEAM_ID LIKE Z1.TEAM_ID)
             팀명,
         COUNT (W.MEM_NAME)
             팀원수,
         SUM (W.MEM_AGE)
             나이합,
         MAX (W.MEM_AGE)
             나이최대치,
         MIN (W.MEM_AGE)
             나이최소치,
         AVG (W.MEM_AGE)
             나이평균
    FROM TEAMW W JOIN TEAMZ Z1 ON W.TEAM_ID LIKE Z1.TEAM_ID
GROUP BY Z1.TEAM_ID
  HAVING AVG (W.MEM_AGE) >= 28                      -- GROUP의 조건절은 HAVING으로 준다
ORDER BY Z1.TEAM_ID;

SELECT AVG (mem_age) FROM TEAMW;


SELECT Z.TEAM_ID       팀ID,
       Z.TEAM_NAME     팀명,
       W.MEM_ID        ID,
       W.MEM_NAME      이름,
       W.MEM_AGE       나이,
       W.ROLL          역할
  FROM TEAMW W JOIN TEAMZ Z ON W.TEAM_ID LIKE Z.TEAM_ID;

DESC TEAMW;

UPDATE TEAMW
   SET ROLL =
           CASE
               WHEN MEM_NAME IN ('형준',
                                 '혜리',
                                 '최정훈',
                                 '승호')
               THEN
                   '팀장'
               ELSE
                   '팀원'
           END;

SELECT * FROM TEAMZ;

SELECT * FROM TEAMW;

ALTER TABLE TEAMW
    ADD ROLL VARCHAR (20); -- 칼럼을 추가할때

ALTER TABLE TEAMW
    DROP (ROLL);    -- 칼럼 자체를 지울때

UPDATE TEAMW
   SET ROLL = ''; -- 칼럼 내용만 직울때



---------------------------------------------------------------------------------