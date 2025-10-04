DROP DATABASE IF EXISTS MovieeDB;
CREATE DATABASE MovieeDB;
USE MovieeDB;
SET default_storage_engine=InnoDB;

CREATE TABLE Actor (
    ActorID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Firstname VARCHAR(255),
    Lastname VARCHAR(255),
    BirthDate DATE,
    Gender VARCHAR(1)
);

CREATE TABLE Category (
    CategoryID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255)
);


CREATE TABLE Movie (
    MovieID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255),
    Duration VARCHAR(10),
    Rating VARCHAR(6)
);


CREATE TABLE Appears_in (
    MovieID INT NOT NULL,
    ActorID INT NOT NULL,
    PRIMARY KEY (MovieID, ActorID),
    FOREIGN KEY (MovieID) REFERENCES Movie(MovieID),
    FOREIGN KEY (ActorID) REFERENCES Actor(ActorID)
);


CREATE TABLE Has_a (
    MovieID INT NOT NULL,
    CategoryID INT NOT NULL,
    PRIMARY KEY (MovieID, CategoryID),
    FOREIGN KEY (MovieID) REFERENCES Movie(MovieID),
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
);

-- ALTER TABLE Appears_in ENGINE=InnoDB;
-- ALTER TABLE Has_a ENGINE=InnoDB;
-- ALTER TABLE Actor ENGINE=InnoDB;
-- ALTER TABLE Category ENGINE=InnoDB;
-- ALTER TABLE Movie ENGINE=InnoDB;