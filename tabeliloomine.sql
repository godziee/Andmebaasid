SQL SERVER MANAGEMENT STUUDIO

--ab loomine
CREATE DATABASE JakovlevLOGITpv22;
USE JakovlevLOGITpv22;
--tabeli loomine
CREATE TABLE opilane(
id int Primary Key identity(1,1),
eesnimi varchar(20),
perenimi varchar(25) not null,
isikukood char(11) unique,
aadress TEXT,
sisseastumis_kp date
);
--primary key - ? primaarne võti mis annab unikaalsus
--identity(1,1) -? määrab igaühele oma numbri-- väli täidetakse automaatselt

SELECT * FROM opilane;
--andmete lisamine
INSERT INTO opilane(
eesnimi, perenimi, isikukood, aadress, sisseastumis_kp)
VALUES
('Network', 'Subnet mask', '50602297221', 'Tallinn', '2023-08-16'),
('DHCP', 'Jakovlev', '50209149238', 'Tallinn', '2023-08-16');
SELECT * FROM opilane;


--tabeli Ryhm loomine
CREATE TABLE ryhm(
ryhmId int Primary Key identity(1,1),
ryhmNimetus varchar(20) UNIQUE,
osakond varchar(3));
SELECT * FROM ryhm;
INSERT INTO ryhm(ryhmNimetus, osakond)
VALUES ('TARpv23', 'IT')

SELECT * FROM ryhm;
SELECT * FROM opilane;
--FOREIGN KEY --->PK teises tabelis
ALTER TABLE opilane ADD ryhmId int;
--tabeli opilane uuendamine
Update opilane SET ryhmID=1;
--FK lisamine opilane tabelisse
ALTER TABLE opilane
ADD FOREIGN KEY (ryhmId) REFERENCES ryhm(ryhmId);

INSERT INTO opilane(
eesnimi, perenimi, isikukood, aadress, sisseastumis_kp, ryhmId)
VALUES
('Test', 'Test', '50602297321', 'Tallinn', '2023-08-16', 1);
SELECT * FROM opilane;

--tabeli kustutamine
drop table ryhmajuhataja
--tabeli ryhmajuhataja loomine

CREATE TABLE ryhmajuhataja(
juhatajaId int Primary Key identity(1,1),
eesnimi varchar(20),
perenimi varchar(25),
telefon varchar(13));

INSERT INTO ryhmajuhataja(eesnimi, perenimi, telefon)
VALUES ('Bog', 'Jak','37256262626');

SELECT * FROM ryhmajuhataja;
SELECT * FROM ryhm;

--FOREIGN KEY --->PK teises tabelis
-- veergu lisamine tabelisse
ALTER TABLE ryhm ADD juhatajaId int;
--tabeli opilane uuendamine
Update ryhm SET juhatajaId=1;
--FK lisamine opilane tabelisse
ALTER TABLE ryhm
ADD FOREIGN KEY (juhatajaId) REFERENCES ryhmajuhataja(juhatajaId);

INSERT INTO ryhm(ryhmNimetus, osakond, juhatajaId)
VALUES ('TARpv22', 'IT', 1);







--tabeli hinnang loomine

CREATE TABLE hinnang(
hinnangId int Primary Key identity(1,1),
kuupaev date,
telefon varchar(13)),
opilaneId int Primary Key identity(1,1),
juhatajaId int Primary Key identity(1,1),
hinnang TEXT,
);
INSERT INTO hinanng(kuupaev, hinnang)
VALUES ('06.09.2023', 'Tubli!');

--FOREIGN KEY --->PK teises tabelis
-- veergu lisamine tabelisse
ALTER TABLE hinnang ADD hinnangId int;


--FK lisamine hinnang tabelisse
ALTER TABLE ryhmajuhataja
ADD FOREIGN KEY (hinnangId) REFERENCES hinnang(hinnangId);

--FK lisamine opilane tabelisse
ALTER TABLE opilane
ADD FOREIGN KEY (hinnangId) REFERENCES hinnang(hinnangId);



-- таблица hinnang НЕ РАБОТАЕТ