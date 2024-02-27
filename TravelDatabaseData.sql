USE TravelDatabase;

-- Insert mock data into Hotel table
INSERT INTO [dbo].[Hotel] ([Address], [Zipcode], [City], [State], [Country], [Name], [Phone], [HotelType], [email], [latitude], [longitude])
VALUES 
    ('123 Main St', '12345', 'New York', 'NY', 'USA', 'Luxury Hotel', '123-456-7890', 'Luxury', 'luxuryhotel@example.com', 40.7128, -74.0060),
    ('456 Oak St', '54321', 'Los Angeles', 'CA', 'USA', 'Budget Inn', '987-654-3210', 'Budget', 'budgetinn@example.com', 34.0522, -118.2437),
    ('789 Elm St', '67890', 'Chicago', 'IL', 'USA', 'Business Suites', '555-123-4567', 'Business', 'businesssuites@example.com', 41.8781, -87.6298),
    ('101 Maple Ave', '13579', 'San Francisco', 'CA', 'USA', 'Coastal Resort', '123-987-6543', 'Resort', 'coastalresort@example.com', 37.7749, -122.4194),
    ('202 Pine St', '97531', 'Miami', 'FL', 'USA', 'Tropical Paradise', '555-789-1234', 'Resort', 'tropicalparadise@example.com', 25.7617, -80.1918);
GO
-- Insert mock data into Room table
INSERT INTO [dbo].[Room] ([HotelID], [NumBeds], [RoomType], [RoomNum], [Floor])
VALUES 
    (1, 2, 'Standard', 101, 1),
    (1, 1, 'Suite', 201, 2),
    (2, 2, 'Standard', 102, 1),
    (2, 1, 'Economy', 103, 1),
    (3, 3, 'Deluxe', 301, 3),
    (4, 2, 'Standard', 201, 2),
    (5, 1, 'Economy', 101, 1);
GO
-- Insert mock data into RoomAvail table
INSERT INTO [dbo].[RoomAvail] ([RoomID], [AvDate], [Price])
VALUES 
    (1, '2024-02-20', 150.00),
    (2, '2024-02-20', 200.00),
    (3, '2024-02-20', 100.00),
    (4, '2024-02-20', 80.00),
    (5, '2024-02-20', 250.00),
    (6, '2024-02-20', 180.00),
    (7, '2024-02-20', 120.00),
    (1, '2024-02-21', 160.00),
    (2, '2024-02-21', 210.00),
    (3, '2024-02-21', 110.00),
    (4, '2024-02-21', 90.00),
    (5, '2024-02-21', 270.00),
    (6, '2024-02-21', 200.00),
    (7, '2024-02-21', 140.00);
GO
-- Insert mock data into HotelRatings table
INSERT INTO [dbo].[HotelRatings] ([HotelID], [rating], [userID], [Review])
VALUES 
    (1, 5, 'user123', 'Great hotel, excellent service!'),
    (2, 4, 'user456', 'Nice stay, friendly staff.'),
    (3, 3, 'user789', 'Average experience, could improve.'),
    (1, 5, 'user234', 'Highly recommended, will visit again.'),
    (4, 4, 'user567', 'Beautiful resort, amazing view.'),
    (5, 3, 'user890', 'Decent hotel, needs some upgrades.');
GO
-- Insert mock data into Reservation table
INSERT INTO [dbo].[Reservation] ([ReservationID], [userID], [guestID], [notes], [subtotal], [tax], [fees], [total])
VALUES 
    (NEWID(), 'user123', NULL, 'Special request: extra pillows', 200.00, 15.00, 10.00, 225.00),
    (NEWID(), 'user456', NULL, 'Late check-in after 9 PM', 150.00, 11.25, 5.00, 166.25);
GO

-- Insert mock data into ReservationLines table
INSERT INTO [dbo].[ReservationDetails] ([ReservationID], [RoomID], [AvDate], [Price], [AdultNum], [ChildNum], [ReservationStatus])
VALUES 
    (NEWID(), 1, '2024-02-20', 150.00, 2, 1, 'Confirmed'),
    (NEWID(), 2, '2024-02-20', 200.00, 1, 0, 'Confirmed'),
    (NEWID(), 3, '2024-02-20', 100.00, 1, 1, 'Confirmed'),
    (NEWID(), 4, '2024-02-20', 80.00, 2, 0, 'Confirmed');

  
GO