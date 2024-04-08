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
--identity(1,1) -? määrab igaühele oma numbri

SELECT * FROM opilane;
--andmete lisamine
INSERT INTO opilane(
eesnimi, perenimi, isikukood, aadress, sisseastumis_kp)
VALUES
('Network', 'Subnet mask', '50602297221', 'Tallinn', '2023-08-16'),
('DHCP', 'Jakovlev', '50209149238', 'Tallinn', '2023-08-16');
SELECT * FROM opilane;
