CREATE DATABASE GameOfThrones;

CREATE TABLE houses (
     house_id INT AUTO_INCREMENT PRIMARY KEY,
     house_name VARCHAR(100),
     sigil VARCHAR(100),
     words VARCHAR(100),
     region VARCHAR(100)
);

CREATE TABLE characters (
    character_id INT AUTO_INCREMENT PRIMARY KEY,
    character_name VARCHAR(100),
    house_id INT,
    status VARCHAR(20),
    age INT,
    gender VARCHAR(10),
    title VARCHAR(100),
    FOREIGN KEY (house_id) REFERENCES houses(house_id)
);
