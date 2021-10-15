-- create table player
CREATE TABLE player
(
    id INT PRIMARY KEY NOT NULL,
    name VARCHAR(100),
    surname VARCHAR(100),
    email VARCHAR(255),
    birthday DATE,
    player_level INT,
    points INT,
    player_pool uniqueidentifier,

)

-- create table match set
CREATE TABLE match_set
(
    id_set INT PRIMARY KEY NOT NULL,
    score_player1 int,
    score_player2 int,
)

-- create table score and link pk to match set
CREATE TABLE score
(
    id_score INT PRIMARY KEY NOT NULL,
    set1_id int FOREIGN KEY REFERENCES [dbo].[match_set](id_set),
    set2_id int FOREIGN KEY REFERENCES [dbo].[match_set](id_set),
	  set3_id int FOREIGN KEY REFERENCES [dbo].[match_set](id_set),
)