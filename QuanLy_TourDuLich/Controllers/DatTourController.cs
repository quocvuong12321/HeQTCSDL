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

        // GET: DatTour
        QuanLyTourDuLichDataContext db = new QuanLyTourDuLichDataContext();

        public ActionResult DatTour(string tour_id)
        {
            var khachHangId = Session["kh"];
            if (khachHangId == null)
            {
                return RedirectToAction("Dangnhap", "TaiKhoan");
            }
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
            ViewBag.GiaTien = tour.Gia;  // Giả sử bạn có thuộc tính Gia trong bảng Tour

            KhachHang kh = db.KhachHangs.SingleOrDefault(t => t.KhachHang_id == khachHangId.ToString());
            ViewBag.KhachHang = kh;
            // Trả về view DatTour với thông tin tour
            return View(tour);
        }
        private DatTourService _datTourService;

        public DatTourController()
        {
            _datTourService = new DatTourService();
        }
        [HttpPost]
        public ActionResult DatTour(FormCollection form, string tour_id)
        {
            var khachHangId = Session["kh"]?.ToString();
            if (khachHangId == null)
            {
                return RedirectToAction("Login", "Account");
            }

            int soNguoi = Convert.ToInt32(form["SoNguoi"]);

            // Tạo danh sách hành khách từ form
            List<HanhKhach> hanhKhachList = new List<HanhKhach>();
            for (int i = 0; i < soNguoi; i++)
            {
                var hanhKhach = new HanhKhach
                {
                    HoTen = form[$"HoTen{i}"],
                    NgaySinh = Convert.ToDateTime(form[$"NgaySinh{i}"]),
                    GioiTinh = Convert.ToBoolean(form[$"GioiTinh{i}"])
                };
                hanhKhachList.Add(hanhKhach);
            }

            try
            {
                _datTourService.AddTourBooking(khachHangId, tour_id, soNguoi, hanhKhachList);
                return RedirectToAction("XacNhan", new { id = tour_id });
            }
            catch (Exception ex)
            {
                ViewBag.ErrorMessage = "Đặt tour thất bại: " + ex.Message;
                return View();
            }
        }
        public ActionResult XacNhan(int id)
        {
            // Lấy thông tin đặt tour từ cơ sở dữ liệu
            var datTour = db.DatTours.SingleOrDefault(dt => dt.DatTour_id == id);

            if (datTour == null)
            {
                return HttpNotFound();
            }

            // Truyền thông tin đặt tour vào view
            ViewBag.TourName = datTour.Tour.Name;
            ViewBag.SoNguoi = datTour.SoNguoi;
            ViewBag.NgayKhoiHanh = datTour.Tour.NgayKhoiHanh?.ToString("dd/MM/yyyy");
            ViewBag.NgayKetThuc = datTour.Tour.NgayKetThuc?.ToString("dd/MM/yyyy");
            ViewBag.TenKhachHang = datTour.KhachHang.Name;
            ViewBag.Email = datTour.KhachHang.Email;
            ViewBag.SoDienThoai = datTour.KhachHang.DienThoai;
            ViewBag.DiaChi = datTour.KhachHang.DiaChi;

            // Lấy thông tin hành khách từ cơ sở dữ liệu
            var hanhKhachs = db.HanhKhaches.Where(hk => hk.DatTour_id == id).ToList();
            ViewBag.HanhKhachs = hanhKhachs;

            return View(datTour);
        }
    }
}