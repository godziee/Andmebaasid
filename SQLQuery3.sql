CREATE DATABASE Mahlad;
USE Mahlad;
CREATE TABLE Mahl(
id int primary key,
mahl varchar(30),
firm varchar(15),
hind int);

insert into Mahl (id, mahl, firm, hind) VALUES (1, 'Õunamahl', 'Aura', 112);
insert into Mahl (id, mahl, firm, hind) VALUES (2, 'Granaatõunamahl', 'Cido', 134)
insert into Mahl (id, mahl, firm, hind) VALUES (3, 'Apelsinimahl', 'Aura', 152)
insert into Mahl (id, mahl, firm, hind) VALUES (4, 'Nektarimahl', 'Cido', 167)
insert into Mahl (id, mahl, firm, hind) VALUES (5, 'Multimahl', 'Põltsamaa', 109)
insert into Mahl (id, mahl, firm, hind) VALUES (6, 'Maasikamahl', 'Aura', 117);
insert into Mahl (id, mahl, firm, hind) VALUES (7, 'Ploomimahl', 'Cido', 141)
insert into Mahl (id, mahl, firm, hind) VALUES (8, 'Viinamarjamahl', 'Naturalis', 166)
insert into Mahl (id, mahl, firm, hind) VALUES (9, 'Mustikamahl', 'Cido', 181)
insert into Mahl (id, mahl, firm, hind) VALUES (10, 'Õunamahl', 'Põltsamaa', 111)

SELECT * FROM Mahl

GRANT SELECT, INSERT, UPDATE on Mahl to Master