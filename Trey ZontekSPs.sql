create or ALTER proc [dbo].[spHotelGetDetails]
@hotelid int
AS
SELECT *
FROM Hotel
where hotelid=@hotelid
GO
/*
exec spHotelGetDetails 2
GO
*/

create proc spHotelGetRatings
@HotelId int
AS 
SELECT *
FROM HotelRatings
WHERE HotelID=@HotelID
GO

/*
exec spHotelGetRatings 1
GO
*/







