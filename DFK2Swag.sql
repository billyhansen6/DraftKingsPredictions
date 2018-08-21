﻿-- Create Player Stats Table 17_18
DROP TABLE IF EXISTS playerstats17_18;
CREATE TABLE playerstats17_18(
    Rk INT,
    player VARCHAR(50),
    Pos VARCHAR(10),
    Age INT,
    Team VARCHAR(50),
    Games INT,
    GS INT,
    MP DECIMAL(3,1),
    FG DECIMAL(3,1),
    FGA DECIMAL(3,1),
    FGS DECIMAL(4,3),
    THREES DECIMAL(2,1),
    threePA DECIMAL(3,1),
    threePS DECIMAL(5,3),
    twoP DECIMAL(2,1),
    twoPA DECIMAL(3,1),
    twoPS DECIMAL(4,3),
    eFG DECIMAL(4,3),
    FT DECIMAL(2,1),
    FTA DECIMAL(3,1),
    FTS DECIMAL(4,3),
    ORB DECIMAL(2,1),
    DRB DECIMAL(3,1),
    REB DECIMAL(3,1),
    AST DECIMAL(3,1),
    STL DECIMAL(3,1),
    BLK DECIMAL(3,1),
    TOV DECIMAL(3,1),
    PF DECIMAL(2,1),
    PTS DECIMAL(3,1),
    Season VARCHAR(50));

-- Create Player Stats Table 16_17
DROP TABLE IF EXISTS playerstats16_17;
CREATE TABLE playerstats16_17(
    Rk INT,
    player VARCHAR(50),
    Pos VARCHAR(10),
    Age INT,
    Team VARCHAR(50),
    Games INT,
    GS INT,
    MP DECIMAL(3,1),
    FG DECIMAL(3,1),
    FGA DECIMAL(3,1),
    FGS DECIMAL(4,3),
    THREES DECIMAL(2,1),
    threePA DECIMAL(3,1),
    threePS decimal(3,1),
    twoP DECIMAL(2,1),
    twoPA DECIMAL(3,1),
    twoPS DECIMAL(4,3),
    eFG DECIMAL(4,3),
    FT DECIMAL(2,1),
    FTA DECIMAL(3,1),
    FTS DECIMAL(5,4),
    ORB DECIMAL(2,1),
    DRB DECIMAL(3,1),
    REB DECIMAL(3,1),
    AST DECIMAL(3,1),
    STL DECIMAL(3,1),
    BLK DECIMAL(3,1),
    TOV DECIMAL(3,1),
    PF DECIMAL(2,1),
    PTS DECIMAL(3,1),
    Season VARCHAR(50));


-- Copy in players Data
COPY playerstats16_17 FROM '/Users/sauce/Desktop/DraftKings/PlayerStats/playerstats_16_17.csv' DELIMITER ',';
COPY playerstats17_18 FROM '/Users/sauce/Desktop/DraftKings/PlayerStats/playerstats_17_18.csv' DELIMITER ',';


-- Create TeamStats_16_17 Table
DROP TABLE IF EXISTS TeamStats_16_17;
CREATE TABLE TeamStats_16_17(
	team varchar(50),
    pace DECIMAL(4,1),
    ast DECIMAL(4,1),
    turnover DECIMAL(3,1),
    orr decimal(3,1),
    drr decimal(3,1),
    rebr decimal(3,1),
    EffFG decimal(3,1),
    ts decimal(3,1),
    offEff decimal(4,1),
    defEFF decimal(4,1),
    season varchar(50)
);

-- Create TeamStats 17_18 Table
DROP TABLE IF EXISTS TeamStats_17_18;
CREATE TABLE TeamStats_17_18(
	team varchar(50),
    pace DECIMAL(4,1),
    ast DECIMAL(4,1),
    turnover DECIMAL(3,1),
    orr decimal(3,1),
    drr decimal(3,1),
    rebr decimal(3,1),
    EffFG decimal(3,1),
    ts decimal(3,1),
    offEff decimal(4,1),
    defEFF decimal(4,1),
    season varchar(50)
);

-- Copy Team Stats Data
COPY TeamStats_17_18 FROM '/Users/sauce/Desktop/DraftKings/TeamStats/team_stats_17_18.csv' DELIMITER ',';
COPY TeamStats_16_17 FROM '/Users/sauce/Desktop/DraftKings/TeamStats/team_stats_16_17.csv' DELIMITER ',';



-- Create Opponents_16_17 Table
DROP TABLE IF EXISTS Opponents_16_17;
CREATE TABLE Opponents_16_17(
	opponent varchar(50),
    pace DECIMAL(4,1),
    ast DECIMAL(4,1),
    turnover DECIMAL(3,1),
    orr decimal(3,1),
    drr decimal(3,1),
    rebr decimal(3,1),
    EffFG decimal(3,1),
    ts decimal(3,1),
    offEff decimal(4,1),
    defEFF decimal(4,1),
    season varchar(50)
);

-- Create Opponents_17_18 Table
DROP TABLE IF EXISTS Opponents_17_18;
CREATE TABLE Opponents_17_18(
	opponent varchar(50),
    pace DECIMAL(4,1),
    ast DECIMAL(4,1),
    turnover DECIMAL(3,1),
    orr decimal(3,1),
    drr decimal(3,1),
    rebr decimal(3,1),
    EffFG decimal(3,1),
    ts decimal(3,1),
    offEff decimal(4,1),
    defEFF decimal(4,1),
    season varchar(50)
);

-- Copy Opponnets Data
COPY Opponents_17_18 FROM '/Users/sauce/Desktop/DraftKings/TeamStats/team_stats_17_18.csv' DELIMITER ',';
COPY Opponents_16_17 FROM '/Users/sauce/Desktop/DraftKings/TeamStats/team_stats_16_17.csv' DELIMITER ',';

-- Create Table DraftKings_16_17
DROP TABLE IF EXISTS DraftKings_16_17;
CREATE TABLE DraftKings_16_17(
    Season VARCHAR(100),
    game_date DATE,
    player VARCHAR(100),
    team VARCHAR(100),
    opponent VARCHAR(100),
    venue VARCHAR(3),
    Minutes DECIMAL(4,2),
    Usage_Rate DECIMAL(4,2),
    position VARCHAR(10),
    salary INT,
    fantasy_points DECIMAL(5,2)
);

-- Create Table DraftKings_17_18
DROP TABLE IF EXISTS DraftKings_17_18;
CREATE TABLE DraftKings_17_18(
    Season VARCHAR(100),
    game_date DATE,
    player VARCHAR(100),
    team VARCHAR(100),
    opponent VARCHAR(100),
    venue VARCHAR(3),
    Minutes DECIMAL(4,2),
    Usage_Rate DECIMAL(4,2),
    position VARCHAR(10),
    salary INT,
    fantasy_points DECIMAL(5,2)
);
-- Copy in Draft Kings Data
COPY DraftKings_16_17 FROM '/Users/sauce/Desktop/DraftKings/DKStats/dk_16_17.csv' DELIMITER ',';
COPY DraftKings_17_18 FROM '/Users/sauce/Desktop/DraftKings/DKStats/dk_17_18.csv' DELIMITER ',';

-- Create Rest_16_17 Table
DROP TABLE IF EXISTS rest_16_17;
CREATE TABLE rest_16_17(
	season VARCHAR(50),
	game_date DATE,
	team VARCHAR(25),
	rest VARCHAR(15),
	opponent VARCHAR(50));
		

-- Create Rest_17_18 Table
DROP TABLE IF EXISTS rest_17_18;
CREATE TABLE rest_17_18(
	season VARCHAR(50),
	game_date DATE,
	team VARCHAR(25),
	rest VARCHAR(15),
	opponent VARCHAR(50));

-- Copy in Rest Data
COPY rest_16_17 FROM '/Users/sauce/Desktop/DraftKings/Rest/BS_16_17.csv' DELIMITER ',';
COPY rest_17_18 FROM '/Users/sauce/Desktop/DraftKings/Rest/BS_17_18.csv' DELIMITER ',';

-- Combine DraftKings Data
DROP TABLE IF EXISTS draftkings_combined;
CREATE TABLE draftkings_combined
AS
  SELECT * FROM draftkings_16_17
    UNION
  SELECT * FROM draftkings_17_18;

-- Combine TeamStats Data
DROP TABLE IF EXISTS teamstats_combined;
CREATE TABLE teamstats_combined
AS
  SELECT * FROM teamstats_16_17
    UNION
  SELECT * FROM teamstats_17_18;
  
-- Combine Rest Data
DROP TABLE IF EXISTS rest_combined;
CREATE TABLE rest_combined
AS
  SELECT * FROM rest_16_17
    UNION
  SELECT * FROM rest_17_18;
  
-- Combine Opponents Data
DROP TABLE IF EXISTS opponents_combined;
CREATE TABLE opponents_combined
AS
  SELECT * FROM opponents_16_17
    UNION
  SELECT * FROM opponents_17_18;
  
-- Combine Players Data
DROP TABLE IF EXISTS playerstats_combined;
CREATE TABLE playerstats_combined
AS
  SELECT * FROM playerstats16_17
    UNION
  SELECT * FROM playerstats17_18;




-- Create Data for Analysis
select
draftkings_combined.season,
draftkings_combined.game_date,
draftkings_combined.player,
draftkings_combined.position,
draftkings_combined.team,
draftkings_combined.opponent,
draftkings_combined.venue,
draftkings_combined.minutes,
draftkings_combined.usage_rate,
rest_combined.rest,
playerstats_combined.threes as avg_threes,
playerstats_combined.reb as avg_reb,
playerstats_combined.ast as avg_ast,
playerstats_combined.stl as avg_stl,
playerstats_combined.blk as avg_blk,
playerstats_combined.tov as avg_tov,
playerstats_combined.pts as avg_pts,
avg_points_vs_opp.avg_points_vs_opp,
teamstats_combined.pace as team_pace,
teamstats_combined.ast as team_ast,
teamstats_combined.turnover as team_tov,
teamstats_combined.rebr as team_reb_rate,
teamstats_combined.offeff as team_offeff,
teamstats_combined.defeff as team_defeff,
opponents_combined.pace as opp_pace,
opponents_combined.ast as opp_ast,
opponents_combined.turnover as opp_tov,
opponents_combined.rebr as opp_reb_rate,
opponents_combined.offeff as opp_offeff,
opponents_combined.defeff as opp_defeff,
opp_pos_avg.opp_pos_avg,
draftkings_combined.salary,
draftkings_combined.fantasy_points
from draftkings_combined
join teamstats_combined
on teamstats_combined.season = draftkings_combined.season
and teamstats_combined.team = draftkings_combined.team
join opponents_combined
on draftkings_combined.season = opponents_combined.season
and draftkings_combined.team = opponents_combined.opponent
join playerstats_combined
on draftkings_combined.season = playerstats_combined.season
and draftkings_combined.player = playerstats_combined.player
and draftkings_combined.team = playerstats_combined.team
join rest_combined
on draftkings_combined.season = rest_combined.season
and draftkings_combined.game_date = rest_combined.game_date
and draftkings_combined.team = rest_combined.team
and draftkings_combined.opponent = rest_combined.opponent
join avg_points_vs_opp
on draftkings_combined.season = avg_points_vs_opp.season
and draftkings_combined.player = avg_points_vs_opp.player
and draftkings_combined.opponent = avg_points_vs_opp.opponent
join opp_pos_avg
on draftkings_combined.season = opp_pos_avg.season
and draftkings_combined.opponent = opp_pos_avg.opponent
and draftkings_combined.position = opp_pos_avg.position
;