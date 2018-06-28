/* Formatted on 2018/06/28 ���� 5:47:33 (QP5 v5.326) */
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
);                        --����, ȸ�����,�����۴��,�Խ��Ǵ��,�����ڴ��

ALTER TABLE TEAMW
    ADD CONSTRAINT TEAM_fk_TEAM_ID FOREIGN KEY (TEAM_ID)
            REFERENCES TEAMZ (TEAM_ID);



INSERT INTO TEAMZ (TEAM_ID, TEAM_NAME)
     VALUES ('ATEAM', '����Ƽ��');

INSERT INTO TEAMZ (TEAM_ID, TEAM_NAME)
     VALUES ('HTEAM', '��ī��');

INSERT INTO TEAMZ (TEAM_ID, TEAM_NAME)
     VALUES ('CTEAM', '������');

INSERT INTO TEAMZ (TEAM_ID, TEAM_NAME)
     VALUES ('STEAM', '�����');

INSERT INTO TEAMW (MEM_ID,
                   TEAM_ID,
                   MEM_NAME,
                   MEM_AGE)
     VALUES ('����Ƽ��1',
             'ATEAM',
             '����',
             '34');

INSERT INTO TEAMW (MEM_ID,
                   TEAM_ID,
                   MEM_NAME,
                   MEM_AGE)
     VALUES ('����Ƽ��2',
             'ATEAM',
             '����',
             '35');

INSERT INTO TEAMW (MEM_ID,
                   TEAM_ID,
                   MEM_NAME,
                   MEM_AGE)
     VALUES ('����Ƽ��3',
             'ATEAM',
             '����',
             '21');

INSERT INTO TEAMW (MEM_ID,
                   TEAM_ID,
                   MEM_NAME,
                   MEM_AGE)
     VALUES ('����Ƽ��4',
             'ATEAM',
             '����',
             '29');

INSERT INTO TEAMW (MEM_ID,
                   TEAM_ID,
                   MEM_NAME,
                   MEM_AGE)
     VALUES ('����Ƽ��5',
             'ATEAM',
             '����',
             '25');

INSERT INTO TEAMW (MEM_ID,
                   TEAM_ID,
                   MEM_NAME,
                   MEM_AGE)
     VALUES ('��ī��1',
             'HTEAM',
             '����',
             '26');

INSERT INTO TEAMW (MEM_ID,
                   TEAM_ID,
                   MEM_NAME,
                   MEM_AGE)
     VALUES ('��ī��2',
             'HTEAM',
             '����',
             '26');

INSERT INTO TEAMW (MEM_ID,
                   TEAM_ID,
                   MEM_NAME,
                   MEM_AGE)
     VALUES ('��ī��3',
             'HTEAM',
             '��',
             '27');

INSERT INTO TEAMW (MEM_ID,
                   TEAM_ID,
                   MEM_NAME,
                   MEM_AGE)
     VALUES ('��ī��4',
             'HTEAM',
             '���',
             '30');

INSERT INTO TEAMW (MEM_ID,
                   TEAM_ID,
                   MEM_NAME,
                   MEM_AGE)
     VALUES ('��ī��5',
             'HTEAM',
             '�ܾ�',
             '26');

INSERT INTO TEAMW (MEM_ID,
                   TEAM_ID,
                   MEM_NAME,
                   MEM_AGE)
     VALUES ('������1',
             'CTEAM',
             '������',
             '32');

INSERT INTO TEAMW (MEM_ID,
                   TEAM_ID,
                   MEM_NAME,
                   MEM_AGE)
     VALUES ('������2',
             'CTEAM',
             '��ȣ',
             '31');

INSERT INTO TEAMW (MEM_ID,
                   TEAM_ID,
                   MEM_NAME,
                   MEM_AGE)
     VALUES ('������3',
             'CTEAM',
             '����',
             '29');

INSERT INTO TEAMW (MEM_ID,
                   TEAM_ID,
                   MEM_NAME,
                   MEM_AGE)
     VALUES ('������4',
             'CTEAM',
             '����',
             '23');

INSERT INTO TEAMW (MEM_ID,
                   TEAM_ID,
                   MEM_NAME,
                   MEM_AGE)
     VALUES ('������5',
             'CTEAM',
             '����',
             '30');

INSERT INTO TEAMW (MEM_ID,
                   TEAM_ID,
                   MEM_NAME,
                   MEM_AGE)
     VALUES ('�����1',
             'STEAM',
             '��ȣ',
             '27');

INSERT INTO TEAMW (MEM_ID,
                   TEAM_ID,
                   MEM_NAME,
                   MEM_AGE)
     VALUES ('�����2',
             'STEAM',
             '����',
             '26');

INSERT INTO TEAMW (MEM_ID,
                   TEAM_ID,
                   MEM_NAME,
                   MEM_AGE)
     VALUES ('�����3',
             'STEAM',
             '�̽�',
             '29');

INSERT INTO TEAMW (MEM_ID,
                   TEAM_ID,
                   MEM_NAME,
                   MEM_AGE)
     VALUES ('�����4',
             'STEAM',
             '����',
             '26');

INSERT INTO TEAMW (MEM_ID,
                   TEAM_ID,
                   MEM_NAME,
                   MEM_AGE)
     VALUES ('�����5',
             'STEAM',
             '����',
             '30');


UPDATE TEAMW
   SET MEM_NAME = '����'
 WHERE MEM_NAME LIKE '�¿�';



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
               WHEN MEM_NAME IN ('����',
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
    ADD ROLL VARCHAR (20); -- Į���� �߰��Ҷ�

ALTER TABLE TEAMW
    DROP (ROLL);    -- Į�� ��ü�� ���ﶧ

UPDATE TEAMW
   SET ROLL = ''; -- Į�� ���븸 ���ﶧ



---------------------------------------------------------------------------------