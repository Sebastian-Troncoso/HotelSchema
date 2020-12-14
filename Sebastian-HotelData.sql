use HotelSchema;


insert into Room(RoomNumber, `Type`, ADAAccessible, StandardOccupancy, MaximumOccupancy, BasePrice, ExtraPerson)
	values 
    ('201', 'Double', false, 2, 4, 199.99, 10),
    ('202', 'Double', true, 2, 4, 174.99, 10),
    ('203', 'Double', false, 2, 4, 199.99, 10),
    ('204', 'Double', true, 2, 4, 174.99, 10),
    ('205', 'Single', false, 2, 2, 174.99, null),
    ('206', 'Single', true, 2, 2, 149.99, null),
    ('207', 'Single', false, 2, 2, 174.99, null),
    ('208', 'Single', true, 2, 2, 149.99, null),
    ('301', 'Double', false, 2, 4, 199.99, 10),
    ('302', 'Double', true, 2, 4, 174.99, 10),
	('303', 'Double', false, 2, 4, 199.99, 10),
    ('304', 'Double', true, 2, 4, 174.99, 10),
    ('305', 'Single', false, 2, 2, 174.99, null),
    ('306', 'Single', true, 2, 2, 149.99, null),
    ('307', 'Single', false, 2, 2, 174.99, null),
    ('308', 'Single', true, 2, 2, 149.99, null),
	('401', 'Suite', true, 3, 8, 399.99, null),
    ('402', 'Single', true, 3, 8, 149.99, null);
    
insert into Amenity (AmenityId, AmenityName) values 
    (5, 'Microwave'),
    (1, 'Jacuzzi'),
    (2, 'Refridgerator'),
    (3, 'Oven');
    
	insert into RoomAmenity (AmenityId, RoomNumber) 
    values
    (5, '201'),
    (1, '201'),
    (2, '202'),
    (5, '203'),
    (1, '203'),
    (2, '204'),
    (5, '205'),
    (1, '205'),
    (2, '205'),
    (5, '206'),
    (2, '206'),
    (5, '207'),
    (1, '207'),
    (2, '207'),
	(5, '208'),
    (2, '208'),
    (5, '301'),
    (1,'301'),
	(2, '302'),
    (5, '303'),
    (1,'303'),
    (2,'304'),
    (5,'305'),
    (2, '305'),
    (1,'305'),
    (5,'306'),
    (2,'306'),
    (5,'307'),
    (2,'307'),
    (1,'307'),
    (5,'308'),
    (2,'308'),
    (5,'401'),
    (2,'401'),
    (3,'401'),
    (5,'402'),
    (2,'402'),
    (3,'402');


insert into Guest(GuestId, FirstName, LastName, Address, City, State, Zip, Phone)
			values(1, "Sebastian", "Troncoso", "123 Seasame Street", "New York", "NY", 12345, "(123) 456-7890"),
            (2, "Mack", "Simmer", "379 Old Shore Street", "Council Bluffs", "IA", 51501, "(291) 553-0508"),
            (3, "Bettyann", "Seery", "750 Wintergreen Dr.", "Wasilla", "AK", 99654, "(478) 277-9632"),
            (4, "Duane", "Cullison", "9662 Foxrun Lane", "Harlingen", "TX", 78552, "(308) 494-0198"),
            (5, "Karie", "Yang", "9378 W. Augusta Ave.", "West Deptford", "NJ", 08096, "(214) 730-0298"),
            (6, "Aurore", "Lipton", "762 Wild Rose Street.", "Saginaw", "MI", 48601, "(377) 507-0974"),
            (7, "Zachery", "Luechtefeld", "7 Poplar Dr.", "Arvada", "CO", 80003, "(814) 485-2615"),
            (8, "Jeremiah", "Pendergrass", "70 Oakwood St.", "Zion", "IL", 60099, "(279) 491-0960"),
            (9, "Walter", "Holaway", "7556 Arrowhead St.", "Cumberland", "RI",02864, "(446) 396-6785"),
            (10, "Wilfred", "Vise", "77 West Surrey Street", "Oswego", "NY", 13126, "(834) 727-1001"),
            (11, "Maritza", "Tilton", "939 Linda Rd.", "Burke", "VA", 22015, "(446) 351-6860"),
            (12, "Joleen", "Tison", "87 Queen St.", "Drexel Hill", "PA", 	19026, "(231) 893-2755");

   insert into Reservation(ReservationId, GuestId, RoomNumber, Adults, Children, StartDate, EndDate, TotalCost) values
	(1, 2, "308", 1, 0, '2023-2-2', '2023-2-4', 299.98),
	(2, 3, "203", 2, 1, '2023-2-5', '2023-2-10', 999.95), 
	(3, 4, "305", 2, 0, '2023-2-22', '2023-2-24', 349.98),
	(4, 5, "201", 2, 2, '2023-3-6', '2023-3-7', 199.99),
	(5, 1, "307", 1, 1, '2023-3-17', '2023-3-20', 524.97),
	(6, 6, "302", 3, 0, '2023-3-18', '2023-3-23', 924.95),
	(7, 7, "202", 2, 2, '2023-3-29', '2023-3-31', 349.98),
	(8, 8, "304", 2, 0, '2023-3-31', '2023-4-5', 874.95),
	(9, 9, "301", 1, 0, '2023-4-9', '2023-4-13', 799.96),
	(10, 10, "207", 1, 1, '2023-4-23', '2023-4-24', 174.99),
	(11, 11, "401", 2, 4, '2023-5-30', '2023-6-2', 1199.97),
	(12, 12, "206", 2, 0, '2023-6-10', '2023-6-14', 599.96),
	(13, 12, "208", 1, 0, '2023-6-10', '2023-6-14', 599.96),
	(14, 6, "304", 3, 0, '2023-6-17', '2023-6-18', 184.99),
	(15, 1, "205", 2, 0, '2023-6-28','2023-7-2', 699.96),
	(16, 9, "204", 3, 1, '2023-7-13', '2023-7-14', 184.99),
	(17, 10, "401", 4, 2, '2023-7-18', '2023-7-21', 1259.97),
	(18, 3, "303", 2, 1, '2023-7-28', '2023-7-29', 199.99),
	(19, 3, "305", 1, 0, '2023-8-30', '2023-9-1', 349.98),
	(20, 2, "208", 2, 0, '2023-9-16', '2023-9-17', 149.99),
	(21, 5, "203", 2, 2, '2023-9-13', '2023-9-15', 399.98),
	(22, 4, "401", 2, 2, '2023-11-22', '2023-11-25', 1199.97),
	(23, 2, "206", 2, 0, '2023-11-22', '2023-11-25', 449.97),
	(24, 2, "301", 2, 2, '2023-11-22', '2023-11-25', 599.97),
	(25, 11, "302", 2, 0, '2023-12-24', '2023-12-28', 699.96);
    
    
    SELECT * FROM Guest;
    
    SET SQL_SAFE_UPDATES = 0;
    DELETE FROM Guest
    WHERE Guest.FirstName = 'Jeremiah';
	SET SQL_SAFE_UPDATES = 1;
    
	SELECT * FROM Guest;
    
 
    
    
	


