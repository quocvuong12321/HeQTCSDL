using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using QuanLy_TourDuLich.Models;

namespace QuanLy_TourDuLich.Areas.Admin.Controllers
{
    public class TaiKhoanNhanVienController : Controller
    {
        // GET: Admin/TaiKhoanNhanVien
        QuanLyTourDuLichDataContext db = new QuanLyTourDuLichDataContext();
        public ActionResult DangNhapNV()
        {
            return View();
        }
        [HttpPost]
        public ActionResult DangNhapNV(FormCollection col)
        {
            string email = col["email"];
            string password =col["password"];


            // Tạo đối tượng DataContext
            using (QuanLyTourDuLichDataContext db = new QuanLyTourDuLichDataContext())
            {
                // Gọi Stored Procedure thông qua LINQ to SQL
                var kh = db.sp_KiemTraDangNhapNV(email, password).FirstOrDefault(t => t.Email == email && t.Password == password);

                if (kh != null)
                {
                    Session["kh"] = email;
                    return RedirectToAction("Index", "Home","Admin");
                }
                else
                {
                    ModelState.AddModelError("DangNhap", "Invalid login credentials");
                }
            }
            return View();
        }
        public ActionResult Danhgia()
        {
            List<DanhGia> dgia = db.DanhGias.ToList();
            return View(dgia);
        }

        public ActionResult Thongkedoanhthu()
        {
            List<sp_ThongKeDoanhThuResult> thongke = new List<sp_ThongKeDoanhThuResult>().ToList();
            return View(thongke);
        }
    }
}