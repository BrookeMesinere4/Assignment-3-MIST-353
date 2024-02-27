create proc spReturnHotelDetails
@hotelid int
AS
SELECT *
FROM Hotel
where hotelid=@hotelid
GO
/*
exec spReturnHotelDetails 2
GO
*/

create proc spReturnRatings
@HotelId int
AS 
SELECT *
FROM HotelRatings
WHERE HotelID=@HotelID
GO

/*
exec spReturnRatings 4
GO
*/


