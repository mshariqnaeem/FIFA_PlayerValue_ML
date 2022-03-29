-- Creating tables for FIFASoccerDB
CREATE TABLE Soccer_Players (
  Play_Id int NOT NULL
  Skill_Id int NOT NULL
	Players_Name varchar(25)
 	Age int
	Height_Cm float
	Weight_Kgs float
	Positions varvhar(5)
	Nationality varchar(25)
	Overall_Rating number
	Potential number
	Value_Euro float
	International_Reputation_1_5 number
	Skill_Moves_1_5  number
	Work_Rate number
  FOREIGN KEY (Skill_Id) REFERENCES Soccer_Skills (Skill_Id),
     PRIMARY KEY (Play_Id),
     UNIQUE (Player_name)
);