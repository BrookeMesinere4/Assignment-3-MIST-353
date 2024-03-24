﻿using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace HomeworkAPI.Entities
{
  
public class Hotel
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int HotelID { get; set; }

        [Required]
        public string Address { get; set; }

        [Required]
        [StringLength(20)]
        public string Zipcode { get; set; }

        [Required]
        public string City { get; set; }

        [Required]
        public string State { get; set; }

        [Required]
        public string Country { get; set; }

        [Required]
        public string Name { get; set; }

        [StringLength(20)]
        public string Phone { get; set; }

        public string HotelType { get; set; }

        public string Email { get; set; }

        public decimal? Latitude { get; set; }

        public decimal? Longitude { get; set; }
    }

}


