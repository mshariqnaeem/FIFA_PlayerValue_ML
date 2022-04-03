# Capstone_Group12- Second Segment Project Deliverable 

## Machine Learning 
### Data Preprocessing 
After our ETL process there was still some data prep that was needed to run a successful machine learning model. First, we removed some columns with string values, like name, national team, original positions, etc. Second at the end of our data set was a group of columns that scored a player on their ability to play other positions and included a predictive value show like 85+2. these columns were removed as they did not add much value when we have lots of information on the players ability to play their actual position, which determines the value we are trying to predict, and they were an object data type that we could not us in the machine learning model. 
## Features and Selection 
After our base model, where we took every column into account as a feature against our target variable value in euros, we divided the features into groups as follows and created a linear regression model for reach table: 
* Demographic features:  Age, Height_Cm, Weight_Kgs
* Skills shown during the game: Crossing, Finishing, Heading_Accuracy, Short_Passing, Volleys, Dribbling, Curve, Freekick_Accuracy, Long_Passing, Ball_Control, Acceleration, Sprint_Speed, Agility, Reactions, Balance, Shot_Power, Jumping, Stamina, Strength, Long_Shots, Aggression, Interceptions, Positioning, Vision, Penalties, Composure, Marking, Standing_Tackle, Sliding_Tackle
* Ratings: Overall_Rating, International_Reputation_1_5, Skill_Moves_1_5
* Finally 4 other tables were created to compare all the above features but only for specific positions. Therefore we created a defense table, forward table, goalkeeping table and midfielder table. 
## Training and Testing Split 
In all models our training and testing data was split 1/3 to testing and 2/3 to training.  
## Reason or Model Selection 
We chose a linear regression model because we have a clear research question, and know that by using our historical data of players performance we can uncover if there is a relationship between a player’s value and their performance. After we addressed the overfitting we got a base model with a satisfactory 60% accuracy score. Running the other linear regressions models with our features parsed out as described above did not constantly give us models that were better than our base. Demographics was our lowest at 8%, then skills with a 33% accuracy, goal keepers 53%, ratings 55%, defence 59% midfielders 61%, and forwards 70%. This lead us to also want to explore some other types of machine learning models such as a neural network, but we could also explore combining some of the tables listed above i.e.) demographics with ratings or skills and ratings, or refining our columns. This work is still ongoing. 


