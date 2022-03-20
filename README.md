# Capstone_Group12

## Presentation

### Selected Topic

**Machine Learning Question:** Are certain player atributes in football more important in determining a players actual Market Value (value_euro)?    
-	The Target variable for the machine learning model will be the Market Value of the player which is specified in the value_euro column of our dataset
-	Our data source is a CSV file with 18000 rows of player information and 90 columns of different statistics and information

**Business Question/Solution:** By analyzing athletes as sports analysts, can we advise teams on which players add most value to the team based on their performance in comparison to their market value?

### Reason Why We Selected This Topic

Football/soccer is the sport with the largest following around the world! Millions of people across the world not only gather to watch the sport but also spend money on the sport including sports betting in fantasy leagues, playing in recreational leagues, to large Clubs/Teams spending Millions on the best player in the world. We selected this topic as we feel that football/soccer just like any sport can be analyzed through statistics from which we can make further conclusions including a players Market Value.

**We as a team wanted to see if there is a trend between performance statistics and the market value of a player. Which categories are most important in determining a player’s market value?**

If we can answer these questions with our model, we could potentially start a start-up sports analytics firm which would provide football clubs with information of which players are worth purchasing based off of not only their performance but the value they add to the team and if that market value is worth paying.

### Questions to Answer with Data

1.	Can we create a supervised learning model which provides us with information which players performance are closer to their actual market value?
2.	Which statistical categories are most important in deciding performance of a player actually gives a certain player a higher value (is it speed, stamina, goal scoring etc.)?
3.	BONUS QUESTION: Is a player worth their market value? Or is a player overpaid/underpaid based off of their performance?

### Method of Communication

We will be using 2 main communication methods throughout this project. We have decided to use both Discord to attend meetings to discuss our progress in an agile and Waterfall environment. This will allow us to adapt to any changes throughout the project lifecycle while also managing to follow a linear project path as is typical in a traditional Waterfall methodology. We plan to do this by holding daily meetings to discuss the progress of the project as a whole and if anyone is experiencing any issues, and if there is an issue it can be addressed immediately vs putting the whole project and the rest of the group members on hold until that aspect is completed.

We chose Discord as our method of communication as it allows flexibility to open different channels to post content and manage communications through various breakout channels and groups. Discord also allows for different methods of communication and file sharing and is easily accessible by anyone who is part of the group. We will also be using Slack to communicate any issues that we are experiencing throughout the project with our **Assistant Instructor David Quispe**.

### Use of Tableau

We will be using Tableau throughout this machine learning model to create stories through visualizations. We will display these visualizations through various different means (bar charts, scatter plots, line charts etc.) to show different statistics and how they are relevant in determining the market value of a player.

After we have completed some data cleaning and tranformaiton we can make interpretations on which categories of statistics are most important to a players value through positive correlations. We understand that their may be outliers in our dataset which we will have to take into consideration and complete further analysis by dividing the players by positions, as not all players will have equal values in specific categories.

Below is an image of a Tableau bar chart of players overal rating as per the FIFA ratings. This is just an example of the types of visualizations that we can create with tableau.

![Players_Overal_Rating](https://user-images.githubusercontent.com/92459399/159146151-b03ba6a5-c4dc-4009-bcd2-ada13ba8c3ee.png)

### Usage of PostGres

Using the knowledge that we have learned regarding the ETL process, we will extract data from the CSV file **fifa_cleaned_initial.csv** (which is included below), transform the dataset by cleaning the data into a more readible and analyzable format, and load the cleaned dataset int an SQL dtaase. Using PostGres we shall create ERD's, import data into the database, and create queries to answer questions from our data.

[fifa_cleaned_initial.csv](https://github.com/mshariqnaeem/Capstone_Group12/files/8310532/fifa_cleaned_initial.csv)


### Resources Used

We will be using many tools including **Git and Github** to manage version control of our code and project progress. This allows us to return to any previous commits if there has been any issue throughout the project.

We will be using **Tableau Public** as our visualization tool to create stories to display the correlation of the data analyzed.

### Machine Learning Flowchart

We have also created a mock model of our Machine learning model which is displayed in the flowchart below.
![image](https://user-images.githubusercontent.com/92459399/159146718-8823b96e-c0d3-4d5b-9d08-c1e3e2e5bc79.png)

