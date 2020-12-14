use HotelSchema;

-- 1. Query that returns a list of reservations ending with July 2023, including guest name, room number, and reservations dates
SELECT Guest.FirstName, Reservation.RoomNumber, Reservation.StartDate, Reservation.EndDate
FROM Reservation
	LEFT JOIN Guest ON
		Reservation.GuestId = Guest.GuestId
WHERE EndDate LIKE '2023-07-%';
-- 2. Query that returns a list of all reservations for rooms with jacuzzi, guest name, room number, and dates of reservation
SELECT Guest.FirstName, Reservation.RoomNumber, Reservation.StartDate, Reservation.EndDate, Amenity.AmenityName
FROM Reservation
	LEFT JOIN Guest ON
		Reservation.GuestId = Guest.GuestId
	RIGHT JOIN RoomAmenity ON
		Reservation.RoomNumber = RoomAmenity.RoomNumber
	LEFT JOIN Amenity ON
		RoomAmenity.AmenityId = Amenity.AmenityId
WHERE Amenity.AmenityName = 'Jacuzzi';
        
-- 3 Query that returns all the rooms reserved for a specific guest, including name, rooms reserved, reservation dates,  and number of people in reservation

SELECT Guest.FirstName, Guest.LastName, Reservation.RoomNumber, Reservation.StartDate, Reservation.EndDate, Reservation.Adults, Reservation.Children
FROM Reservation
	LEFT JOIN Guest ON
		Reservation.GuestId = Guest.GuestId
WHERE Guest.FirstName = 'Karie' AND Guest.LastName = 'Yang';

-- 4 Query return a list of rooms, reservations ID, cost of reservation. 

SELECT Reservation.RoomNumber, Reservation.ReservationId, Reservation.TotalCost
FROM Reservation;

-- 5 Quert returns all the rooms accommodating at least three guests and reserved any date in April 2023 (Not that Jeremiah is not in the list)
SELECT Reservation.RoomNumber, Reservation.StartDate, Reservation.EndDate, Room.MaximumOccupancy, SUM(Reservation.Adults + Reservation.Children) AS NumberOfGuests
FROM Reservation
	LEFT JOIN Room ON
		Reservation.RoomNumber = Room.RoomNumber
			AND Room.MaximumOccupancy > 3
WHERE Reservation.EndDate LIKE '2023-04-%' OR Reservation.StartDate LIKE '2023-04-%'
GROUP BY Reservation.RoomNumber, Reservation.StartDate, Reservation.EndDate
HAVING SUM(Reservation.Adults + Reservation.Children) > 0;

-- 6 Returns a list of all guest names and number of reservations per guest, sorted from morst reservations and then by guest last name
SELECT Guest.FirstName, Guest.LastName, COUNT(Guest.FirstName) AS NumberOfReservations
FROM Reservation
LEFT JOIN Guest ON
	Reservation.GuestId = Guest.GuestId
GROUP BY Guest.FirstName, Guest.LastName
ORDER BY COUNT(Guest.FirstName) DESC, Guest.LastName;

-- 7 Returns the name, address, and phone number of the guest vased on their phone number
SELECT Guest.FirstName, Guest.LastName, Guest.Address, Guest.City, Guest.State, Guest.Phone
FROM Guest
WHERE Guest.Phone = '(123) 456-7890';




