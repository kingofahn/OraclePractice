SELECT * FROM TAB;
SELECT * FROM SCHEDULE;
SELECT * FROM PLAYER;
SELECT * FROM TEAM;
SELECT * FROM STADIUM;
SELECT * FROM SCHEDULE;


--SQL_TEST_001
SELECT count(*) "테이블의 수" 
FROM tab;


--SQL_TEST_002
SELECT team_name "전체 축구팀 목록" 
FROM team 
order by team_name;


--SQL_TEST_003
SELECT DISTINCT NVL2(position,position,'신입') "포지션" 
FROM player;


--SQL_TEST_004  수원팀(ID :K02) 골키퍼
SELECT player_name "이름" 
FROM player
WHERE team_id like'K02' and position like'GK'
ORDER BY player_name;


-- SQL_TEST_005 : 수원팀(ID: K02) && 키가 170 이상 선수 && 성이 고씨
SELECT position "포지션", player_name "이름"
FROM player
WHERE team_id like'K02' 
    and height>=170 
    and substr(player_name,0,1) like'고';
    
SELECT position "포지션", player_name "이름"
FROM player
WHERE team_id like'K02' 
    and height>=170 
    and player_name like'고__';

SELECT position "포지션", player_name "이름"
FROM player
WHERE team_id like'K02' 
    and height>=170 
    and player_name like'고%';

SELECT position "포지션", player_name "이름"
FROM player
WHERE team_id like'K02' 
    and height>=170 
    and player_name like'%운%';


-- SCCOER_SQL_006
-- 수원팀(ID: K02) 선수들 이름,
-- 키와 몸무게 리스트 (단위 cm 와 kg 삽입)
-- 키와 몸무게가 없으면 "0" 표시
-- 키 내림차순

SELECT 
    player_name || '선수' "이름", 
    NVL2(height,height,0) ||'cm' "키", 
    NVL2(weight,weight,0) ||'kg' "몸무게"
FROM player
WHERE team_id like 'K02'
ORDER BY height DESC;


-- SQL_TEST_007
-- 수원팀(ID: K02) 선수들 이름,
-- 키와 몸무게 리스트 (단위 cm 와 kg 삽입)
-- 키와 몸무게가 없으면 "0" 표시
-- BMI지수 
-- 키 내림차순BMI = 몸무게 / 키² 로서, 여기서 몸무게는 kg, 키는 m 단위이다. 예를 들자면, 몸무게 55kg에 키 1.68m인 사람의 BMI는 
--  55kg/(1.68m)^2 = 19.4이다

SELECT 
    player_name || '선수' "이름", 
    NVL2(height,height,0) ||'cm' "키", 
    NVL2(weight,weight,0) ||'kg' "몸무게", 
    round((weight/(height*height)*10000),2) "BMI비만지수"
FROM player
WHERE team_id like'K02'
ORDER BY height DESC;


-- SOCCER_SQL_008 
-- 수원팀(ID: K02) 과 대전팀(ID: K10)선수들 중 이
-- GK 포지션인 선수
-- 팀명 사람명 오름차순

SELECT t.team_name, p.player_name
FROM player p, team t
WHERE p.team_id = t.team_id
        AND p.team_id in('K02','K10') 
        AND p.position like 'GK'
ORDER BY t.team_name, p.player_name;

-- SOCCER_SQL_009 
-- 수원팀(ID: K02) 과 대전팀(ID: K10)선수들 중 이
-- 키가 180 이상 183 이하인 선수들
-- 키, 팀명, 사람명 오름차순

SELECT p.height||'cm', t.team_name, p.player_name
FROM player p, team t
WHERE p.team_id = t.team_id 
    AND height between 180 and 183
    AND p.team_id in('K02','K10')
ORDER BY p.height, t.team_name, p.player_name;     

--SOCCER_SQL_010
--  모든 선수들 중
-- 포지션을 배정받지 못한 선수들의 팀과 이름
-- 팀명, 사람명 오름차순

SELECT t.team_name, p.player_name
FROM player p, team t
WHERE p.team_id = t.team_id
    AND p.position IS NULL
ORDER BY t.team_name, p.player_name; 