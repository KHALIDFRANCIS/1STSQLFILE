SHOW DATABASES;

CREATE DATABASE BOOKZ;
USE BOOKZ;

SHOW DATABASES;

/*------------------------------------------------------------------*/

CREATE TABLE AUTHOR (
lastname VARCHAR(30) NOT NULL,
firstname VARCHAR(30) NOT NULL,
email NVARCHAR(30) NOT NULL,
PRIMARY KEY (lastname)
);

DESCRIBE AUTHOR;

INSERT INTO AUTHOR (firstname, lastname, email) VALUES 
('Mic', 'Croms', 'MC@aol.com'),
('Steve', 'Harvey', 'Sharvey@gmailcom'),
('JK', 'Rowling', 'jkrowl@aol.com'),
('Sponge', 'Bob', 'Spgbob@Nick.net');

ALTER TABLE AUTHOR ADD id INT(20) NOT NULL;
UPDATE AUTHOR SET id = 1 WHERE lastname = 'Bob';
UPDATE AUTHOR SET id = 2 WHERE lastname = 'Croms';
UPDATE AUTHOR SET id = 3 WHERE lastname = 'Harvey';
UPDATE AUTHOR SET id = 4 WHERE lastname = 'Rowling';

SELECT * FROM AUTHOR;

SHOW TABLES;

/*------------------------------------------------------------------*/

CREATE TABLE PAPER ( 
filename CHAR(50) NOT NULL, 
absrract CHAR(50) NOT NULL, 
title CHAR(50) NOT NULL, 
id INT(50) NOT NULL, 
PRIMARY KEY (filename) 
);

DESCRIBE PAPER;

INSERT INTO PAPER (filename, absrract, title, id) VALUES 
('BBottom', 'BB', 'Bikini Bottom', '1'), 
('TBOCROMS', 'TBOC', 'The Book of Croms', '2'),
('TLAMan', 'TLAM', 'Think Like A Man', '3'),
('HPotter', 'HP', 'Harry Potter', '4');

SELECT * FROM PAPER;

SHOW TABLES;

/*------------------------------------------------------------------*/ 

CREATE TABLE REVIEWER ( 
lastname CHAR(50) NOT NULL, 
firstname CHAR(50) NOT NULL,
phonenum INT(10) NOT NULL, 
email CHAR(50) NOT NULL, 
affiliation CHAR(50) NOT NULL, 
authorfeedback VARCHAR(100), 
committeefeedback VARCHAR(100), 
PRIMARY KEY (lastname) 
); 

DESCRIBE REVIEWER;

INSERT INTO REVIEWER ( lastname, firstname, phonenum, email, affiliation, authorfeedback, committeefeedback) VALUES
('Reigns', 'Roman', 7187187181, 'RRgmailcom', 'WWE', NULL, NULL),
('Man', 'Spider', 917917917, 'SPMaolcom', 'Marvel', NULL, NULL),
('Tubbies', 'Tele', 000111222, 'TTaolcom', 'Channeltirteen', NULL, NULL),
('SUNG', 'SAM', 234534344, 'NotenineAttCom', 'Smartphone', NULL, NULL);

SELECT * FROM REVIEWER;

SHOW TABLES;

/*------------------------------------------------------------------*/

CREATE TABLE REVIEW ( 
reviewerid INT(20) NOT NULL, 
id INT(20) NOT NULL, 
paperid INT(20) NOT NULL, 
meritscore INT(20) NOT NULL, 
readabilityscore INT(3) NOT NULL, 
originaliyscore INT(3) NOT NULL, 
relevancescore INT(3) NOT NULL, 
recommendation VARCHAR(100), 
PRIMARY KEY (reviewerid) );

DESCRIBE REVIEW;

INSERT INTO REVIEW ( reviewerid, id, paperid, meritscore, readabilityscore, originaliyscore, relevancescore, recommendation) VALUES 
(111, 1, 11, 20, 100, 80, 90, 'This is suitable for all ages'),
(222, 2, 22, 80, 100, 90, 100, 'Edge of your seat book'),
(333, 3, 33, 90, 80, 86, 95, NULL),
(444, 4, 44, 56, 90, 86, 100, NULL); 

SELECT * FROM REVIEW;

SHOW TABLES;

/*------------------------------------------------------------------*/

CREATE TABLE TOPIC ( 
topicname CHAR(25) NOT NULL, 
id INT(20) NOT NULL, 
PRIMARY KEY (topicname) );

DESCRIBE TOPIC;

INSERT INTO TOPIC (topicname, id) VALUES
('foolishness', 1),
('Horror', 2),
('Romance', 3),
('Sorcery', 4);

SELECT * FROM TOPIC;
















