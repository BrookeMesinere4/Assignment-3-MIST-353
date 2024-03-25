﻿using VacationSiteAPI.Data;
using VacationSiteAPI.Entities;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;


namespace VacationSiteAPI.Repositories
{
    public class EllaAPI : IEllaAPI
    {
        private readonly DbContextClass _dbContextClass;
        public EllaAPI(DbContextClass dbContextClass)
        {
            _dbContextClass = dbContextClass;
        }
        public async Task<List<Hotel>> spHotelSearchByRadius(decimal latitude, decimal longitude)

        {
            var longitudeParam = new SqlParameter("@longitude", longitude);
            var latitudeParam = new SqlParameter("@latitude", latitude);
            var hotelDetails = await Task.Run(() => _dbContextClass.Hotel.FromSqlRaw("exec spHotelSearchByRadius @longitude,@latitude", longitudeParam, latitudeParam).ToListAsync());
            return hotelDetails;
        }

        public async Task<List<RoomAvail>> spRoomGetAvailabilityByDateRange(DateTime StartDate, DateTime EndDate)
        {
            var Startdateparam = new SqlParameter("@StartDate", StartDate);
            var Enddateparam = new SqlParameter("@EndDate", EndDate);
            var roomDetails = await _dbContextClass.RoomAvail.FromSqlRaw("exec spRoomGetAvailabilityByDateRange @StartDate,@EndDate", Startdateparam, Enddateparam).ToListAsync();
            return roomDetails;
        }
    }
}
