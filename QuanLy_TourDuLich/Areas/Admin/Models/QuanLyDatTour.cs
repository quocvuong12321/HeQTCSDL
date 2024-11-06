using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QuanLy_TourDuLich.Areas.Admin.Models
{
    public class QuanLyDatTour
    {
        public int DatTour_id { get; set; }
        public string KhachHangName { get; set; }
        public string TourName { get; set; }
        public string LoaiTour { get; set; }
        public int SoNguoi { get; set; }
        public DateTime NgayDat { get; set; }
        public DateTime NgayKhoiHanh { get; set; }
        public DateTime NgayKetThuc { get; set; }
        public string GhiChu { get; set; }
        public decimal TongTien { get; set; }
    }
}