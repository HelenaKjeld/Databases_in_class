DROP DATABASE IF EXISTS MovieeDB;
CREATE DATABASE MovieeDB;
USE MovieeDB; 


CREATE TABLE 'Actor' (
    ActorID int Not Null AUTO_INCREMENT PRIMARY KEY,
    Firstname varcher (255),
    Lastname varcher (255),
    BirthDate DATE,
    Gender varcher (1)
); 

CREATE TABLE 'Category' (
    CategoryID int Not Null AUTO_INCREMENT PRIMARY KEY,
    Name varcher (255)
)

CREATE TABLE 'Movie' (
    MovieID int Not Null AUTO_INCREMENT PRIMARY KEY,
    Name varcher (255),
    Length varcher (10),
    Ratting varcher (6)
  )