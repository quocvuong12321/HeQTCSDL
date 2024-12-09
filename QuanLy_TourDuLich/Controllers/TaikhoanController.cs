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
        
        // Form đăng ký cho khách hàng chưa có tài khoản 
        public ActionResult Dangky()
        {
            return View();
        }
       
        [HttpPost]
        public ActionResult Dangky(FormCollection c)
        {
            KhachHang kh = new KhachHang();
            if (ModelState.IsValid)
            {

                // Kiểm tra email đã tồn tại trong cơ sở dữ liệu chưa
                var check = db.KhachHangs.FirstOrDefault(s => s.Email == kh.Email);
                if (check == null)
                {
                    
                    // Gán mã khách hàng mới và hash mật khẩu trước khi lưu
                    kh.KhachHang_id = c["taikhoan"];
                    kh.Name = c["Name"];
                    kh.Email = c["Email"];
                    kh.DienThoai = c["Dienthoai"];
                    kh.DiaChi = c["Diachi"];
                    kh.Password = c["Password"];
                    kh.Gioitinh = Convert.ToBoolean(c["Gioitinh"]);
                    // Thêm khách hàng mới vào cơ sở dữ liệu
                    db.ThemKhachHang(kh.KhachHang_id, kh.Name, kh.Email, kh.DienThoai, kh.DiaChi, kh.Password, kh.Gioitinh);
                    // Chuyển hướng đến trang đăng nhập
                    return RedirectToAction("Dangnhap");
                }
                else
                {
                    // Thêm thông báo lỗi nếu email đã tồn tại
                    ModelState.AddModelError("Email", "Email này đã được sử dụng.");
                }
            }
            // Nếu có lỗi, trả về view với thông tin đã nhập
            return View(kh);
        }
        // Form đăng nhập 
        public ActionResult Dangnhap()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Dangnhap(FormCollection col)
        {
            string taikhoan = col["taikhoan"];
            string password = col["password"];

            // Tạo đối tượng DataContext
            using (QuanLyTourDuLichDataContext db = new QuanLyTourDuLichDataContext())
            {
                // Gọi Stored Procedure thông qua LINQ to SQL
                int kh = db.sp_KiemTraDangNhap(taikhoan, password);

                if (kh == 1)
                {
                   string connection = string.Format("Data Source=DESKTOP-86N3SME\\SQL_KING;Database=QL_Tour;Integrated Security=False;User Id={0};Password={1};", taikhoan, password);
                    Session["ConnectionString"] = connection;
                    Session["Role"] = "Khách hàng";
                    Session["kh"] = db.KhachHangs.FirstOrDefault(t=>t.KhachHang_id==taikhoan);
                    return RedirectToAction("HienThiTour", "Tour");
                }
                else
                {
                    ModelState.AddModelError("DangNhap", "Invalid login credentials");
                }
            }
            return View();
        }

    
        public ActionResult Index()     // trang gioi thieu web tĩnh
        {
            return View();
        }

        //Viet danh gia cua nguoi dung
        public ActionResult VietDanhgia() // Form viết đánh giá
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

        public ActionResult DangXuat()
        {
            Session["kh"] = null;
            return RedirectToAction("HienThiTour", "Tour");
        }
    

        public ActionResult ThongTinNguoiDung(string id)
        {
            return View(db.KhachHangs.FirstOrDefault(t => t.KhachHang_id == id));
        }

    }
}