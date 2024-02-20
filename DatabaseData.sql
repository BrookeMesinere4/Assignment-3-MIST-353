-- Insert mock data into Hotel table
use TravelSiteDB

INSERT INTO [dbo].[Hotel] ([Address], [Zipcode], [City], [State], [Country], [Name], [Phone], [HotelType], [email], [latitude], [longitude])
VALUES 
    ('123 Main St', '12345', 'New York', 'NY', 'USA', 'Luxury Hotel', '123-456-7890', 'Luxury', 'luxuryhotel@example.com', 40.7128, -74.0060),
    ('456 Oak St', '54321', 'Los Angeles', 'CA', 'USA', 'Budget Inn', '987-654-3210', 'Budget', 'budgetinn@example.com', 34.0522, -118.2437),
    ('789 Elm St', '67890', 'Chicago', 'IL', 'USA', 'Business Suites', '555-123-4567', 'Business', 'businesssuites@example.com', 41.8781, -87.6298);

-- Insert mock data into Room table
INSERT INTO [dbo].[Room] ([HotelID], [NumBeds], [RoomType], [numberNum], [floor])
VALUES 
    (1, 2, 'Standard', 101, 1),
    (1, 1, 'Suite', 201, 2),
    (2, 2, 'Standard', 102, 1),
    (2, 1, 'Economy', 103, 1),
    (3, 3, 'Deluxe', 301, 3);

-- Insert mock data into RoomAvailability table
INSERT INTO [dbo].[RoomAvailiability] ([RoomID], [AvDate], [Price])
VALUES 
    (1, '2024-02-20', 150.00),
    (2, '2024-02-20', 200.00),
    (3, '2024-02-20', 100.00),
    (4, '2024-02-20', 80.00),
    (5, '2024-02-20', 250.00);

-- Insert mock data into HotelRatings table
INSERT INTO [dbo].[HotelRatings] ([HotelID], [rating], [userID], [comments])
VALUES 
    (1, 5, 'user123', 'Great hotel, excellent service!'),
    (2, 4, 'user456', 'Nice stay, friendly staff.'),
    (3, 3, 'user789', 'Average experience, could improve.'),
    (1, 5, 'user234', 'Highly recommended, will visit again.');
	
	-- Inserting into Cart
INSERT INTO Cart (CartID, guestID)
VALUES
('DF215E10-8BD4-4401-B2DC-99BB03135F2E', 'Z9Y8X7W6-V5U4-T3S2-R1Q0-P9O8N7M6L5K4');

-- Inserting into CartLines
INSERT INTO CartLines (CartID, RoomAvailiabilityID, price, adults, children)
VALUES
('DF215E10-8BD4-4401-B2DC-99BB03135F2E6', 1, 150.00, 2, 1); 

-- Inserting into Reservation
INSERT INTO Reservation (ReservationID, guestID, notes, subtotal, tax, fees, total)
VALUES
('DF215E10-8BD4-4401-B2DC-99BB03135F2E7', 'Z9Y8X7W6-V5U4-T3S2-R1Q0-P9O8N7M6L5K4', 'Need early check-in', 300.00, 30.00, 20.00, 350.00);

-- Inserting into ReservationLines
INSERT INTO ReservationLines (ReservationID, RoomID, AvDate, Price, adults, children, notes, ReservationStatus)
VALUES
('DF215E10-8BD4-4401-B2DC-99BB03135F2E7', 1, '2024-02-20', 150.00, 2, 0, 'Room with a view', 'Confirmed');
