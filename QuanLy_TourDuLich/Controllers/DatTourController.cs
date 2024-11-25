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

            KhachHang kh= db.KhachHangs.SingleOrDefault(t => t.KhachHang_id == "KH001");
            ViewBag.KhachHang = kh;

            // Trả về view DatTour với thông tin tour
            return View(tour);
        }
        [HttpPost]
        public ActionResult DatTour(FormCollection form, string tour_id)
        {
            // Lấy thông tin tour từ cơ sở dữ liệu
            Tour tour = db.Tours.SingleOrDefault(t => t.Tour_id == tour_id);

            if (tour == null)
            {
                return HttpNotFound();
            }
            KhachHang kh = db.KhachHangs.SingleOrDefault(t => t.KhachHang_id == "KH001");

            //// Thêm khách hàng vào cơ sở dữ liệu nếu chưa tồn tại
            //var existingKhachHang = db.KhachHangs.SingleOrDefault(t => t.Email == email);
            //if (existingKhachHang == null)
            //{
            //    db.KhachHangs.InsertOnSubmit(khachHang);
            //    db.SubmitChanges();
            //}
            //else
            //{
            //    khachHang = existingKhachHang;
            //}

            // Tạo đối tượng DatTour
            var datTour = new DatTour
            {
                Tour_id = tour.Tour_id,
                KhachHang_id = kh.KhachHang_id,
                SoNguoi = Convert.ToInt32(form["SoNguoi"]),
                GhiChu = form["GhiChu"],
                NgayDat = DateTime.Now
            };

            // Thêm thông tin đặt tour vào cơ sở dữ liệu
            db.DatTours.InsertOnSubmit(datTour);
            db.SubmitChanges();

            // Thêm thông tin hành khách vào cơ sở dữ liệu
            for (int i = 0; i < datTour.SoNguoi; i++)
            {
                var hanhKhach = new HanhKhach
                {
                    Tour_id = tour.Tour_id,
                    DatTour_id = datTour.DatTour_id,
                    HoTen = form[$"HoTen{i}"],
                    NgaySinh = Convert.ToDateTime(form[$"NgaySinh{i}"]),
                    GioiTinh = Convert.ToInt32(form[$"GioiTinh{i}"])
                };
                db.HanhKhaches.InsertOnSubmit(hanhKhach);
            }
            db.SubmitChanges();

            // Chuyển đến trang xác nhận
            return RedirectToAction("XacNhan", new { id = datTour.DatTour_id });
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
            ViewBag.GhiChu = datTour.GhiChu;

            // Lấy thông tin hành khách từ cơ sở dữ liệu
            var hanhKhachs = db.HanhKhaches.Where(hk => hk.DatTour_id == id).ToList();
            ViewBag.HanhKhachs = hanhKhachs;

            return View(datTour);
        }
        //[HttpPost]
        //public ActionResult DatTour(string tour_id, int soNguoi, string ghiChu)
        //{
        //    // Lấy thông tin tour từ cơ sở dữ liệu
        //    Tour tour = db.Tours.SingleOrDefault(t => t.Tour_id == tour_id);

        //    if (tour == null)
        //    {
        //        return HttpNotFound();
        //    }

        //    // Tính toán tổng tiền
        //    var giaTour = tour.Gia ?? 0;
        //    var tongTien = giaTour * soNguoi;

        //    // Lưu thông tin vào TempData để truyền sang view ThanhToan
        //    TempData["Tour"] = tour;
        //    TempData["SoNguoi"] = soNguoi;
        //    TempData["GhiChu"] = ghiChu;
        //    TempData["GiaTour"] = giaTour.ToString("N0");
        //    TempData["TongTien"] = tongTien.ToString("N0");
        //    TempData["NgayKhoiHanh"] = tour.NgayKhoiHanh?.ToString("dd/MM/yyyy");
        //    TempData["NgayKetThuc"] = tour.NgayKetThuc?.ToString("dd/MM/yyyy");

        //    // Chuyển sang view ThanhToan
        //    return RedirectToAction("ThanhToan");
        //}


        //public ActionResult ThanhToan()
        //{
        //    // Truyền thông tin từ TempData vào view ThanhToan
        //    var tour = TempData["Tour"] as Tour;
        //    var soNguoi = TempData["SoNguoi"] as int?;
        //    var ghiChu = TempData["GhiChu"] as string;
        //    var giaTour = TempData["GiaTour"] as string;
        //    var tongTien = TempData["TongTien"] as string;
        //    var ngayKhoiHanh = TempData["NgayKhoiHanh"] as string;
        //    var ngayKetThuc = TempData["NgayKetThuc"] as string;

        //    if (tour == null)
        //    {
        //        return HttpNotFound();
        //    }

        //    ViewBag.TourName = tour.Name;
        //    ViewBag.NgayKhoiHanh = ngayKhoiHanh;
        //    ViewBag.NgayKetThuc = ngayKetThuc;
        //    ViewBag.GiaTour = giaTour;
        //    ViewBag.SoNguoi = soNguoi;
        //    ViewBag.TongTien = tongTien;
        //    ViewBag.GhiChu = ghiChu;

        //    return View();
        //}
    }
}