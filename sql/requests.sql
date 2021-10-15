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