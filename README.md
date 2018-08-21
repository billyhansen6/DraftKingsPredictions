## DraftKingsPredictions

For this project, I attempted to create a system for effectively predicting Draft Kings daily fantasy basketball line-ups. 

<img width="677" alt="pic" src="https://user-images.githubusercontent.com/19575713/44431290-9e85ab00-a55a-11e8-8dfd-5cae1be05c14.png">


I'm treating this like a work in progress that will certainly need to be adjusted and updated as I start betting with it when the NBA season starts. I tried a lot of different approaches, and ultimetly produced a solid result.

I wanted the process to require minimal effort, so I tried to make the process replicable without much effort - I don't want to have to do a lot of work each day to prepare the data and re-train my model(s).

Below are the approaches I took to in this project.

### Downloading and organizing the Data.

For the Draft Kings and NBA Boxscore data, I purchased historical data from bigdataball.com. I plan on subscribing to their daily datasets during the season.

For the player stats data I scrapped this website: 
https://www.basketball-reference.com/leagues/NBA_2018_per_game.html#per_game_stats::none

For the team stats data I scrapped this website: http://www.espn.com/nba/hollinger/teamstats


### Cleaning data and preparing it for SQL

To clean the data and prepare it for export into SQL I used this process in Python: 
https://github.com/billyhansen6/DraftKingsPredictions/blob/master/Basketball%20Project%20Data%20Downloads%20and%20Dump%20into%20SQL.ipynb

I simply cleaned up the downloaded datasets and exported them into csv files that are organized in a way that makes pulling them into SQL an easy process.

### Uploading into PostgeSQL database


I used the following code to upload data into various tables in a postgreSQL database.

https://github.com/billyhansen6/DraftKingsPredictions/blob/master/DraftKingsProject.sql

This code also selects the relevant data for my model with joins from the created tables. I wanted to have a full database with all possible variables in case I change my mind later for which variables are important for prediction.

### Preparing Data for Machine Learning and Running Various Machine Learning Models.

I used the following code to prepare data for machine learning and run various models:

https://github.com/billyhansen6/DraftKingsPredictions/blob/master/Draft%20Kings%20EDA%2C%20Feature%20Engineering%2C%20and%20ML%20Model%20Creation.ipynb

This process included data cleaning, feature engineering, and feature scaling.

The independent variables that my model used were the following:

'avg_ast - Players average assits per game
'avg_blk - Players average blocks per game
'avg_pts - Players average points per game
'avg_reb - Players average rebounds per game
'avg_stl - Players average steals per game
'avg_threes - Players average threes per game
'avg_tov - Players average turnovers per game
'opp_defeff - Opponents defensive efficiency
'opp_offeff - opponents offensive efficieny
'opp_pace - Opponents pace of play
'opp_reb_rate - Opponents rebound rate.
'opp_tov - Opponents turnovers per game.
'rest - How many days off before the last game.
'team_ast - How many assists does player's team average
'team_defeff - Player's team defensive efficieny
'team_offeff - Player's team offensive efficiency
'team_pace - Player's team pace
'team_reb_rate - Player's team rebound rate
'team_tov - Player's team Turnover's per game.
'venue - Home or away

- The independent variables below were engineered from the available data.

'avg_points_vs_opp - Player's average fantasy points vs. given opponent.
'opp_pos_avg - Average fantasy points that opponent gives up vs. player's position.
'fantasy_points_AVG10 - Average fantasy points in previous 10 games.
'minutes_AVG10 - Average minutes in last 10 games.
'opp_defeff_AVG10 - Opponents defensive efficiency in last 10 games.
'team_offeff_AVG10 - Team's offensive efficiency in last 10 games.
'usage_rate_AVG10 - Player's usage rate in last 10 games.
'opp_pos_avg_AVG10 - Opponents position average in last 10 games.
'fantasy_points_AVG3 - Average fantasy points in previous 3 games.
'minutes_AVG3 - Average minutes in last 3 games.
'opp_defeff_AVG3 - Opponents defensive efficiency in last 3 games.
'team_offeff_AVG3 - Team's offensive efficiency in last 3 games.
'usage_rate_AVG3 - - Player's usage rate in last 3 games.

The dependent variable that I was trying to predict was the fantasy points scored.

The feature engineering step was especially important. The model improved drastically when the featured variables were added to it. This speaks to the importance of feature engineering.

The models I tried were the following:

Multiple Linear Regression
Random Forest
XGboost
Artifical Nueral Network
Support Vector Machine
Ensemble between MLR, ANN and Random Forest

All models yielded somewhat similar results, but surprisingly, the simple, multiple linear regression model was the best performing one. The ensemble learning model was just about as good, but for simplicity's sake I went with the MLR model for my predictions. I'm considering paying for another expert's predictions and ensembling their's with my top 2 or 3 models when the season starts.

The dataset included about 45 thousand rows. To test my model I used K-Fold Cross validation on 20% of the dataset. The best performing models had a mean squared error of about 33, and an R2 score of about .82.

### Optimization of lineups

Optimization is something that I didn't have any experience in before this project. I borrowed the code from this github repository to complete this step: https://github.com/coaltunbey/nba-lineup-optimization/blob/master/main.ipynb

The purpose of this step is to use the predictions the create the optimal line-up (get the most amount of projected points for $50000).

Here is my (mostly borrowed) code for completing this step (Optimization at the end): https://github.com/billyhansen6/DraftKingsPredictions/blob/master/Auto-2.ipynb

### Tableau Dashboard

It became clear to me that the best DraftKings fantasy experts are not simply cranking out optomized models everyday - they deal with many other factors like injuries, varience and stacking players on the same team together, etc...

I decided to create a Tableau dashboard with the data so I could try to derive insights and potentially use them to modify line-ups.

The dashboard is located here: https://public.tableau.com/profile/billy.hansen#!/vizhome/DraftKingsData/PlayerStats

This dashboard is interactive and can drill down on specific metrics of interest.

### Automate Process

I decided that I might not want to use PostgreSQL every day, and that if I could join all the data in python I could save an extra step. Here is code in python that can complete the entire process in one shot: https://github.com/billyhansen6/DraftKingsPredictions/blob/master/Auto-2.ipynb



