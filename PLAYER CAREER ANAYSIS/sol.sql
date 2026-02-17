USE maven_advanced_sql;
-- VIEW Players Table
SELECT * FROM players;
SELECT COUNT(distinct playerID) FROM players;

-- TASK 1:
-- For each player, calculate their age at their first (debut) game, their last game, and their career length (all in years). 
-- Sort from longest career to shortest career. 

SELECT playerID, 
       nameGiven,
      STR_TO_DATE(debut, '%m/%d/%y') AS debut , 
       STR_TO_DATE(finalGame, '%m/%d/%y') AS finalGame,
       CAST(CONCAT(birthYear, "-", birthMonth, "-", birthDay) AS DATE) AS DOB,
       TIMESTAMPDIFF(
           YEAR,
           CAST(CONCAT(birthYear, "-", birthMonth, "-", birthDay) AS DATE),
            STR_TO_DATE(debut, '%m/%d/%y')
       ) AS debut_age,
        TIMESTAMPDIFF(
           YEAR,
          CAST(CONCAT(birthYear, "-", birthMonth, "-", birthDay) AS DATE),STR_TO_DATE(finalGame, '%m/%d/%y')
       ) AS career_end_age,
       TIMESTAMPDIFF(
           YEAR,
            STR_TO_DATE(finalGame, '%m/%d/%y'),
          STR_TO_DATE(debut, '%m/%d/%y') 
          ) AS career_length

FROM players;

-- TASK 2 
-- What team did each player play on for their starting and ending years?
SELECT * FROM players;
SELECT * FROM salaries;

SELECT p.playerID,
       p.nameGiven,
	   STR_TO_DATE(p.debut, '%m/%d/%y')  AS debut, 
       STR_TO_DATE(P.finalGame, '%m/%d/%y') AS finalGame, 
       s.yearID,
	   s.teamID ,
       e.yearID,
	   e.teamID 
       FROM players AS p
       
inner JOIN salaries AS s
ON P.playerID = S.playerID 
AND YEAR(p.debut) = s.yearID
inner JOIN salaries AS e
ON P.playerID = e.playerID 
AND YEAR(p.finalGame) = e.yearID  ;

-- How many players started and ended on the same team and also played for over a decade?
SELECT p.playerID,
       p.nameGiven,
	   STR_TO_DATE(p.debut, '%m/%d/%y')  AS debut, 
       STR_TO_DATE(P.finalGame, '%m/%d/%y') AS finalGame, 
       s.yearID,
	   s.teamID ,
       e.yearID,
	   e.teamID 
       FROM players AS p
       
inner JOIN salaries AS s
ON P.playerID = S.playerID 
AND YEAR(p.debut) = s.yearID
inner JOIN salaries AS e
ON P.playerID = e.playerID 
AND YEAR(p.finalGame) = e.yearID
where  s.teamID = e.teamID AND  e.yearID - s.yearID > 10 ;

