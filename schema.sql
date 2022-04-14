--1. Write a query in SQL to find the number of players for fifa_cleaned data

SELECT COUNT(id) 
FROM	fifa_cleaned;



ALTER TABLE fifa_cleaned RENAME id TO Player_Id;


SELECT * FROM public."Machine_Learning_Output"
ORDER BY "Player_Id" ASC LIMIT 100;

SELECT * FROM public.fifa_cleaned
ORDER BY player_id ASC LIMIT 100