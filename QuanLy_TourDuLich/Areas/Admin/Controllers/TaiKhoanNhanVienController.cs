using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
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
            string id = col["id"];
            string password =col["password"];
            // Tạo đối tượng DataContext
            using (QuanLyTourDuLichDataContext db = new QuanLyTourDuLichDataContext())
            {
                // Gọi Stored Procedure thông qua LINQ to SQL
                var ktdangnhap = db.sp_KiemTraDangNhapNV(id, password);

                if (ktdangnhap == 1)
                {
                    //string connection = string.Format("Data Source=DESKTOP-86N3SME\\SQL_KING;Database=QL_Tour;Integrated Security=False;User Id={0};Password={1};", id, password);
                    //Session["ConnectionString"] = connection;
                    var nv = db.NhanViens.FirstOrDefault(t => t.NhanVien_id == id);
                    string setRole = nv.VaiTro; /*== "Quản lý" ? "1" : (nv.VaiTro == "Nhân viên" ? "2" : "3");*/
                    Session["Role"] = setRole;
                    Session["kh"] = nv;

                    FormsAuthentication.SetAuthCookie(id, false);

                    if(setRole.Equals("Hướng dẫn viên"))
                    {
                        return Redirect("~/Admin/QuanLyHanhKhachTour/Index");
                    }
                    return Redirect("~/Admin/Tour/Index");
                }
                else
                {
                    ModelState.AddModelError("DangNhap", "Invalid login credentials");
                }
            }
            return View();
        }
        public ActionResult Thongkedoanhthu()
        {
            List<sp_ThongKeDoanhThuResult> thongke = new List<sp_ThongKeDoanhThuResult>().ToList();
            return View(thongke);
        }

        public ActionResult DangXuat()
        {
            Session["kh"] = null;
            Session["Role"] = null;
            Session["ConnectionString"] = null;

            return RedirectToAction("DangNhapNV");
        }
    }
}
