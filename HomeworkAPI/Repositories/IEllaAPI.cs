using System.Threading.Tasks;
using VacationSiteAPI.Entities;
namespace VacationSiteAPI.Repositories
{
    public interface IEllaAPI
    {
        public Task<List<Hotel>> HotelSearchByRadius(decimal latitude, decimal longitude);
        public Task<List<RoomAvail>> RoomGetAvailabilityByDateRange(DateTime Startdate , DateTime EndDate );
    }
    
}
