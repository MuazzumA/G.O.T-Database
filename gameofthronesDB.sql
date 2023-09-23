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

-- Characters for House Stark
INSERT INTO characters (character_name, house_id, status, age, gender, title)
VALUES
    ('Jon Snow', 1, 'Alive', 30, 'Male', 'Lord Commander of the Night''s Watch'),
    ('Arya Stark', 1, 'Alive', 18, 'Female', 'Assassin'),
    ('Bran Stark', 1, 'Alive', 20, 'Male', 'King of the Andals, the Rhoynar, and the First Men'),
    ('Sansa Stark', 1, 'Alive', 23, 'Female', 'Queen in the North'),
    ('Eddard Stark', 1, 'Deceased', 35, 'Male', 'Lord of Winterfell');

-- Characters for House Lannister
INSERT INTO characters (character_name, house_id, status, age, gender, title)
VALUES
    ('Tyrion Lannister', 2, 'Alive', 38, 'Male', 'Hand of the Queen'),
    ('Cersei Lannister', 2, 'Deceased', 40, 'Female', 'Queen of the Andals and the First Men'),
    ('Jaime Lannister', 2, 'Deceased', 42, 'Male', 'Kingslayer'),
    ('Tywin Lannister', 2, 'Deceased', 67, 'Male', 'Hand of the King'),
    ('Joffrey Baratheon', 2, 'Deceased', 18, 'Male', 'King of the Andals and the First Men');

-- Characters for House Targaryen
INSERT INTO characters (character_name, house_id, status, age, gender, title)
VALUES
    ('Daenerys Targaryen', 3, 'Deceased', 24, 'Female', 'Queen of the Andals, the Rhoynar, and the First Men'),
    ('Rhaegar Targaryen', 3, 'Deceased', 35, 'Male', 'Prince of Dragonstone'),
    ('Viserys Targaryen', 3, 'Deceased', 29, 'Male', 'King of the Andals and the First Men'),
    ('Aegon Targaryen', 3, 'Deceased', 2, 'Male', 'Infant'),
    ('Rhaenys Targaryen', 3, 'Deceased', 5, 'Female', 'Infant');

-- Characters for House Baratheon
INSERT INTO characters (character_name, house_id, status, age, gender, title)
VALUES
    ('Robert Baratheon', 4, 'Deceased', 40, 'Male', 'King of the Andals and the First Men'),
    ('Stannis Baratheon', 4, 'Deceased', 42, 'Male', 'Lord of Dragonstone'),
    ('Renly Baratheon', 4, 'Deceased', 32, 'Male', 'Lord of Storms End'),
    ('Shireen Baratheon', 4, 'Deceased', 10, 'Female', 'Princess of Dragonstone'),
    ('Gendry', 4, 'Alive', 23, 'Male', 'Lord of Storms End');

-- Characters for House Greyjoy
INSERT INTO characters (character_name, house_id, status, age, gender, title)
VALUES
    ('Balon Greyjoy', 5, 'Deceased', 63, 'Male', 'Lord Reaper of Pyke'),
    ('Euron Greyjoy', 5, 'Deceased', 44, 'Male', 'King of the Iron Islands'),
    ('Aeron Greyjoy', 5, 'Deceased', 49, 'Male', 'Drowned Man'),
    ('Theon Greyjoy', 5, 'Alive', 28, 'Male', 'Prince of Winterfell'),
    ('Yara Greyjoy', 5, 'Alive', 29, 'Female', 'Queen of the Iron Islands');

-- Characters for House Tyrell
INSERT INTO characters (character_name, house_id, status, age, gender, title)
VALUES
    ('Margaery Tyrell', 6, 'Deceased', 23, 'Female', 'Queen of the Seven Kingdoms'),
    ('Loras Tyrell', 6, 'Deceased', 22, 'Male', 'Knight of Flowers'),
    ('Olenna Tyrell', 6, 'Deceased', 82, 'Female', 'Queen of Thorns'),
    ('Mace Tyrell', 6, 'Deceased', 52, 'Male', 'Lord of Highgarden'),
    ('Garlan Tyrell', 6, 'Alive', 34, 'Male', 'Lord of Brightwater Keep');

-- Characters for House Martell
INSERT INTO characters (character_name, house_id, status, age, gender, title)
VALUES
    ('Doran Martell', 7, 'Deceased', 52, 'Male', 'Prince of Dorne'),
    ('Oberyn Martell', 7, 'Deceased', 40, 'Male', 'Red Viper'),
    ('Quentyn Martell', 7, 'Deceased', 23, 'Male', 'Prince of Dorne'),
    ('Arianne Martell', 7, 'Alive', 31, 'Female', 'Princess of Dorne'),
    ('Trystane Martell', 7, 'Deceased', 18, 'Male', 'Prince of Dorne');

-- Characters for House Arryn
INSERT INTO characters (character_name, house_id, status, age, gender, title)
VALUES
    ('Jon Arryn', 8, 'Deceased', 60, 'Male', 'Hand of the King'),
    ('Lysa Arryn', 8, 'Deceased', 34, 'Female', 'Lady of the Eyrie'),
    ('Robin Arryn', 8, 'Alive', 9, 'Male', 'Lord of the Eyrie'),
    ('Petyr Baelish', 8, 'Deceased', 47, 'Male', 'Lord Protector of the Vale'),
    ('Yohn Royce', 8, 'Alive', 53, 'Male', 'Head of House Royce');

-- Characters for House Tully
INSERT INTO characters (character_name, house_id, status, age, gender, title)
VALUES
    ('Hoster Tully', 9, 'Deceased', 65, 'Male', 'Lord of Riverrun'),
    ('Catelyn Stark', 9, 'Deceased', 36, 'Female', 'Lady of Winterfell'),
    ('Edmure Tully', 9, 'Alive', 32, 'Male', 'Lord of Riverrun'),
    ('Brynden Tully', 9, 'Alive', 69, 'Male', 'Lord of Riverrun'),
    ('Lysa Arryn', 9, 'Deceased', 34, 'Female', 'Lady of the Eyrie');

-- Characters for House Frey
INSERT INTO characters (character_name, house_id, status, age, gender, title)
VALUES
    ('Walder Frey', 10, 'Deceased', 92, 'Male', 'Lord of the Crossing'),
    ('Lothar Frey', 10, 'Deceased', 45, 'Male', 'Frey Commander'),
    ('Roslin Frey', 10, 'Alive', 22, 'Female', 'Lady of Riverrun'),
    ('Edwyn Frey', 10, 'Alive', 40, 'Male', 'Heir to the Twins'),
    ('Black Walder Rivers', 10, 'Deceased', 42, 'Male', 'Frey Commander');
