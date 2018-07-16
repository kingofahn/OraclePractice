/* Formatted on 2018/06/28 ���� 7:11:33 (QP5 v5.326) */
---------------------------------------------------------------------------------
--UPDATE TEAMW
--SET MEM_NAME = '����'
--WHERE MEM_NAME LIKE '�¿�';

  SELECT Z1.TEAM_ID              ��,
         COUNT (Z1.MEM_NAME)     ���,
         SUM (Z1.MEM_AGE)        ������,
         MAX (Z1.MEM_AGE)        �����ִ�ġ,
         MIN (Z1.MEM_AGE)        �����ּ�ġ,
         AVG (Z1.MEM_AGE)        �������
    FROM TEAMW Z1
GROUP BY Z1.TEAM_ID
ORDER BY AVG (Z1.MEM_AGE) DESC;

  SELECT Z1.TEAM_NAME           ����,
         COUNT (W.MEM_NAME)     ������,
         SUM (W.MEM_AGE)        ������,
         MAX (W.MEM_AGE)        �����ִ�ġ,
         MIN (W.MEM_AGE)        �����ּ�ġ,
         AVG (W.MEM_AGE)        �������
    FROM TEAMW W JOIN TEAMZ Z1 ON W.TEAM_ID LIKE Z1.TEAM_ID
GROUP BY Z1.TEAM_NAME;

  SELECT (SELECT Z2.TEAM_NAME
            FROM TEAMZ Z2
           WHERE Z2.TEAM_ID LIKE Z1.TEAM_ID)
             ����,
         COUNT (W.MEM_NAME)
             ������,
         SUM (W.MEM_AGE)
             ������,
         MAX (W.MEM_AGE)
             �����ִ�ġ,
         MIN (W.MEM_AGE)
             �����ּ�ġ,
         AVG (W.MEM_AGE)
             �������
    FROM TEAMW W JOIN TEAMZ Z1 ON W.TEAM_ID LIKE Z1.TEAM_ID
GROUP BY Z1.TEAM_ID;


  SELECT (SELECT Z2.TEAM_NAME
            FROM TEAMZ Z2
           WHERE Z2.TEAM_ID LIKE Z1.TEAM_ID)
             ����,
         COUNT (W.MEM_NAME)
             ������,
         SUM (W.MEM_AGE)
             ������,
         MAX (W.MEM_AGE)
             �����ִ�ġ,
         MIN (W.MEM_AGE)
             �����ּ�ġ,
         AVG (W.MEM_AGE)
             �������
    FROM TEAMW W JOIN TEAMZ Z1 ON W.TEAM_ID LIKE Z1.TEAM_ID
GROUP BY Z1.TEAM_ID
  HAVING AVG (W.MEM_AGE) >= 28                      -- GROUP�� �������� HAVING���� �ش�
ORDER BY Z1.TEAM_ID;

SELECT AVG (mem_age) FROM TEAMW;


SELECT Z.TEAM_ID       ��ID,
       Z.TEAM_NAME     ����,
       W.MEM_ID        ID,
       W.MEM_NAME      �̸�,
       W.MEM_AGE       ����,
       W.ROLL          ����
  FROM TEAMW W JOIN TEAMZ Z ON W.TEAM_ID LIKE Z.TEAM_ID;

DESC TEAMW;

UPDATE TEAMW
   SET ROLL =
           CASE
               WHEN mem_name IN ('����',
                                 '����',
                                 '������',
                                 '��ȣ')
               THEN
                   '����'
               ELSE
                   '����'
           END;

SELECT * FROM TEAMZ;
SELECT * FROM TEAMW;

ALTER TABLE TEAMW
    ADD ROLL VARCHAR (20);                           -- Į���� �߰��Ҷ�

ALTER TABLE TEAMW
    DROP (ROLL);                    -- Į�� ��ü�� ���ﶧ

UPDATE TEAMW
   SET ROLL = ''
 WHERE ROLL IS NOT NULL;                    -- Į�� ���븸 ���ﶧ

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
  WHEN NAME LIKE '����' THEN '850417-1'
  WHEN NAME LIKE '����' THEN '840221-1'
  WHEN NAME LIKE '����' THEN '980505-1'
  WHEN NAME LIKE '����' THEN '900925-1'
  WHEN NAME LIKE '����' THEN '940822-1'
  WHEN NAME LIKE '����' THEN '930718-2'
  WHEN NAME LIKE '����' THEN '930818-2'
  WHEN NAME LIKE '��' THEN '920714-1'
  WHEN NAME LIKE '���' THEN '890129-1'
  WHEN NAME LIKE '�ܾ�' THEN '930116-2'
  WHEN NAME LIKE '������' THEN '960903-1'
  WHEN NAME LIKE '��ȣ' THEN '880931-1'
  WHEN NAME LIKE '����' THEN '900801-2'
  WHEN NAME LIKE '����' THEN '960526-1'
  WHEN NAME LIKE '����' THEN '890727-1'
  WHEN NAME LIKE '��ȣ' THEN '920721-1'
  WHEN NAME LIKE '����' THEN '930312-2'
  WHEN NAME LIKE '�̽�' THEN '901028-2'
  WHEN NAME LIKE '����' THEN '930408-1'
  WHEN NAME LIKE '����' THEN '891107-2'
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