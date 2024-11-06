using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QuanLy_TourDuLich.Areas.Admin.Models
{
    public class QuanLyDatTour
    {
        public int DatTour_id { get; set; } // ID của đơn đặt tour
        public string KhachHang_id { get; set; } // ID của hành khách
        public string TenKhach { get; set; } // Tên khách hàng
        public DateTime NgayDat { get; set; } // Ngày đặt tour
        public int SoNguoi { get; set; } // Số lượng người
        public string GhiChu { get; set; } // Ghi chú
        public string Tour_id { get; set; } // ID của tour
        public decimal TongTien { get; set; } // Tổng tiền từ thanh toán
    }
}