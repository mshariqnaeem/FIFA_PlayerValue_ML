--1. Write a query in SQL to find the number of players for fifa_cleaned data

SELECT COUNT(id) 
FROM	fifa_cleaned;

- Player_Name count by Player_Id
SELECT COUNT(fc.Player_Id), Player_Name
FROM fifa_cleaned as fc
LEFT JOIN modified_fifa_data as mf
ON fc.Player_Id = mf.Player_Id
GROUP BY mf.Player_Name
ORDER BY mf.dept_no;


ALTER TABLE fifa_cleaned RENAME id TO Player_Id;


SELECT * FROM public."Machine_Learning_Output"
ORDER BY "Player_Id" ASC LIMIT 100;

SELECT * FROM public.fifa_cleaned
ORDER BY player_id ASC LIMIT 100