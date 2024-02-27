create database TravelDatabase
GO

use TravelDatabase
GO

CREATE TABLE [dbo].[Hotel](
	[HotelID] int NOT NULL identity primary key, 
	[Address] [nvarchar](max) NOT NULL, 
	[Zipcode] [nvarchar](20) Not NULL, 
	[City] [nvarchar](max) not NULL,
	[State] [nvarchar](max) not NULL,
	[Country] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Phone] [varchar](20) NULL,
	[HotelType] [nvarchar](max) NULL,
	[email] [nvarchar](max) NULL,
	latitude DECIMAL(9,6) null, -- 
	longitude DECIMAL(9,6)) -- 
GO

CREATE TABLE [dbo].[Room](
	[RoomID] [int] identity primary key, 
	[HotelID] int NOT NULL FOREIGN KEY REFERENCES Hotel(HotelID), 
	[NumBeds] [int] NOT NULL,
	[RoomType] [nchar](10) NULL,
	[RoomNum] [int] NULL,
	[Floor] [int] NULL)
GO

CREATE TABLE [dbo].[RoomAvail](
	RoomAvailID int identity primary key,
	[RoomID] [int] NOT NULL,
	[AvDate] [date] NOT NULL,
	[Price] [money] NOT NULL,
    FOREIGN KEY (RoomID) REFERENCES Room(RoomID))
GO

Alter table RoomAvail
add constraint RoomDateUnique unique(RoomID,AvDate); -- Copied from Joshua Meadows repository a good addition that needed to be added.
GO

Create table HotelRatings(
	HotelRatingsID int  identity primary key,
	HotelID int foreign key references hotel(hotelid) not null,
	rating int not null,
	userID char(36) null,
	Review nvarchar(max) null)
GO


Create table Reservation(
	ReservationID uniqueidentifier NOT NULL primary key 
		DEFAULT newid(),
	userID char(36) null,
	guestID char(36) null,
	notes nvarchar(max),
	subtotal money,
	tax money,
	fees money,
	total money)
GO

create table ReservationLines(
	ReservationID uniqueidentifier NOT NULL references Reservation(ReservationID),
	RoomID int references Room(RoomID) not null,
	[AvDate] [date] NOT NULL,
	[Price] [money] NOT NULL,
	AdultNum int,
	ChildNum int,
	ReservationStatus nvarchar(100))
GO