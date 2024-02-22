USE [TravelSiteDB]
GO

Create or ALTER proc [dbo].[spRoomGetAvailabilityByDateRange]
@Startdate date,
@EndDate date
AS
SELECT *
FROM(SELECT RoomID, COUNT(AvDate) as numDays
FROM RoomAvailiability 
WHERE AvDate between @StartDate and @EndDate
Group by RoomID
HAVING COUNT(AvDate) = DATEDIFF(day, @StartDate, @EndDate)+1) ra
LEFT JOIN Room r
ON ra.RoomID=r.RoomID
GO

Create or ALTER proc [dbo].[spHotelSearchByRadius]
@longitude decimal(9,6), 
@latitude decimal(9,6),
@radius int = null
AS
BEGIN
SELECT *
FROM Hotel
WHERE sqrt(power((longitude-@longitude),2)+ power((latitude-@latitude),2)) <@radius
END

GO



