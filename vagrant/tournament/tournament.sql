-- This is our database Tables we will used 
-- Players Table to store players with id and name 
CREATE TABLE players (
    id serial PRIMARY KEY,
    name text
);
--Matches Table 
CREATE TABLE matches (
	player_1 integer REFERENCES players,
	player_2 integer REFERENCES players,
	winner integer REFERENCES players
);

--Count the matches from this view table 
CREATE VIEW matches_count AS
    SELECT (
    	SELECT count(*) 
    	FROM matches
    	) /
    	(SELECT count(*) / 2
    	FROM players
    	) AS round_count;
-- View for standings
CREATE VIEW standings AS
    SELECT players.id, players.name, count(matches.winner) AS num, (SELECT * FROM matches_count) as num_matches
    FROM players LEFT JOIN matches
    ON players.id = matches.winner
    GROUP BY players.id
    ORDER BY num DESC;
    
