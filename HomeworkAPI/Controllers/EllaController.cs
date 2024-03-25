using Microsoft.AspNetCore.Mvc;
using VacationSiteAPI.Repositories;
using VacationSiteAPI.Entities;

namespace VacationSiteAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class EllaController : Controller
    {

        private readonly IEllaAPI hotelservice;
        public EllaController(IEllaAPI hotelservice)
        { this.hotelservice = hotelservice; }

        [HttpGet("HotelSearchByRadius/longitude={longitude}&latitude={latitude}")]
        public async Task<List<Hotel>> HotelSearchByRadius(decimal latitude, decimal longitude)
        { 
        var hotelDetails = await hotelservice.HotelSearchByRadius(latitude, longitude);
            if (hotelDetails == null)
               {
            }
        return hotelDetails;
        
        }
        [HttpGet("RoomGetAvailabilityByDateRange/StartDate={StartDate}&EndDate={EndDate}")]
        public async Task<List<RoomAvail>> RoomGetAvailabilityByDateRange(DateTime StartDate, DateTime EndDate)
        {
            var RoomAvail = await hotelservice.RoomGetAvailabilityByDateRange(StartDate, EndDate);
            if (RoomAvail == null)
            { }
            return RoomAvail;
        }
    }
}
