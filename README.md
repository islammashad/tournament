# Tournament-Results

Tournament Results project. Part of Udacity's full stack developer Nanodegree.

# content of this project 
In this project, I have write a Python module that uses the PostgreSQL database to keep track of players and matches in a game 	 tournament.

The game tournament will use the Swiss system for pairing up players in each round: players are not eliminated , each player should be paired with another player with the same number of wins,or as close as possible.

# Requirments 
- Virtual Box 
- Vagrant =>  https://drupalize.me/videos/installing-vagrant-and-virtualbox?p=1526

## Instructions to run project.

1. download this file and unzip it , cd vagrant 

2. vagrant up to open the virtual box 

3. vagrant ssh and cd tournament where our project

4. run psql for our database 

5. Create a database with CREATE DATABASE tournament;

6. Connect to the tournament database with \c tournament

7. Import the tables and views with \i tournament.sql 

8. Exit postgres with \q

9. Run the tests with python tournament_test.py

# Auther 
 Islam Ahmed 



