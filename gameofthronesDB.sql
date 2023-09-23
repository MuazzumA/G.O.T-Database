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

INSERT INTO houses (house_name, sigil, words, region)
VALUES 
    ('House Stark', 'A grey direwolf on a white field', 'Winter is Coming', 'The North'),
    ('House Lannister', 'A golden lion on a crimson field', 'Hear Me Roar!', 'The Westerlands'),
    ('House Targaryen', 'A red three-headed dragon on a black field', 'Fire and Blood', 'Dragonstone'),
    ('House Baratheon', 'A crowned black stag on a gold field', 'Ours is the Fury', 'The Stormlands'),
    ('House Greyjoy', 'A golden kraken on a black field', 'We Do Not Sow', 'Iron Islands'),
    ('House Tyrell', 'A golden rose on a green field', 'Growing Strong', 'The Reach'),
    ('House Martell', 'A red sun pierced by a gold spear on an orange field', 'Unbowed, Unbent, Unbroken', 'Dorne'),
    ('House Arryn', 'A white falcon and crescent moon on a blue field', 'As High as Honor', 'The Vale'),
    ('House Tully', 'A silver trout leaping on a blue and red stripped field', 'Family, Duty, Honor', 'The Riverlands'),
    ('House Frey', 'Two blue towers united by a bridge on a silver-grey field', 'We Stand Together', 'The Riverlands');
