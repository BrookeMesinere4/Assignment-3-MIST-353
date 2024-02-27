# Assignment 3: Merging Ideas and Databases
## Company's Plans

## Procedures
### Trey Zontek
The first stored procedure used was "spHotelGetDetails." We decided to use this procedure in order to get all the information needed on a specific hotel by putting in the hotel ID.

The following procedure used was "spHotelGetRatings." This product gave the user access to hotel ratings by hotel ID.

### Brooke Mesinere
The third procedure that we included on our site was "spRoomGetAvailabilityByDate." The procedure is meant to find the availability of hotel rooms by hotel ID and by the date needed.

The fourth procedure used was "spHotelAddReview." This was created so the users could look at hotel reviews and also add their reviews.

### Ella Southwell
The fifth procedure was "spRoomGetAvailabilityByDateRange." This procedure was created to get the availability of dates the user can use if staying multiple nights at a hotel. Using the room availability table, I created a code allowing users to find all available dates during a given period. Then, I group the dates available by the room ID so the user can look at the dates available for a specific hotel. This procedure is valuable for our site because it helps users book for specific days.

The last procedure was "spHotelSearchBy Radius." This was used to get all hotels within a radius given by a user. This procedure was created using the hotel table. Then, I created the attributes @longitude, @latitude, and @radius. I then used the distance formula to find the radius. The code then checks for hotels less than or equal to the radius. This procedure helps users find hotels within a particular area and is essential so users can find specific locations.

## References
We followed our own notes and examples that we got from lectures in this assignment. We also had help from ChatGPT to create our mock data. The prompt used in ChatGPT is as followed:
""
