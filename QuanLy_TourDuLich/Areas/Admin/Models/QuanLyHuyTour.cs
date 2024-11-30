using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QuanLy_TourDuLich.Areas.Admin.Models
{
    public class QuanLyHuyTour
    {
        public int HuyTour_id { get; set; } 
        public int DatTour_id { get; set; } 
        public DateTime NgayHuy { get; set; } 
        public string LyDo { get; set; } 
        public string Tour_id { get; set; } 
        public string TenTour { get; set; } 
        public string NhanVien_id { get; set; } 
        public string KhachHang_id { get; set; } 
        public string TenKhach { get; set; } 
        public string TrangThai { get; set; } 
    }
}