using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using QuanLy_TourDuLich.Models;

namespace QuanLy_TourDuLich.Areas.Admin.Controllers
{
    public class PhanCongNhanVienController : Controller
    {
        QuanLyTourDuLichDataContext db = new QuanLyTourDuLichDataContext();

        public ActionResult Index()
        {
            var dsPhanCong = db.PhanCong_NhanViens.ToList();
            return View(dsPhanCong);
        }

        public ActionResult ThemMoiPhanCong()
        {
            ViewBag.Tour_id = new SelectList(db.Tours.ToList(), "Tour_id", "Name");
            ViewBag.NhanVien_id = new SelectList(db.NhanViens.Where(nv => nv.VaiTro == "Hướng dẫn viên").ToList(), "NhanVien_id", "HoTen");
            return View(new PhanCong_NhanVien());
        }

        [HttpPost]
        public ActionResult ThemMoiPhanCong(PhanCong_NhanVien model)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    db.PhanCong_NhanViens.InsertOnSubmit(model);
                    db.SubmitChanges();
                }
                catch (Exception ex)
                {
                    throw new Exception("Lỗi: " + ex.Message);
                }
                return RedirectToAction("Index");
            }

            ViewBag.Tour_id = new SelectList(db.Tours.ToList(), "Tour_id", "Name");
            ViewBag.NhanVien_id = new SelectList(db.NhanViens.Where(nv => nv.VaiTro == "Hướng dẫn viên").ToList(), "NhanVien_id", "HoTen");
            return View(model);
        }

        public ActionResult XoaPhanCong(string Tour_id, string NhanVien_id)
        {
            var phanCong = db.PhanCong_NhanViens.FirstOrDefault(pc => pc.Tour_id == Tour_id && pc.NhanVien_id == NhanVien_id);
            if (phanCong == null)
            {
                return HttpNotFound();
            }
            return View(phanCong);
        }

        [HttpPost, ActionName("XoaPhanCong")]
        public ActionResult XacNhanXoa(string Tour_id, string NhanVien_id)
        {
            var phanCong = db.PhanCong_NhanViens.FirstOrDefault(pc => pc.Tour_id == Tour_id && pc.NhanVien_id == NhanVien_id);
            if (phanCong != null)
            {
                db.PhanCong_NhanViens.DeleteOnSubmit(phanCong);
                db.SubmitChanges();
            }
            return RedirectToAction("Index");
        }
    }
}
