--1. Write a query in SQL to find the number of players for fifa_cleaned data

SELECT COUNT(id) 
FROM	fifa_cleaned;

- Player_Name count by Player_Id
SELECT COUNT(fc.Player_Id), Player_Name
FROM fifa_cleaned as fc
LEFT JOIN modified_fifa_data as mf
ON fc.Player_Id = mf.Player_Id
GROUP BY mf.Player_Name;

