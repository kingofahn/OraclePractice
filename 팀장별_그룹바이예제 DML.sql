/* Formatted on 2018/06/28 오후 7:11:33 (QP5 v5.326) */
---------------------------------------------------------------------------------
--UPDATE TEAMW
--SET MEM_NAME = '태형'
--WHERE MEM_NAME LIKE '태영';

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
               WHEN mem_name IN ('형준',
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
    ADD ROLL VARCHAR (20);                           -- 칼럼을 추가할때

ALTER TABLE TEAMW
    DROP (ROLL);                    -- 칼럼 자체를 지울때

UPDATE TEAMW
   SET ROLL = ''
 WHERE ROLL IS NOT NULL;                    -- 칼럼 내용만 지울때

DROP TABLE TEAMW;
DROP TABLE TEAMZ;

DESC TEAMW;
---------------------------------------------------------------------------------



ALTER TABLE MEMBER RENAME COLUMN AGE TO SSN;
ALTER TABLE MEMBER RENAME COLUMN SSN TO AGE;

ALTER TABLE MEMBER MODIFY (SSN VARCHAR2(20));
ALTER TABLE MEMBER DROP COLUMN SSN;
ALTER TABLE MEMBER ADD (SSN VARCHAR2(20));
ALTER TABLE MEMBER ADD (SSN VARCHAR2 (20));    
DESC MEMBER;
SELECT * FROM MEMBER;

SELECT AGE
FROM MEMBER;

SELECT AGE
FROM MEMBER;



UPDATE MEMBER
SET SSN=
  CASE
  WHEN NAME LIKE '형준' THEN '850417-1'
  WHEN NAME LIKE '세인' THEN '840221-1'
  WHEN NAME LIKE '희태' THEN '980505-1'
  WHEN NAME LIKE '상훈' THEN '900925-1'
  WHEN NAME LIKE '태형' THEN '940822-1'
  WHEN NAME LIKE '혜리' THEN '930718-2'
  WHEN NAME LIKE '지은' THEN '930818-2'
  WHEN NAME LIKE '준' THEN '920714-1'
  WHEN NAME LIKE '재경' THEN '890129-1'
  WHEN NAME LIKE '단아' THEN '930116-2'
  WHEN NAME LIKE '최정훈' THEN '960903-1'
  WHEN NAME LIKE '윤호' THEN '880931-1'
  WHEN NAME LIKE '가은' THEN '900801-2'
  WHEN NAME LIKE '정훈' THEN '960526-1'
  WHEN NAME LIKE '승태' THEN '890727-1'
  WHEN NAME LIKE '승호' THEN '920721-1'
  WHEN NAME LIKE '소진' THEN '930312-2'
  WHEN NAME LIKE '이슬' THEN '901028-2'
  WHEN NAME LIKE '진태' THEN '930408-1'
  WHEN NAME LIKE '누리' THEN '891107-2'
  END;
 
  SELECT * FROM MEMBER;





UPDATE MEMBER  SET ROLL = ''
 WHERE ROLL IS NOT NULL;   
 
 DESC MEMBER;
 
SELECT * FROM MEMBER;
COMMIT;
 
 DELETE FROM MEMBER WHERE MEM_ID LIKE 'gil';
 DELETE FROM MEMBER WHERE NAME LIKE 'null';
 
 
UPDATE MEMBER SET PASSWORD = '2' WHERE MEM_ID LIKE 'hyung';



SELECT * FROM MEMBER;
SELECT * FROM MEMBER;
SELECT MEM_ID, TEAM_ID, NAME, AGE, ROLL, PASSWORD,SSN FROM MEMBER;


SELECT MEM_ID, TEAM_ID, NAME, AGE, ROLL, PASSWORD, SSN FROM MEMBER;


SELECT COUNT(*) AS count FROM MEMBER;


UPDATE MEMBER SET AGE = '2' WHERE MEM_ID LIKE 'minjeong';


ALTER TABLE MEMBER
    ADD SEX VARCHAR (20);   
    
    
    
ALTER TABLE MEMBER
    DROP (SEX);  
    
    
SELECT MEM_ID, TEAM_ID, NAME, AGE, ROLL, PASSWORD,SSN FROM MEMBER
WHERE TEAM_ID LIKE 'ATEAM'; 