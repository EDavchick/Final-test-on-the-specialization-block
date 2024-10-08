-- create database humanFriends;
use humanFriends;

create table if not exists 
pets(
	id int not null auto_increment primary key,
    name_animal varchar(25) not null,
    type_animal varchar(25) not null,
    birth_date date,
    commands varchar(200)
);
create table if not exists 
pack_animals(
	id int not null auto_increment primary key,
    name_animal varchar(25) not null,
    type_animal varchar(25) not null,
    birth_date date,
    commands varchar(200)
);

insert into pets(name_animal, type_animal, birth_date, commands) values
("Fido",  'dog', '2020-01-01', "Sit, Stay, Fetch"),
("Whiskers",  'cat',  '2019-05-15', "Sit, Pounce"),
("Hammy",  'hamster',  '2021-03-10', "Roll, Hide"),
("Buddy",  'dog', '2018-12-10', "Sit, Paw, Bark"),
("Smugle",  'cat', '2020-02-20', "Sit, Pounce, Scratch"),
("Peanut",  'hamster', '2021-08-01', "Roll, Spin"),
("Bella",  'dog', '2019-11-11', "Sit, Stay, Roll"),
("Oliver",  'cat', '2020-06-30', "Meow, Scratch, Jump")
;

insert into pack_animals(name_animal, type_animal, birth_date, commands) values
("Thunder", 'horse', '2015-07-21', "Trot, Canter, Gallop"),
("Sandy", 'camel', '2016-11-03', "Walk, Carry Load"),
("Eeyore", 'donkey', '2017-09-18', "Walk, Carry Load, Bray"),
("Storm", 'horse', '2014-05-05', "Trot, Canter"),
("Dune", 'camel', '2018-12-12', "Walk, Sit"),
("Burro", 'donkey', '2019-01-23', "Walk, Bray, Kick"),
("Blaze", 'horse', '2016-02-29', "Trot, Jump, Gallop"),
("Sahara", 'camel', '2015-08-14', "Walk, Run")
;

-- ==========================================================================

-- select * from pets
-- union
-- select * from pack_animals;

-- Удалить записи о верблюдах и объединить таблицы лошадей и ослов.
set SQL_SAFE_UPDATES = 0;
delete from pack_animals
where type_animal = 'camel';
select name_animal, type_animal, birth_date, commands from pack_animals;

-- Создать новую таблицу для животных в возрасте от 1 до 3 лет и 
-- вычислить их возраст с точностью до месяца.
create table young_animals(
	id int not null auto_increment primary key,
    name_animal varchar(25) not null,
    type_animal varchar(25) not null,
    birth_date date,
    commands varchar(200)
);









