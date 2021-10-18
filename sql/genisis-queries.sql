-- create table player
CREATE TABLE [dbo].[player]
(
    id_player uniqueidentifier primary key default newid(), 
    name VARCHAR(100),
    surname VARCHAR(100),
    email VARCHAR(255),
    birthday DATE,
    player_level INT,
    player_victories INT,
    player_loss INT,
    player_forfait INT,
    points INT,
    player_pool uniqueidentifier,
)

-- create table set
CREATE TABLE [dbo].[set]
(
    id_set uniqueidentifier primary key default newsequentialid(),
    score_player1 int,
    score_player2 int,
)

-- create table score and link pk to set
CREATE TABLE [dbo].[score]
(
    id_score uniqueidentifier primary key default newid(), 
    set1_id uniqueidentifier FOREIGN KEY REFERENCES [dbo].[set](id_set),
    set2_id uniqueidentifier FOREIGN KEY REFERENCES [dbo].[set](id_set),
	set3_id uniqueidentifier FOREIGN KEY REFERENCES [dbo].[set](id_set),
)
-- create table pool
CREATE TABLE [dbo].[pool]
(
    id_pool uniqueidentifier primary key default newid(), 
    name_pool VARCHAR(50)
)

-- create table match and link pk to set-pool-player
CREATE TABLE [dbo].[match]
(
    id_match uniqueidentifier primary key default newsequentialid(), 
    date_match DATE,
    player1_id uniqueidentifier FOREIGN KEY REFERENCES [dbo].[player](id_player),
    player2_id uniqueidentifier FOREIGN KEY REFERENCES [dbo].[player](id_player),
	score_id uniqueidentifier FOREIGN KEY REFERENCES [dbo].[score](id_score),
	pool_id uniqueidentifier FOREIGN KEY REFERENCES [dbo].[pool](id_pool),
)