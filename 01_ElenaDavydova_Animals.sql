-- CREATE DATABASE Human_friends; 
use human_friends;
/*
создать таблицы, которые будут соответствовать классам "Pets" и "Pack animals", 
и в этих таблицах будут поля, которые характеризуют каждый тип животных 
(например, имена, даты рождения, выполняемые команды и т.д.). 
*/
create table if not exists
animals(
id int not null auto_increment primary key,
animal_type varchar(25) not null
);
insert into animals(animal_type) values
('pets'),
('pack_animals');

-- select * from animals;

create table if not exists
pets(
id int not null auto_increment primary key,
animal_name varchar(25) not null,
class_id int,
foreign key (class_id) references animals (id) on delete cascade on update cascade
);

insert into pets(animal_name, class_id) values
('cat', 1),
('dog', 1),
('hamster', 1);

-- select * from pets;

create table if not exists
pack_animals(
id int not null auto_increment primary key,
animal_name varchar(25) not null,
class_id int,
foreign key (class_id) references animals (id) on delete cascade on update cascade
);

insert into pack_animals(animal_name, class_id) values
('horse', 2),
('camel', 2),
('donkey', 2);

-- select * from pack_animals;

-- Заполнить таблицы данными о животных, их командах и датами рождения.
create table if not exists
cats(
	id int not null auto_increment primary key,
    name varchar(25) not null,
    birth_date date,
    commands varchar(200),
    animal_id int,
    foreign key (animal_id) references pets (id) on delete cascade on update cascade
);

insert into cats(name, birth_date, commands, animal_id) values
("Whiskers",  '2022-05-15', "Sit, Pounce", 1),
("Smugle",  '2023-02-20', "Sit, Pounce, Scratch", 1),
("Oliver",  '2019-06-30', "Meow, Scratch, Jump", 1);

create table if not exists
dogs(
	id int not null auto_increment primary key,
    name varchar(25) not null,
    birth_date date,
    commands varchar(200),
    animal_id int,
    foreign key (animal_id) references pets (id) on delete cascade on update cascade
);

insert into dogs(name, birth_date, commands, animal_id) values
("Fido", '2020-01-01', "Sit, Stay, Fetch", 2),
("Buddy", '2018-12-10', "Sit, Paw, Bark", 2),
("Bella", '2019-11-11', "Sit, Stay, Roll", 2);

create table if not exists
hamsters(
	id int not null auto_increment primary key,
    name varchar(25) not null,
    birth_date date,
    commands varchar(200),
    animal_id int,
    foreign key (animal_id) references pets (id) on delete cascade on update cascade
);

insert into hamsters(name, birth_date, commands, animal_id) values
("Hammy", '2022-11-01', "Roll, Hide", 3),
("Peanut", '2023-02-10', "Roll, Spin", 3);

create table if not exists
horses(
	id int not null auto_increment primary key,
    name varchar(25) not null,
    birth_date date,
    commands varchar(200),
    animal_id int,
    foreign key (animal_id) references pack_animals (id) on delete cascade on update cascade
);

insert into horses(name, birth_date, commands, animal_id) values
("Thunder", '2018-01-01', "Trot, Canter, Gallop", 1),
("Storm", '2017-12-10', "Trot, Canter", 1),
("Blaze", '2013-11-11', "Trot, Jump, Gallop", 1);

create table if not exists
camels(
	id int not null auto_increment primary key,
    name varchar(25) not null,
    birth_date date,
    commands varchar(200),
    animal_id int,
    foreign key (animal_id) references pack_animals (id) on delete cascade on update cascade
);

insert into camels(name, birth_date, commands, animal_id) values
("Sandy", '2016-11-03', "Walk, Carry Load", 2),
("Dune", '2018-12-12', "Walk, Sit", 2),
("Sahara", '2015-08-14', "Walk, Run", 2);

create table if not exists
donkeys(
	id int not null auto_increment primary key,
    name varchar(25) not null,
    birth_date date,
    commands varchar(200),
    animal_id int,
    foreign key (animal_id) references pack_animals (id) on delete cascade on update cascade
);

insert into donkeys(name, birth_date, commands, animal_id) values
("Eeyore", '2018-11-03', "Walk, Carry Load, Bray", 3),
("Burro", '2019-10-12', "Walk, Bray, Kick", 3);

-- Удалить записи о верблюдах и объединить таблицы лошадей и ослов.
delete from camels;
select * from camels;

select name, birth_date, commands from horses
union select name, birth_date, commands from donkeys;

-- Создать новую таблицу для животных в возрасте от 1 до 3 лет
-- и вычислить их возраст с точностью до месяца.
create table young_animals
select name, birth_date, commands from hamsters
union select name, birth_date, commands from cats
union select name, birth_date, commands from dogs
union select name, birth_date, commands from donkeys
union select name, birth_date, commands from horses
where birth_date > (date_sub(curdate(), interval 36 month))
and birth_date < (date_sub(curdate(), interval 12 month));

-- between adddate(curdate(), interval(3) year)
-- and adddate(curdate(), interval(1) year);

select * from young_animals;

-- Объединить все созданные таблицы в одну, сохраняя информацию о 
-- принадлежности к исходным таблицам.
create table all_tables as
(
select * from cats
union select * from dogs
union select * from hamsters
union select * from camels
union select * from horses
union select * from donkeys
union select null, name, birth_date, commands, null from young_animals
);

select * from all_tables;



