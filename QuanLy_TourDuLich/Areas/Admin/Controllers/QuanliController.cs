using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using QuanLy_TourDuLich.Models;
namespace QuanLy_TourDuLich.Areas.Admin.Controllers
{
    [PhanQuyen("Quản lý")]
    public class QuanliController : Controller
    {
        // GET: Quanli
        public ActionResult Index()
        {
            return View();
        }

        QuanLyTourDuLichDataContext db = new QuanLyTourDuLichDataContext();
       
        //Quan li nha hang-------------------------------------------------------------
        public ActionResult Nhahang()
        {
            List<NhaHang> nhahang = db.NhaHangs.OrderBy( m=> m.Name).ToList();
            return View(nhahang);
        }
        public ActionResult Tinhthanh()
        {
            List<TinhThanh> tinhthanh = db.TinhThanhs.OrderBy(m => m .Name).ToList();
            return PartialView("Tinhthanh", tinhthanh);
        }
        public ActionResult HthiNhahangTheoTinh(int? id)
        {
            // Xử lý với id tỉnh thành
            var result = db.sp_HthiNhaHangTheoTinh(id).ToList();
            return View(result);
        }

        [HttpPost]
        public ActionResult ThemNhaHang(NhaHang nh)
        {
            if (ModelState.IsValid)
            {
                nh.NhaHang_id = Guid.NewGuid().ToString();  // Tạo ID ngẫu nhiên
                db.NhaHangs.InsertOnSubmit(nh);  // Thêm nhà hàng vào DB
                db.SubmitChanges();  // Lưu thay đổi
            }
            return RedirectToAction("Nhahang");
        }

        // Xóa nhà hàng
        [HttpPost]
        public ActionResult XoaNhaHang(string NhaHang_id)
        {
            var nh = db.NhaHangs.FirstOrDefault(n => n.NhaHang_id == NhaHang_id);
            if (nh != null)
            {
                db.NhaHangs.DeleteOnSubmit(nh);  // Xóa nhà hàng
                db.SubmitChanges();  // Lưu thay đổi
            }
            return RedirectToAction("Nhahang");
        }
        // Sửa thông tin nhà hàng
        [HttpPost]
        public ActionResult SuaNhaHang(string NhaHang_id)
        {
            var nh = db.NhaHangs.FirstOrDefault(n => n.NhaHang_id == NhaHang_id);
            if (nh != null)
            {
                // Điều hướng đến View sửa thông tin
                return View("SuaNhaHang", nh);
            }
            return RedirectToAction("Nhahang");
        }

        // Cập nhật nhà hàng (sau khi chỉnh sửa)
        [HttpPost]
        public ActionResult CapNhatNhaHang(NhaHang nh)
        {
            var nhaHangToUpdate = db.NhaHangs.FirstOrDefault(n => n.NhaHang_id == nh.NhaHang_id);
            if (nhaHangToUpdate != null)
            {
                nhaHangToUpdate.Name = nh.Name;
                nhaHangToUpdate.TinhThanh_id = nh.TinhThanh_id;
                db.SubmitChanges();  // Lưu thay đổi
            }
            return RedirectToAction("Nhahang");
        }


        // Quan li Khach san-----------------------------------------------------------
        public ActionResult Khachsan()
        {
            List<KhachSan> khachsan = db.KhachSans.OrderBy(m => m.Name).ToList();
            return View(khachsan);
        }
        
        public ActionResult Tinhthanh1()
        {
            List<TinhThanh> tinhthanh = db.TinhThanhs.ToList();
            return PartialView("Tinhthanh1", tinhthanh);
        }

        public ActionResult HthiKhachsanTheoTinh(int? id)
        {
            var result = db.sp_HthiKhachSanTheoTinh(id).ToList();
            return View(result);
        }

        [HttpPost]
        public ActionResult ThemKhachSan(KhachSan ks)
        {
            if (ModelState.IsValid)
            {
                ks.KhachSan_id= Guid.NewGuid().ToString();  // Tạo ID ngẫu nhiên
                db.KhachSans.InsertOnSubmit(ks);  // Thêm nhà hàng vào DB
                db.SubmitChanges();  // Lưu thay đổi
            }
            return RedirectToAction("Khachsan");
        }
        // Xóa nhà hàng
        [HttpPost]
        public ActionResult XoaKhachSan(string KhachSan_id)
        {
            var ks = db.KhachSans.FirstOrDefault(n => n.KhachSan_id == KhachSan_id);
            if (ks != null)
            {
                db.KhachSans.DeleteOnSubmit(ks);  // Xóa nhà hàng
                db.SubmitChanges();  // Lưu thay đổi
            }
            return RedirectToAction("Khachsan");
        }
        // Sửa thông tin nhà hàng
        [HttpPost]
        public ActionResult SuaKhachSan(string KhachSan_id)
        {
            var ks = db.KhachSans.FirstOrDefault(n => n.KhachSan_id == KhachSan_id);
            if (ks != null)
            {
                // Điều hướng đến View sửa thông tin
                return View("SuaKhachSan",ks);
            }
            return RedirectToAction("Khachsan");
        }

        // Cập nhật nhà hàng (sau khi chỉnh sửa)
        [HttpPost]
        public ActionResult CapNhatKhachSan(KhachSan ks)
        {
            var khachSanToUpdate = db.KhachSans.FirstOrDefault(n => n.KhachSan_id == ks.KhachSan_id);
            if (khachSanToUpdate != null)
            {
                 khachSanToUpdate.Name = ks.Name;
                 khachSanToUpdate.TinhThanh_id = ks.TinhThanh_id;
                db.SubmitChanges();  // Lưu thay đổi
            }
            return RedirectToAction("KhachSan");
        }
    }
}