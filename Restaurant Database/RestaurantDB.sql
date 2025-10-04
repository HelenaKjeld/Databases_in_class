DROP DATABASE IF EXISTS RestaurantDB;
CREATE DATABASE RestaurantDB;
USE RestaurantDB;
SET default_storage_engine = InnoDB;

CREATE TABLE Customer (
    CustomerID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Firstname VARCHAR(255),
    Lastname VARCHAR(255),
    Email VARCHAR(255),
    PhoneNumber VARCHAR(15)
);

CREATE TABLE Table_ (
    TableID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    TableNumber INT,
    Amount_Of_Seats INT
);

CREATE TABLE Booking (
    BookingID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT NOT NULL,
    AmountOfPeople INT,
    BookingDate DATE,
    BookingStartTime TIME,
    BookingEndTime TIME,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

CREATE TABLE Booking_has_a_Table (
    BookingID INT NOT NULL,
    TableID INT NOT NULL,
    PRIMARY KEY (BookingID, TableID),
    FOREIGN KEY (BookingID) REFERENCES Booking(BookingID),
    FOREIGN KEY (TableID) REFERENCES Table_(TableID)
);


-- Mock data from Mockaroo.com
insert into Customer (CustomerID, Firstname, Lastname, Email, PhoneNumber) values (1, 'Sula', 'Treppas', 'streppas0@angelfire.com', '171 281 3678');
insert into Customer (CustomerID, Firstname, Lastname, Email, PhoneNumber) values (2, 'Jeanelle', 'Artrick', 'jartrick1@cbc.ca', '975 449 3500');
insert into Customer (CustomerID, Firstname, Lastname, Email, PhoneNumber) values (3, 'Stinky', 'Herrema', 'sherrema2@purevolume.com', '150 121 3682');
insert into Customer (CustomerID, Firstname, Lastname, Email, PhoneNumber) values (4, 'Bank', 'Sissel', 'bsissel3@craigslist.org', '657 670 2839');
insert into Customer (CustomerID, Firstname, Lastname, Email, PhoneNumber) values (5, 'Hubey', 'Aujean', 'haujean4@loc.gov', '750 771 9567');
insert into Customer (CustomerID, Firstname, Lastname, Email, PhoneNumber) values (6, 'Abbot', 'Sherbrook', 'asherbrook5@xrea.com', '225 396 1651');
insert into Customer (CustomerID, Firstname, Lastname, Email, PhoneNumber) values (7, 'Dredi', 'MacFayden', 'dmacfayden6@census.gov', '600 836 4257');
insert into Customer (CustomerID, Firstname, Lastname, Email, PhoneNumber) values (8, 'Collette', 'Thomson', 'cthomson7@a8.net', '770 657 1144');
insert into Customer (CustomerID, Firstname, Lastname, Email, PhoneNumber) values (9, 'Jule', 'McVittie', 'jmcvittie8@netscape.com', '295 843 0378');
insert into Customer (CustomerID, Firstname, Lastname, Email, PhoneNumber) values (10, 'Zia', 'Diable', 'zdiable9@house.gov', '314 320 0181');
insert into Customer (CustomerID, Firstname, Lastname, Email, PhoneNumber) values (11, 'Faustina', 'Cattlow', 'fcattlowa@bbc.co.uk', '244 372 6902');
insert into Customer (CustomerID, Firstname, Lastname, Email, PhoneNumber) values (12, 'Cleopatra', 'Tracy', 'ctracyb@de.vu', '153 469 2656');
insert into Customer (CustomerID, Firstname, Lastname, Email, PhoneNumber) values (13, 'Philipa', 'Weald', 'pwealdc@ucoz.ru', '667 455 9020');
insert into Customer (CustomerID, Firstname, Lastname, Email, PhoneNumber) values (14, 'Tony', 'Hadden', 'thaddend@whitehouse.gov', '130 300 7258');
insert into Customer (CustomerID, Firstname, Lastname, Email, PhoneNumber) values (15, 'Mellisent', 'Robatham', 'mrobathame@geocities.com', '278 751 9725');
insert into Customer (CustomerID, Firstname, Lastname, Email, PhoneNumber) values (16, 'Angus', 'Philson', 'aphilsonf@examiner.com', '996 534 9026');
insert into Customer (CustomerID, Firstname, Lastname, Email, PhoneNumber) values (17, 'Una', 'Bramford', 'ubramfordg@springer.com', '733 800 4947');
insert into Customer (CustomerID, Firstname, Lastname, Email, PhoneNumber) values (18, 'Sax', 'Ballinghall', 'sballinghallh@mtv.com', '742 452 9947');
insert into Customer (CustomerID, Firstname, Lastname, Email, PhoneNumber) values (19, 'Vernice', 'Crossdale', 'vcrossdalei@furl.net', '503 629 7602');
insert into Customer (CustomerID, Firstname, Lastname, Email, PhoneNumber) values (20, 'Wyn', 'Flett', 'wflettj@purevolume.com', '975 704 1381');
insert into Customer (CustomerID, Firstname, Lastname, Email, PhoneNumber) values (21, 'Agneta', 'Illsley', 'aillsleyk@odnoklassniki.ru', '574 980 0748');
insert into Customer (CustomerID, Firstname, Lastname, Email, PhoneNumber) values (22, 'Devi', 'Whaymand', 'dwhaymandl@ft.com', '238 338 2692');
insert into Customer (CustomerID, Firstname, Lastname, Email, PhoneNumber) values (23, 'Auria', 'Issatt', 'aissattm@tuttocitta.it', '883 962 5108');
insert into Customer (CustomerID, Firstname, Lastname, Email, PhoneNumber) values (24, 'Ethelda', 'Behnecken', 'ebehneckenn@bbb.org', '455 490 0774');
insert into Customer (CustomerID, Firstname, Lastname, Email, PhoneNumber) values (25, 'Wyatt', 'Winterbotham', 'wwinterbothamo@businesswire.com', '862 933 1866');
insert into Customer (CustomerID, Firstname, Lastname, Email, PhoneNumber) values (26, 'Jackqueline', 'Shakle', 'jshaklep@reverbnation.com', '526 377 5772');
insert into Customer (CustomerID, Firstname, Lastname, Email, PhoneNumber) values (27, 'Drona', 'Skylett', 'dskylettq@jalbum.net', '719 294 3523');
insert into Customer (CustomerID, Firstname, Lastname, Email, PhoneNumber) values (28, 'Franchot', 'Ventham', 'fventhamr@washington.edu', '629 678 9883');
insert into Customer (CustomerID, Firstname, Lastname, Email, PhoneNumber) values (29, 'Otes', 'Bern', 'oberns@bizjournals.com', '225 935 4250');
insert into Customer (CustomerID, Firstname, Lastname, Email, PhoneNumber) values (30, 'Shanna', 'Rossin', 'srossint@artisteer.com', '200 787 5299');


INSERT INTO Table_ (TableNumber, Amount_Of_Seats) VALUES
(1, 2),
(2, 4),
(3, 2),
(4, 6),
(5, 4),
(6, 2),
(7, 8),
(8, 4),
(9, 2),
(10, 6);

-- Realistic Booking test data for next week (2025-10-06 to 2025-10-12)
INSERT INTO Booking (CustomerID, AmountOfPeople, BookingDate, BookingStartTime, BookingEndTime) VALUES
(1, 2, '2025-10-06', '18:00:00', '20:00:00'),
(2, 4, '2025-10-07', '19:00:00', '21:00:00'),
(3, 3, '2025-10-08', '17:30:00', '19:30:00'),
(4, 6, '2025-10-09', '18:30:00', '21:00:00'),
(5, 2, '2025-10-10', '20:00:00', '22:00:00'),
(6, 5, '2025-10-11', '18:00:00', '20:30:00'),
(7, 1, '2025-10-12', '19:00:00', '20:00:00'),
(8, 3, '2025-10-06', '18:30:00', '20:30:00'),
(9, 2, '2025-10-07', '20:00:00', '22:00:00'),
(10, 4, '2025-10-08', '19:00:00', '21:00:00'),
(11, 2, '2025-10-06', '19:00:00', '21:00:00'),
(12, 4, '2025-10-07', '18:30:00', '20:30:00'),
(13, 3, '2025-10-08', '20:00:00', '22:00:00'),
(14, 6, '2025-10-09', '17:00:00', '19:30:00'),
(15, 2, '2025-10-10', '18:00:00', '20:00:00'),
(16, 5, '2025-10-11', '19:30:00', '22:00:00'),
(17, 1, '2025-10-12', '17:00:00', '18:00:00'),
(18, 3, '2025-10-06', '20:00:00', '22:00:00'),
(19, 2, '2025-10-07', '17:30:00', '19:30:00'),
(20, 4, '2025-10-08', '18:00:00', '20:00:00');

-- Assign tables to bookings (assuming TableID 1-10 exist)
INSERT INTO Booking_has_a_Table (BookingID, TableID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 1),
(12, 2),
(13, 3),
(14, 4),
(15, 5),
(16, 6),
(17, 7),
(18, 8),
(19, 9),
(20, 10);