-- create database animals;
use animals;

-- create table if not exists
-- pets(
-- 	id int not null primary key AUTO_INCREMENT,
--     pet_name varchar(15) not null
-- );
-- create table if not exists
-- pack_animals(
-- 	id int not null primary key AUTO_INCREMENT,
--     pack_name varchar(15) not null
-- );
-- insert into pets(pet_name) values
-- ('cat'),
-- ('dog'),
-- ('hamster');
-- insert into pack_animals(pack_name) values
-- ('horse'),
-- ('camel'),
-- ('donkey');

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

-- insert into cat(cat_name, pets_id, birth_date, commands)
-- values
-- ("Whiskers",  1, '2019-05-15', "Sit, Pounce"),
-- ("Smugle",  1, '2020-02-20', "Sit, Pounce, Scratch"),
-- ("Oliver",  1, '2020-06-30', "Meow, Scratch, Jump")
-- ;
-- insert into dog(dog_name, pets_id, birth_date, commands)
-- values
-- ("Fido", 2, '2020-01-01', "Sit, Stay, Fetch"),
-- ("Buddy", 2, '2018-12-10', "Sit, Paw, Bark"),
-- ("Bella", 2, '2019-11-11', "Sit, Stay, Roll")
-- ;
-- insert into hamster(hamster_name, pets_id, birth_date, commands)
-- values
-- ("Hammy", 3, '2021-03-10', "Roll, Hide"),
-- ("Peanut", 3, '2021-08-01', "Roll, Spin")
-- ;

-- create table if not exists
-- horse(
-- 	id int NOT NULL primary key AUTO_INCREMENT,
--     horse_name varchar(25)  not null,
--     birth_date date,
--     commands varchar(200),
--     pack_id int,
--     foreign key (pack_id) references pack_animals(id)     
-- );
-- create table if not exists
-- camel(
-- 	id int NOT NULL primary key AUTO_INCREMENT,
--     camel_name varchar(25)  not null,
--     birth_date date,
--     commands varchar(200),
--     pack_id int,
--     foreign key (pack_id) references pack_animals(id)     
-- );
-- create table if not exists
-- donkey(
-- 	id int NOT NULL primary key AUTO_INCREMENT,
--     donkey_name varchar(25)  not null,
--     birth_date date,
--     commands varchar(200),
--     pack_id int,
--     foreign key (pack_id) references pack_animals(id)     
-- );
-- insert into horse(horse_name, pack_id, birth_date, commands)
-- values
-- ("Thunder", 1, '2015-07-21', "Trot, Canter, Gallop"),
-- ("Storm", 1, '2014-05-05', "Trot, Canter"),
-- ("Blaze", 1, '2016-02-29', "Trot, Jump, Gallop")
-- ;
-- insert into camel(camel_name, pack_id, birth_date, commands)
-- values
-- ("Sandy", 2, '2016-11-03', "Walk, Carry Load"),
-- ("Dune", 2, '2018-12-12', "Walk, Sit"),
-- ("Sahara", 2, '2015-08-14', "Walk, Run")
-- ;
-- insert into donkey(donkey_name, pack_id, birth_date, commands)
-- values
-- ("Eeyore", 3, '2017-09-18', "Walk, Carry Load, Bray"),
-- ("Burro", 3, '2019-01-23', "Walk, Bray, Kick")
-- ;


-- ==================================================================
-- Удалить записи о верблюдах и объединить таблицы лошадей и ослов.
set SQL_SAFE_UPDATES = 0;
delete from camel;

select horse_name, pack_animals.pack_name, birth_date, commands
from horse
left join pack_animals on horse.pack_id = pack_animals.id
union
select donkey_name, pack_animals.pack_name, birth_date, commands
from donkey
left join pack_animals on donkey.pack_id = pack_animals.id;  

-- =======================================================================
-- Создать новую таблицу для животных в возрасте от 1 до 3 лет и вычислить 
-- их возраст с точностью до месяца.
create table young_animals(
	id int not null,
    name_animal varchar(25) not null,
    birth_date date,
    commands varchar(200),
    age varchar(50)
);
insert into young_animals(id, name_animal, birth_date, commands)
select id, cat_name, birth_date, commands,
concat(cast(timestampdiff(year, birth_date, now()) as char), " year ",
cast(mod(timestampdiff(month, birth_date, now()), 12) as char), "month" ) as age
from cat
where timestampdiff(month, birth_date, now()) between 12 and 36;










-- ====================== FOR ME =============================================
-- выбрать всех pets
-- select cat_name, pets.pet_name, birth_date, commands
-- from cat
-- left join pets on cat.pets_id = pets.id
-- union
-- select dog_name, pets.pet_name, birth_date, commands
-- from dog
-- left join pets on dog.pets_id = pets.id
-- union
-- select hamster_name, pets.pet_name, birth_date, commands
-- from hamster
-- left join pets on hamster.pets_id = pets.id;
    
-- выбрать всех pack_animals    
-- select horse_name, pack_animals.pack_name, birth_date, commands
-- from horse
-- left join pack_animals on horse.pack_id = pack_animals.id
-- union
-- select camel_name, pack_animals.pack_name, birth_date, commands
-- from camel
-- left join pack_animals on camel.pack_id = pack_animals.id
-- union
-- select donkey_name, pack_animals.pack_name, birth_date, commands
-- from donkey
-- left join pack_animals on donkey.pack_id = pack_animals.id; 

-- выбрать всех pets & pack_animals    
-- select cat_name, pets.pet_name, birth_date, commands
-- from cat
-- left join pets on cat.pets_id = pets.id
-- union
-- select dog_name, pets.pet_name, birth_date, commands
-- from dog
-- left join pets on dog.pets_id = pets.id
-- union
-- select hamster_name, pets.pet_name, birth_date, commands
-- from hamster
-- left join pets on hamster.pets_id = pets.id
-- union
-- select horse_name, pack_animals.pack_name, birth_date, commands
-- from horse
-- left join pack_animals on horse.pack_id = pack_animals.id
-- union
-- select camel_name, pack_animals.pack_name, birth_date, commands
-- from camel
-- left join pack_animals on camel.pack_id = pack_animals.id
-- union
-- select donkey_name, pack_animals.pack_name, birth_date, commands
-- from donkey
-- left join pack_animals on donkey.pack_id = pack_animals.id;  



