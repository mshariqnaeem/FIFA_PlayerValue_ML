-- Creating tables for FIFASoccerDB
-- Create table Soccer_Players table
CREATE TABLE Soccer_Players (
  Play_Id int NOT NULL,
	Age int,
	Height_Cm float,
	Weight_Kgs float,
	Overall_Rating int,
	Potential int,
	Value_Euro float
	International_Reputation_1_5 int,
	Skill_Moves_1_5  int,
  FOREIGN KEY (Skill_id) REFERENCES Soccer_Skills(Skills_id),
	   PRIMARY KEY (Play_Id),
     UNIQUE (Player_name)
);


-- Create table Soccer_Skills table
CREATE TABLE Soccer_Skills (
Play_Id int NOT NULL,
Skill_id int NOT NULL,
Crossing int, 
Finishing int,
Heading_Accuracy int,
Short_Passing int,
Volleys int,
Dribbling int,
Curve int,
Freekick_Accuracy int,
Long_Passing int,
Ball_Control int,
Acceleration int,
Sprint_Speed int,
Agility int,
Reactions int,
Balance int,
Shot_Power int,
Jumping int,
Stamina int,
Strength int,
Long_Shots int,
Aggression int,
Interceptions int,
Positioning int,
Vision int,
Penalties int,
composture int,
Marking int,
Standing_Tackle int,
Sliding_Tackle int,
Gk_Diving int,
Gk_Handling int
Gk_Kicking int,
Gk_Positioning int,
Gk_Reflexes int,

   FOREIGN KEY (Play_Id) REFERENCES Soccer_Players (Play_Id),
         PRIMARY KEY (Skill_id)
      
);

-- -- Create table National_Soccer_Team
-- CREATE TABLE National_Soccer_team (
--   Ntn_no int NOT NULL,
--   Club_no int NOT NULL,
--   Play_Id int Not NULL,
--   National_Soccer_team varchar(25) 
-- FOREIGN KEY (Club_no) REFERENCES Club_Soccer_Team (Club_no),
--      PRIMARY KEY (Ntn_no),
--      UNIQUE (National_Soccer_team)
-- );

-- -- Create table Club_Soccer_Team
-- CREATE TABLE Club_Soccer_Team (
-- Club_no int, Schema.sql file?

-- Play_Id int,
-- Club_Team varchar,

--  FOREIGN KEY (Play_Id) REFERENCES Soccer_Players (Play_Id),
--      PRIMARY KEY (Club_no),
--      UNIQUE (Club_Team)
-- );

-- -- Create table Soccer_Pitch_Positions
-- CREATE TABLE Soccer_Pitch_Positions (
-- Play_Id int, 
-- Posn_Id int ,
-- Ls int,
-- St int,
-- Rs int,
-- Lw int,	
-- Lf int,	
-- Cf int,	
-- Rf int,	
-- Rw int,	 
-- Lam int,	
-- Cam int,
-- Ram int,
-- Lm int,
-- Lcm int,
-- Cm int,
-- Rcm int,
-- Rm int,
-- Lwb int,
-- Ldm int,
-- Cdm int,
-- Rdm int,
-- Rwb int,
-- Lb int,
-- Lcb int,
-- Cb int,
-- Rcb int,
-- Rb int,
-- Original_Position varchar(30),
--  FOREIGN KEY (Play_Id) REFERENCES Soccer_Players (Play_Id),
--      PRIMARY KEY (Posn_Id)
     
-- );
