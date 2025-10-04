--  Get a list of all tables in the restaurant (overview for the front-end)

SELECT * FROM Table_;


-- Get a list of all bookings for a given customer (when they arrive at the restaurant) ordered by date 

SELECT * FROM booking
WHERE CustomerID = 1
order by BookingDate, BookingStartTime DESC;


-- Get a list of all bookings for a given tableID, including the customers for a specific date

SELECT b.BookingID, b.CustomerID, c.Firstname, c.Lastname, b.AmountOfPeople, b.BookingDate, b.BookingStartTime, b.BookingEndTime
FROM Booking b
JOIN Booking_has_a_Table bt ON b.BookingID = bt.BookingID
JOIN Customer c ON b.CustomerID = c.CustomerID
WHERE bt.TableID = 1
AND b.BookingDate = '2025-10-06'
ORDER BY b.BookingStartTime;
