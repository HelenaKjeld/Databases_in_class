-- Localhost DB Setup

-- DROP DATABASE IF EXISTS MovieDB;
-- CREATE DATABASE MovieDB;


USE MovieDB;


-- Remote hosting DBs (one.com etc.)
-- We need to do this, because remote hosts does not allow us root access etc.
DROP TABLE IF EXISTS AppearIn;
DROP TABLE IF EXISTS Movie;
DROP TABLE IF EXISTS Actor;


CREATE TABLE Movie
(
MovieID int AUTO_INCREMENT NOT NULL PRIMARY KEY,
Title varchar(100),
Year int,
`LengthInMinutes` int,
Genre varchar(255),
Director varchar(255),
Description varchar(255),
Rating float
);


CREATE TABLE Actor
(
ActorID int AUTO_INCREMENT NOT NULL PRIMARY KEY,
FirstName varchar(50),
LastName varchar(50),
Gender varchar(1)
);


CREATE TABLE AppearIn (
ActorID int NOT NULL,
MovieID int NOT NULL,
CONSTRAINT PK_AppearIn PRIMARY KEY (ActorID, MovieID),
FOREIGN KEY (ActorID) REFERENCES Actor (ActorID),
FOREIGN KEY (MovieID) REFERENCES Movie (MovieID)
);


INSERT INTO Movie VALUES (NULL, 'Terminator 2', 1991, 137, 'Action Sci-Fi','James Cameron', 'A cyborg, identical to the one who failed to kill Sarah Connor, must now protect her teenage son, John Connor, from a more advanced and powerful cyborg.', 8.5);

INSERT INTO Actor VALUES (NULL,'Arnold','Schwarzenegger', 'M');
INSERT INTO Actor VALUES (NULL,'Linda','Hamilton', 'F');
INSERT INTO Actor VALUES (NULL,'Edward','Furlong', 'M');

INSERT INTO AppearIn VALUES (1,1);
INSERT INTO AppearIn VALUES (2,1);
INSERT INTO AppearIn VALUES (3,1);


INSERT INTO Movie VALUES (NULL,'Aliens', 1986, 137, 'Action/Adventure Sci-Fi','James Cameron', 'Ellen Ripley is rescued by a deep salvage team after being in hypersleep for 57 years. The moon that the Nostromo visited has been colonized, but contact is lost. This time, colonial marines have impressive firepower, but will that be enough?',8.3);

INSERT INTO Actor VALUES (NULL,'Sigourney','Weaver', 'F');
INSERT INTO Actor VALUES (NULL,'Michael','Biehn', 'M');
INSERT INTO Actor VALUES (NULL,'Carrie','Henn', 'F');

INSERT INTO AppearIn VALUES (4,2);
INSERT INTO AppearIn VALUES (5,2);
INSERT INTO AppearIn VALUES (6,2);



INSERT INTO Movie VALUES (NULL,'Inception', 2010, 148, 'Action/Adventure Sci-Fi','Christopher Nolan', 'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.',8.8);

INSERT INTO Actor VALUES (NULL,'Leonardo','DiCaprio', 'M');
INSERT INTO Actor VALUES (NULL,'Joseph','Gordon-Levitt', 'M');
INSERT INTO Actor VALUES (NULL,'Ellen','Page', 'F');

INSERT INTO AppearIn VALUES (7,3);
INSERT INTO AppearIn VALUES (8,3);
INSERT INTO AppearIn VALUES (9,3);



INSERT INTO Movie VALUES (NULL,'Dumb and Dumber', 1994, 107, 'Comedy','Peter Farrelly', 'After a woman leaves a briefcase at the airport terminal, a dumb limo driver and his dumber friend set out on a hilarious cross-country road trip to Aspen, to return the briefcase to its owner.',7.3);

INSERT INTO Actor VALUES (NULL,'Jim','Carrey', 'M');
INSERT INTO Actor VALUES (NULL,'Jeff','Daniels', 'M');
INSERT INTO Actor VALUES (NULL,'Lauren','Holly', 'F');

INSERT INTO AppearIn VALUES (10,4);
INSERT INTO AppearIn VALUES (11,4);
INSERT INTO AppearIn VALUES (12,4);



INSERT INTO Movie VALUES (NULL,'The Dark Knight', 2008, 152, 'Action, Crime Drama','Christopher Nolan', 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.',9.0);

INSERT INTO Actor VALUES (NULL,'Christian','Bale', 'M');
INSERT INTO Actor VALUES (NULL,'Heath','Ledger', 'M');
INSERT INTO Actor VALUES (NULL,'Aaron','Eckhart', 'M');

INSERT INTO AppearIn VALUES (13,5);
INSERT INTO AppearIn VALUES (14,5);
INSERT INTO AppearIn VALUES (15,5);


INSERT INTO Movie VALUES (NULL,'Forrest Gump', 1994, 142, 'Drama, Romance','Robert Zemeckis', 'The presidencies of Kennedy and Johnson, the Vietnam War, the Watergate scandal and other historical events unfold from the perspective of an Alabama)an with an IQ of 75, whose only desire is to be reunited with his childhood sweetheart.',8.8);     
INSERT INTO Actor VALUES (NULL,'Tom','Hanks', 'M');
INSERT INTO Actor VALUES (NULL,'Robin','Wright', 'F');  
INSERT INTO Actor VALUES (NULL,'Gary','Sinise', 'M');
INSERT INTO AppearIn VALUES (16,6); 
INSERT INTO AppearIn VALUES (17,6);
INSERT INTO AppearIn VALUES (18,6); 
INSERT INTO Movie VALUES (NULL,'The Matrix', 1999, 136, 'Action Sci-Fi','The Wachowskis', 'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.',8.7);
INSERT INTO Actor VALUES (NULL,'Keanu','Reeves', 'M');
INSERT INTO Movie VALUES (NULL,'The Godfather', 1972, 175, 'Crime Drama','Francis Ford Coppola', 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.',9.2);
INSERT INTO Actor VALUES (NULL,'Marlon','Brando', 'M');


-- Get movies with a rating higher than the average rating 

SELECT * FROM Movie
WHERE Rating > (SELECT AVG(Rating) FROM Movie)
ORDER BY Rating DESC;

-- Get a list of all movies and the actors appearing in them. The list 
-- should be sorted alphabetically based on the actors last name. 
--1st way
SELECT m.Title, a.FirstName, a.LastName
FROM Movie m                                        
JOIN AppearIn ai ON m.MovieID = ai.MovieID
JOIN Actor a ON ai.ActorID = a.ActorID      
ORDER BY a.LastName, a.FirstName;

--2st way
SELECT Movie.Title, Actor.FirstName, Actor.LastName
FROM ((Movie
JOIN AppearIn ON Movie.MovieID = AppearIn.MovieID)
JOIN Actor ON AppearIn.ActorID = Actor.ActorID) 
ORDER BY Movie.Title,;

--3th way
SELECT m.Title, a.FirstName, a.LastName
FROM Movie m, AppearIN ap, Actor a
WHERE m.MovieID = ap.MovieID
and ap.ActorID = a.ActorID
ORDER BY m.Title;


-- Get a list of all the movies (name, year etc.) a specific actor has 
-- appeared in. 

SELECT m.Title, m.Year
FROM Movie m, AppearIN ap, Actor a
WHERE m.MovieID = ap.MovieID
and ap.ActorID = a.ActorID
and a.FirstName LIKE 'Leonardo'
ORDER BY m.Title;