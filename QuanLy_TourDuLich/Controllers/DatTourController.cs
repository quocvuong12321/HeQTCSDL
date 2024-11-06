using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using QuanLy_TourDuLich.Models;

namespace QuanLy_TourDuLich.Controllers
{
    public class DatTourController : Controller
    {
        // GET: Tour
        QuanLyTourDuLichDataContext db = new QuanLyTourDuLichDataContext();
        public ActionResult DatTour(string tour_id)
        {
            // Lấy thông tin tour từ cơ sở dữ liệu theo tour_id
            Tour tour = db.Tours.SingleOrDefault(t => t.Tour_id == tour_id);

            if (tour == null)
            {
                return HttpNotFound();
            }

            // Truyền thông tin tour vào ViewBag
            ViewBag.Tour = tour;
            ViewBag.NgayKhoiHanh = tour.NgayKhoiHanh?.ToString("dd/MM/yyyy");
            ViewBag.NgayKetThuc = tour.NgayKetThuc?.ToString("dd/MM/yyyy");

            // Trả về view DatTour với thông tin tour
            return View(tour);
        }

        [HttpPost]
        public ActionResult DatTour(string tour_id, int soNguoi, string ghiChu)
        {
            // Lấy thông tin tour từ cơ sở dữ liệu
            Tour tour = db.Tours.SingleOrDefault(t => t.Tour_id == tour_id);

            if (tour == null)
            {
                return HttpNotFound();
            }

            // Tính toán tổng tiền
            var giaTour = tour.Gia ?? 0;
            var tongTien = giaTour * soNguoi;

            // Lưu thông tin vào TempData để truyền sang view ThanhToan
            TempData["Tour"] = tour;
            TempData["SoNguoi"] = soNguoi;
            TempData["GhiChu"] = ghiChu;
            TempData["GiaTour"] = giaTour.ToString("N0");
            TempData["TongTien"] = tongTien.ToString("N0");
            TempData["NgayKhoiHanh"] = tour.NgayKhoiHanh?.ToString("dd/MM/yyyy");
            TempData["NgayKetThuc"] = tour.NgayKetThuc?.ToString("dd/MM/yyyy");

            // Chuyển sang view ThanhToan
            return RedirectToAction("ThanhToan");
        }


        public ActionResult ThanhToan()
        {
            // Truyền thông tin từ TempData vào view ThanhToan
            var tour = TempData["Tour"] as Tour;
            var soNguoi = TempData["SoNguoi"] as int?;
            var ghiChu = TempData["GhiChu"] as string;
            var giaTour = TempData["GiaTour"] as string;
            var tongTien = TempData["TongTien"] as string;
            var ngayKhoiHanh = TempData["NgayKhoiHanh"] as string;
            var ngayKetThuc = TempData["NgayKetThuc"] as string;

            if (tour == null)
            {
                return HttpNotFound();
            }

            ViewBag.TourName = tour.Name;
            ViewBag.NgayKhoiHanh = ngayKhoiHanh;
            ViewBag.NgayKetThuc = ngayKetThuc;
            ViewBag.GiaTour = giaTour;
            ViewBag.SoNguoi = soNguoi;
            ViewBag.TongTien = tongTien;
            ViewBag.GhiChu = ghiChu;

            return View();
        }
    }
}