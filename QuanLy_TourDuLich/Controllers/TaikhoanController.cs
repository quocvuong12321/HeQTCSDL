using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using QuanLy_TourDuLich.Models;
using System.Security.Cryptography;
using System.Text;
using System.Data.SqlClient;

namespace QuanLy_TourDuLich.Controllers
{
    public class TaikhoanController : Controller
    {
        // GET: Taikhoan
        
        QuanLyTourDuLichDataContext db = new QuanLyTourDuLichDataContext();
        //private string connectionString;



        // hàm tạo mã khách hàng mới 
       
        //public ActionResult Dangky()
        //{
        //    return View();
        //}

        //[HttpPost]
        //public ActionResult Dangky(KhachHang kh)
        //{
        //    if (ModelState.IsValid)
        //    {
        //        var check = db.KhachHangs.FirstOrDefault(s => s.Email == kh.Email);
        //        if (check == null)
        //        {
        //            kh.KhachHang_id = GenerateMaKhachHang();
        //            kh.Password = HashPassword(kh.Password); // Securely hash the password
        //            db.KhachHangs.InsertOnSubmit(kh);
        //            db.SubmitChanges();
        //            return RedirectToAction("Dangnhap"); // Redirect to login page
        //        }
        //        else
        //        {
        //            ModelState.AddModelError("Email", "Email already exists.");
        //        }
        //    }
        //    return View();
        //}

        public ActionResult Dangnhap()
        {
            return View();
        }

        [HttpPost]
        //public ActionResult Dangnhap(FormCollection col)
        //{
        //    string email = col["email"];
        //    string password = HashPassword(col["password"]);
            

        //    // Tạo đối tượng DataContext
        //    using (QuanLyTourDuLichDataContext db = new QuanLyTourDuLichDataContext())
        //    {
        //        // Gọi Stored Procedure thông qua LINQ to SQL
        //        var kh = db.sp_KiemTraDangNhap(email,password).FirstOrDefault ( t => t.Email == email && t.Password == password);

        //        if (kh != null)
        //        {
        //            Session["kh"] = email;
        //            return RedirectToAction("HienThiTour", "Tour");
        //        }
        //        else
        //        {
        //            ModelState.AddModelError("DangNhap", "Invalid login credentials");
        //        }
        //    }
        //    return View();
        //}

        public ActionResult Index() // trang gioi thieu web 
        {
            return View();
        }

        public ActionResult Logout()
        {
            Session["kh"] = null;
            return RedirectToAction("Dangnhap");
        }

        public ActionResult VietDanhgia()
        {
           
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult VietDanhGia(Review review)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    // Gọi Stored Procedure trực tiếp từ LINQ to SQL DataContext
                    db.sp_ThemDanhGia(review.TourId, review.KhachHangId, review.NoiDung, review.Vote);

                    TempData["Message"] = "Đánh giá đã được thêm thành công!";
                    return RedirectToAction("Index");
                }
                catch (Exception ex)
                {
                    ModelState.AddModelError("", "Lỗi khi thêm đánh giá: " + ex.Message);
                }
            }
            return View(review);
        }
    
    }


}