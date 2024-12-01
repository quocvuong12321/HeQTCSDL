using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using QuanLy_TourDuLich.Models;
namespace QuanLy_TourDuLich.Controllers
{
    public class QuanliController : Controller
    {
        // GET: Quanli
        public ActionResult Index()
        {
            return View();
        }

        QuanLyTourDuLichDataContext db = new QuanLyTourDuLichDataContext();
       

        public ActionResult Nhahang()
        {
            List<NhaHang> nhahang = db.NhaHangs.ToList();
            return View(nhahang);
        }

      


        public ActionResult Khachsan()
        {
            List<KhachSan> khachsan = db.KhachSans.ToList();
            return View(khachsan);
        }


        public ActionResult Tinhthanh()
        {
            List<TinhThanh> tinhthanh = db.TinhThanhs.ToList();
            return PartialView("Tinhthanh",tinhthanh);
        }
        public ActionResult Tinhthanh1()
        {
            List<TinhThanh> tinhthanh = db.TinhThanhs.ToList();
            return PartialView("Tinhthanh1", tinhthanh);
        }

        public ActionResult HthiNhahangTheoTinh(int? id)
        {
            // Xử lý với id tỉnh thành
            var result = db.sp_HthiNhaHangTheoTinh(id).ToList();
            return View(result);
        }

        public ActionResult HthiKhachsanTheoTinh(int? id)
        {
            var result = db.sp_HthiKhachSanTheoTinh(id).ToList();
            return View(result);
        }
    }
}