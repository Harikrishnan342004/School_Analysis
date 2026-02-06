 -- DATABASE CONECTION 
USE maven_advanced_sql;

 -- viewing Format
SELECT * FROM schools;
SELECT * FROM school_detaiLs;
-- In Each Decade, how many schools were there that produced players ?  
SELECT  ROUND(yearID ,-1) AS DECADES,
        COUNT(DISTINCT schoolID) AS TOTAL_COUNT_OF_PLAYER_IN_EACH_DECADES FROM schools 
GROUP BY DECADES
ORDER BY DECADES ;

-- what are the names of the top 5 schools that produced the most players?

 SELECT  SD.name_full,
        COUNT(DISTINCT S.playerID) AS player
        FROM schools AS S
LEFT JOIN school_detaiLs AS SD
ON S.schoolId = SD.schoolId

GROUP BY SD.name_full
ORDER BY player DESC
LIMIT 5;

-- For each decade, what were the names of the top 3 schools that produced the most 

 WITH ds AS (SELECT  ROUND(S.yearID ,-1) AS DECADES,
         SD.name_full,
         COUNT(DISTINCT S.playerID) AS players 
        FROM schools AS S
LEFT JOIN school_detaiLs AS SD
ON S.schoolId = SD.schoolId
GROUP BY DECADES ,SD.name_full ) ,
rn AS (SELECT *, row_number() OVER(PARTITION BY DECADES ORDER BY players DESC) AS rnk 
 FROM ds )
SELECT * FROM rn
WHERE rnk < 4; 
;



 
 
 
 
 
 
 
 