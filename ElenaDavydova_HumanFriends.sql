-- create database Human_Friends;
use human_friends;

-- create table if not exists
-- animals(
-- 	animal_id int primary key not null AUTO_INCREMENT,
--     animal_type varchar(15) not null
-- );

-- insert into animals(animal_type) values
-- ('pets'),
-- ('pack_animals')
-- ;

-- create table if not exists
-- pets(
-- 	id int not null primary key AUTO_INCREMENT,
--     pet_name varchar(15) not null,
--     animal_id int,
--     foreign key(animal_id) references animals(animal_id)
-- );

-- insert into pets(pet_name) values
-- ('cat'),
-- ('dog'),
-- ('hamster')
-- ;

-- create table if not exists
-- cat(
-- 	id int NOT NULL primary key AUTO_INCREMENT,
--     cat_name varchar(25)  not null,
--     birth_date date,
--     commands varchar(200),
--     pets_id int,
--     foreign key (pets_id) references pets(id)
-- );

-- create table if not exists
-- dog(
-- 	id int NOT NULL primary key AUTO_INCREMENT,
--     dog_name varchar(25)  not null,
--     birth_date date,
--     commands varchar(200),
--     pets_id int,
--     foreign key (pets_id) references pets(id)    
-- );

-- create table if not exists
-- hamster(
-- 	id int NOT NULL primary key AUTO_INCREMENT,
--     hamster_name varchar(25)  not null,
--     birth_date date,
--     commands varchar(200),
--     pets_id int,
--     foreign key (pets_id) references pets(id)     
-- );

-- insert into cat(cat_name, birth_date, commands)
-- values
-- ("Whiskers",  '2019-05-15', "Sit, Pounce"),
-- ("Smugle", '2020-02-20', "Sit, Pounce, Scratch"),
-- ("Oliver", '2020-06-30', "Meow, Scratch, Jump")
-- ;

-- insert into dog(dog_name, birth_date, commands)
-- values
-- ("Fido",  '2020-01-01', "Sit, Stay, Fetch"),
-- ("Buddy", '2018-12-10', "Sit, Paw, Bark"),
-- ("Bella", '2019-11-11', "Sit, Stay, Roll")
-- ;

-- insert into hamster(hamster_name, birth_date, commands)
-- values
-- ("Hammy",  '2021-03-10', "Roll, Hide"),
-- ("Peanut", '2021-08-01', "Roll, Spin")
-- ;

-- select * from pets
--  join
-- cat on pets.id = cat.pets_id 
-- right join
-- dog on pets.id = dog.pets_id;

 






-- create table if not exists
-- pack_animals(
-- 	pack_id int primary key not null,
--     pack_name varchar(15) not null,
--     foreign key (pack_name) references animals(animal_type)
-- );

-- create table if not exists
-- horse(
-- 	id int primary key not null,
--     name varchar(25) not null,
--     birth_date date    
-- );

-- create table if not exists
-- camel(
-- 	id int primary key not null,
--     name varchar(25) not null,
--     birth_date date    
-- );

-- create table if not exists
-- donkey(
-- 	id int primary key not null,
--     name varchar(25) not null,
--     birth_date date    
-- );

-- create table if not exists
-- commands( 
-- command_id int primary key not null,
-- command varchar(100),
-- FOREIGN KEY (command_id) REFERENCES 
-- );


-- insert into pets(name, type, birth_date, commands)
-- values
-- ("Fido", "Dog", 2020-01-01, "Sit, Stay, Fetch"),
-- ("Whiskers", "Cat", 2019-05-15, "Sit, Pounce"),
-- ("Hammy", "Hamster", 2021-03-10, "Roll, Hide"),
-- ("Buddy", "Dog", 2018-12-10, "Sit, Paw, Bark"),
-- ("Smugle", "Cat", 2012, ""),
-- ("", "", , ""),
-- ("", "", , ""),
-- ("", "", , "")
-- ;