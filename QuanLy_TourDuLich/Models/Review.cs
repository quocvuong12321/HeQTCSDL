using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using QuanLy_TourDuLich.Models;

namespace QuanLy_TourDuLich.Models
{
    public class Review
    {
        [Required]
        public string TourId { get; set; }

        [Required]
        public string KhachHangId { get; set; }

        [Required]
        [StringLength(1000)]
        public string NoiDung { get; set; }

        [Required]
        [Range(1, 5, ErrorMessage = "Số sao phải từ 1 đến 5.")]
        public int Vote { get; set; }
    }
}