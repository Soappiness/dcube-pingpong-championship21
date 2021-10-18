-- create table player
CREATE TABLE [dbo].[player]
(
    id_player INT PRIMARY KEY NOT NULL,
    name VARCHAR(100),
    surname VARCHAR(100),
    email VARCHAR(255),
    birthday DATE,
    player_level INT,
    points INT,
    player_pool uniqueidentifier,

)

-- create table set
CREATE TABLE [dbo].[set]
(
    id_set INT PRIMARY KEY NOT NULL,
    score_player1 int,
    score_player2 int,
)

-- create table score and link pk to set
CREATE TABLE [dbo].[score]
(
    id_score INT PRIMARY KEY NOT NULL,
    set1_id int FOREIGN KEY REFERENCES [dbo].[set](id_set),
    set2_id int FOREIGN KEY REFERENCES [dbo].[set](id_set),
	set3_id int FOREIGN KEY REFERENCES [dbo].[set](id_set),
)

-- create table pool
CREATE TABLE [dbo].[pool]
(
    id_pool INT PRIMARY KEY NOT NULL,
    name_pool VARCHAR(50)
)

-- create table match and link pk to set-pool-player
CREATE TABLE [dbo].[match]
(
    id_match INT PRIMARY KEY NOT NULL,
    date_match DATE,
    player1_id int FOREIGN KEY REFERENCES [dbo].[player](id_player),
    player2_id int FOREIGN KEY REFERENCES [dbo].[player](id_player),
	score_id int FOREIGN KEY REFERENCES [dbo].[score](id_score),
	pool_id int FOREIGN KEY REFERENCES [dbo].[pool](id_pool),
)