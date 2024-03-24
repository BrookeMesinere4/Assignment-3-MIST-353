use TravelDatabase


create proc spRoomGetAvailyByDate

AS
SELECT *
FROM RoomAvail ra
inner join Room r
On ra.RoomID = r.RoomID
WHERE r.HotelID=@HotelID
and ra.AVDate = @myDate
GO

/*
exec spRoomGetAvailByDate 1, '20240227'
GO
*/

create proc HotelReview

use TravelDatabase
INSERT INTO [dbo].[HotelRatings] ([HotelID], [rating], [userID], [Review])
values (1, 2, 3, 4, 5,);


/*
execute HotelReview
using [dbo].[HotelRatings] ([HotelID], [rating], [userID], [Review]);



