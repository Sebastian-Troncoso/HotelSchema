
drop database HotelSchema;
create database HotelSchema;
use HotelSchema;

create table Room (
	RoomNumber int(4) primary key not null,
    `Type` varchar(10),
    ADAAccessible bool not null,
    StandardOccupancy int(4),
    MaximumOccupancy int(4),
    BasePrice decimal(6,2),
    ExtraPerson int(2) null
);

create table Amenity(
	AmenityId int primary key not null auto_increment,
    AmenityName varchar(20) not null,
    ChargePerAmenity decimal(2,2) null
);

create table Guest (
	GuestId int primary key not null auto_increment,
    FirstName varchar(50) not null,
    LastName varchar(50) not null,
    Address varchar(30) not null,
    City varchar(30) not null,
    State varchar(2) not null,
    Zip int not null,
    Phone varchar(15) not null
);


create table RoomAmenity (
	AmenityId int not null auto_increment,
    RoomNumber int not null,
    
    primary key pk_RoomAmenity(AmenityId, RoomNumber),
    foreign key fk_RoomAmenity_Room(RoomNumber)
		references Room(RoomNumber),
	foreign key fk_RoomAmenity_Amenity(AmenityId)
		references Amenity(AmenityId)
);

				
create table Reservation(

	ReservationId int primary key not null auto_increment,
	GuestId int not null,
    RoomNumber int not null,
    foreign key fk_Reservation_Room(RoomNumber)
		references Room(RoomNumber),
    foreign key fk_Reservation_Guest(GuestId)
		references Guest(GuestId) on delete cascade,
	Adults int,
    Children int,
    StartDate date,
    EndDate date,
    TotalCost decimal(6,2)
);



