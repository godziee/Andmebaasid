CREATE TABLE Language
(
ID int NOT NULL PRIMARY KEY,
Code char(3) NOT NULL,
Language varchar(50) NOT NULL,
IsOfficial bit,
Percentage decimal(5,2)
);

--tabeli andmete lisamine
SELECT * FROM Language;
INSERT INTO language (ID, Code, Language, IsOfficial, Percentage)
VALUES (100, 'EST', 'Eesti', 1, 80.5);

--Tabeli struktuuri muutmine
ALTER TABLE Language ADD Capital varchar(20);
--Veergu kustutamine
ALTER TABLE Language DROP COLUMN Capital;

--
INSERT INTO Language (ID, Code, Language, IsOfficial, Percentage, Capital)
VALUES (101, 'FIN', 'Soome', 1, 96.5, 'Helsinki');

--uuendamine
UPDATE Language SET Capital='Tallinn'
WHERE ID=100;

--tabeli kustutamine 
DROP TABLE Language;