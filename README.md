# Capstone_Group12
=======
## Ability of Soccer players – Who is the best for their buck
Soccer is the biggest sport in the world. Millions across the world spend time and money in the pursuit of it, whether it be watching it in coffee shops, playing recreationally at their local soccer club, or placing bets in the fantasy leagues. The big question that many larger soccer clubs often ask themselves, knowingly or not, is who best to let go, and who best to keep. This question while never easy, has been made easier by the efforts of our team. 

## Why this specific topic

We understand at the end of the day, a team is only as good as its whole, and if a player is taking resources from the team that would be better be used elsewhere, then the whole team suffers. So, this brough us to the big question, does a player’s cost correlate to their performance. This is the main question that we will be asking, and using FIFA data, we will look at the cost of the player and compare their overall attributes. This is what we will look at in this analysis and create a machine learning model to judge whether or the pay really does correlate to performance, and if not, we can then present to the client recommendation on how best to optimize the performance of the team by adding or removing certain players.

This is of interest for many parties, key of those as previously mentioned, are these large football clubs. Expense can be easily upwards of 200k a year for a single player, and these expenses just like another business expense must be mitigated whenever possible. This is where our program will come it. With our dataset of FIFA players, we will target our variables of interest and create a data-frame out of them. This will then be place on a server, then from their fed into our machine learning algorithm who will parse through the data and generate expected values and compare them to real values. Our null hypothesis would be that there is no correlation between earnings and performance on the field. Our alternative hypothesis would be that there is a correlation, and by using figures we can determine whether or not that correlation is positive or negative. 


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

=======
## Database 
Applying our knowledge of ETL process: extract the FIFA csv data from their respective files, transform the datasets by cleaning them up and joining them together, and load the cleaned dataset into a SQL database.We shall create entity relationship diagrams (ERDs), import data into a database, troubleshoot common errors, and create queries that use data to answer questions.

### Planning Schedule
.Design an ERD that will apply to the data.
.Create and use a SQL database.
.Import Cleaned and designed ERD diagram tables into pgAdmin.
.Perform joins queries to create new tables in pgAdmin.
![](Resources/FootballFifa.png)

## Machine Learning 
We intend to use a Supervised Machine Learning model, specifically a linear regression model. We have a clear research question, and know that by using our historical data of players performance we can uncover if there is a relationship between a player’s value and their performance. Their value in Euros (a continuous variable) would be the target variable or dependent X variable. We’ll analyze many different independent Y variables or features that our model will learn from. The exact variables will be uncovered during our exploratory analysis but some possible examples are stamina, endurance, balance, ball control, etc.    

### Technical Set Up 
To build and execute this model we will be using the Scikit-learn machine learning library from Python and specifically have to import the Linear Regression module. 

![](Resources/flowchart1.png)

## Tableau

We are using Tableau Public to create visualizations that are easy to read and understand.
Tableau will help us to have some insights and questions about our dataset, at the first point we used the insights and shared with our team to discuss what we could do next,and then we will make decisions and work on our ETL process. 

After some data transformation, we can reload the dataset and create more dashboards and stories to tell a bit more of our findings and convince the decision-makers with our analysis. 

- This initial dashboard allows us to interpret the data with numbers such as Total of players, grouped quantity by nationality filtered above 100 players.  

A chart of Player's Position brings attention to some data transformation that will have many categories that we should resume in the most important ones.

![](Resources/FifaPlayers.png)

- Player's Overall Ratings can present to us the player's score, but again the many positions may affect our Machine Learning model to predict and answer our main question.
That will lead us to categorize this column and proceed with our data Extract Transform and Load process.

![](Resources/OverallRatingPlayers.png)


## Methods of communication and Cooperation 

One of the key requirements in any successful project is a team which communicates and cooperates effectively. Large tasks such as this require everyone to work together to make sure that the client receives the desired outcome on time and without delays. We have put a lot of thought into how during the span of this project we will be communicating and sharing our progress on our respective parts of the project, to this end we created a Discord server. This is where the bulk of our communications takes places as discord is a platform which allows for file sharing, video or voice calling, chat logs and chat history to be saved. This allows us to rapid share files to the whole group and actively talk while working on our tasks. Another method we are using to keep up communication between the team is daily meetings to update us and discuss openly any concerns we face individually or collectively. For example, if one of us finds a specific aspect of the project challenging or cannot complete a task on time, our daily meetings will allow us to redistribute tasks and solve our issues so that we can collectively move forward. We feel that using this method would allow us to “square the circle” between Agile and Waterfall method. In addition, we plan to communicate our work process to the client by providing a log of the discoveries made and plan changes to our project. This will ensure transparency with all parties and will be available in a section of the README. This allows interested parties to keep up with advancements of the project as well as the thoughts of the team.

## In Closing
We know that with a well laid plan, we can achieve the desired goal on time, and get the answers to the stack holders. Putting together machine learning, thoughtful insights, story driven data, and a well-organized team, we know that we will be able to deliver on our goal, of finding what indicators to look for, to find the true monetary value of a player.

