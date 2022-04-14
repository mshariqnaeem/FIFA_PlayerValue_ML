# Introduction
## What is Our Topic and Why We Chose It  

Our topic is the valuation of Football/Soccer players!

Soccer is the biggest sport in the world. Millions across the world spend time and money in the pursuit of it, whether it be watching it in coffee shops, playing recreationally at their local soccer club, or placing bets in the fantasy leagues. The big question that many larger soccer clubs often ask themselves, knowingly or not, is who best to let go, and who best to keep. This question while never easy, has been made easier by the efforts of our team.

## Questions We Aim to Answer and Business Relation

The main question we want to answer is **what categories determine a player's market value?** Is it a statistical category such as speed? is it a non-statistical based category such as nationality? Is it a players potential for growth? These are all factors we need to take into consideration when analyzing our database and creating our machine learning model.

This is of interest for many parties, key of those as previously mentioned, are these large football clubs. Expense can be easily upwards of 200k a year for a single player, and these expenses just like another business expense must be mitigated whenever possible. This is where our program will come it. With our dataset of FIFA players, we will target our variables of interest and create a data-frame out of them. This will then be place on a server, then from their fed into our machine learning algorithm who will parse through the data and generate expected values and compare them to real values. Our null hypothesis would be that there is no correlation between earnings and performance on the field. Our alternative hypothesis would be that there is a correlation, and by using figures we can determine whether or not that correlation is positive or negative.


## Where We Got Data 

The source of our data is a CSV file which we found from data.world. This CSV file contains roughly 18,000 rows of player data with 90 columns of categories and statistical measures. We have included the link to the original source of the dataset below.

https://data.world/raghav333/fifa-players

## The Systems We Used 

For the project we had to use a variety of languages and tools to complete our analysis and machine learning model. 

**As there were multiple different tools used we have made a short list below**

- Postgres SQL + PgAdmin
- Python + Jupyter Notebook <br />
  numpy <br />
  matplotlib <br />
  pandas <br />
  seaborn <br />
  sklearn <br />
  sqlalchemy <br />
  psycopg2 <br />
- Tableau
- HTML

# ETL process and exploration/ analysis on tableau- already written- Marcio

## Data ETL

From the process of data exploration, we as well came upon some challenges with the initial data set. A lot of missing values, duplicate values as well as values that were unnecessary for our current needs. As previously stated, position on the field was a feature what was in interest to us, however we had the issue of people holding several positions at once. This was an issue when we attempted to group them together as there were a multitude of combinations and variations that, while important on the micro level, when attempted to derive the value of a player based on position made in near to impossible. Thus, to over come this challenge we divided the positions into 4 broader, more manageable categories of, “Forwards (FW)”, “Midfielder (MF)”, “Defender (DF)” and “Goalkeeper (GK)”. This will allow us to more closely look at trends in these broader positions as well as compare them with a larger sample, making our findings more meaningful. Furthermore, we also have been using the player ID as an index, allowing us to easily merge and track the transformed or altered values to the originals. This means if later on if we find for example Forwards are of more value, we can trace back our steps and find what specific positions in the broader Forward category are of higher value. Another issue we had to resolve in the data is the player value itself. Due to some outliers, player value was from the tens of thousands to the tens of millions. This discrepancy reeded its head as we attempted to make for informative graphs of the data. The process of fixing this was to take our “euro value” columns and simply divide all the values by 100,000. This would allow us to generate more digestible graphs, as well made prepping the data for our Machine Learning algorithms.

## Use of Tableau

We will be using Tableau throughout this machine learning model to create stories through visualizations. We will display these visualizations through various different means (bar charts, scatter plots, line charts etc.) to show different statistics and how they are relevant in determining the market value of a player.
After we have completed some data cleaning and transformation, we can make interpretations of which categories of statistics are most important to a player's value through positive correlations. We understand that there may be outliers in our dataset which we will have to take into consideration and complete further analysis by dividing the players by positions, as not all players will have equal values in specific categories.
Below is an image of a Tableau bar chart of players' overall ratings as per the FIFA ratings. This is just an example of the types of visualizations that we can create with tableau.

After our Machine Learning results, we upload the .csv file and merged it with modified_fifa_data.csv using Player_Id and link both files. Then was possible to make dashboards with Predicted Value Euro filtered by Position.

# Database
A SQL database was used to take the cleaned data from our ETL process and hold it for the machine learning processing. Additionally, once the machine learning model was run and we had the predicted values the results were added back into our database. Finally, our database holds a summarized table needed for our front-end interaction. This table contains the names, value, predicted values, and top attributes or features from our feature importance test done at the end of the machine learning model. 

# Machine Learning

We intended to use a Supervised Machine Learning model, specifically a linear regression model. We have a clear research question, and know that by using our historical data of players performance we can uncover if there is a relationship between a player’s value and their performance. Their value in Euros (a continuous variable) would be the target variable or dependent X variable. We’ll analyze many different independent Y variables or features that our model will learn from for example stamina, endurance, balance, ball control, etc.  

The process of getting a machine learning algorithm up and running was a challenge to say the least. We took many paths and not all were fruitful, but nonetheless we got to a point where can confidently say that we have a model which can predict the transformed euro value and what skills would come time that. 

At first, we tried a multitude of models all trying to get an idea of the nature and structure of the data. We tried a cluster model, and several linear graphs to get a handle on the data. Our base machine learning model, which just took the integers and decimals from the cleaned data into consideration only yeilded an accuracy score of 63. From this we could see that the data behaved in manner that we at first didn’t expect. From several projections the data seemed to trend in a more exponential in nature, and so a regular linear regression would not do. After much deliberation we concluded the large disparities between soccer player salaries must be addressed, as with some players, the difference between what their values is could be in the tens if not hundreds of millions. Thus, to tackle this issue, we attempted to standardize the data by apply the log function to the target value to standardize it. After we applied this as well as some other tweaking like dropping string values, columns that were the majority null values, etc. we finally got to a point where our machine learning algorithm was yielding a rather high accuracy score above 90. 

After getting the feature value of our machine learning to a high degree, we then removed overshadowed the other features. Finally, after several more tweaks we got to a point where we can take the skills of a player and produce their logged value. While this isn’t exactly what we desire, due to the nature of the data it was the only to proceed to conduct the machine learning, as any other method only yielded poor to no significate results. None the less we are proud of our achievements in we accomplished.

![](Resources/flowchart1.png)

# Dashboard
We are using Tableau Public to create visualizations that are easy to read and understand. Tableau helped us to have some insights and questions about our dataset, and at first we used this tool to find insights and share findings with our team to discuss what we could do next, and then make decisions and work on our ETL process.
After some data transformation, we reloaded the dataset and created more dashboards and stories to provide users with summary statistics and analysis of player’s statistics, such as country of origin, club teams, etc. This is our first interactive component that allows users to view graphs of all Fifa players overall or find summary statistics of one individual player. 
Our second interactive component connects to the data from our machine learning model and allows users to find the value, predicted value and top attributes that influenced the value for that specific player in the machine learning model. This search engine was created using HTML and Javascript.  To complement the machine learning search engine there is an additional tableau dashboard that shows visualizations of player positions, values and predicted values. 
## Interactive Demo 
Please follow the link below to find a video showing both of our interactive elements. 
https://drive.google.com/file/d/1m9mVxkuoDX6Mbe2-w6Fzsxj1jPK-bHoB/view?usp=sharing

# Communication Protocol
We will be using 2 main communication methods throughout this project. We have decided to use both Discord to attend meetings to discuss our progress in an agile and Waterfall environment. This will allow us to adapt to any changes throughout the project lifecycle while also managing to follow a linear project path as is typical in a traditional Waterfall methodology. We plan to do this by holding daily meetings to discuss the progress of the project as a whole and if anyone is experiencing any issues, and if there is an issue it can be addressed immediately vs putting the whole project and the rest of the group members on hold until that aspect is completed.

We chose Discord as our method of communication as it allows flexibility to open different channels to post content and manage communications through various breakout channels and groups. Discord also allows for different methods of communication and file sharing and is easily accessible by anyone who is part of the group. We will also be using Slack to communicate any issues that we are experiencing throughout the project with our **Assistant Instructor David Quispe**.

# Presentation 
We have included the Google Slides link below. Spe3aking notes can befound below each slide. 
https://docs.google.com/presentation/d/1SbNR2lV_6iaGY7u_Mp5DBHGwq5s0UTUp8kjGCQ9TE2E/edit#slide=id.g123d2660db3_0_0

# Submitted by Group 12 
* Ryan Mota 
* Shariq Naeem
* Sydney Kieswetter 
* Marcio Ciano 
* Olufemi Iman
