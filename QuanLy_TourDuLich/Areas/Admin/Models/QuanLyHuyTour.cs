using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QuanLy_TourDuLich.Areas.Admin.Models
{
    public class QuanLyHuyTour
    {
        public int HuyTour_id { get; set; } // ID của đơn hủy tour
        public int DatTour_id { get; set; } // ID của đơn đặt tour
        public DateTime NgayHuy { get; set; } // Ngày hủy tour
        public string LyDo { get; set; } // Lý do hủy tour
        public string Tour_id { get; set; } // ID của tour
        public string TenTour { get; set; } // Tên của tour
        public string NhanVien_id { get; set; } // ID của nhân viên được phân công
        public string KhachHang_id { get; set; } // ID của khách hàng
        public string TenKhach { get; set; } // Tên của khách hàng
    }
}