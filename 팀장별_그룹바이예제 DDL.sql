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
);                         
  
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