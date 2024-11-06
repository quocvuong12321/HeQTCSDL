using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QuanLy_TourDuLich.Areas.Admin.Models
{
    public class QuanLyHanhKhachDatTour
    {
        public int HanhKhachId { get; set; }  // ID của hành khách
        public string HoTen { get; set; }     // Họ tên hành khách
        public DateTime NgaySinh { get; set; } // Ngày sinh hành khách
        public bool GioiTinh { get; set; }     // Giới tính hành khách (bit, 0 hoặc 1)
    }

}