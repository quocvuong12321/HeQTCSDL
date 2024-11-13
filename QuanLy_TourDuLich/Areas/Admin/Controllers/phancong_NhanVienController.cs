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

        // GET: Admin/PhanCongNhanVien
        public ActionResult Index()
        {
            var dsPhanCong = db.PhanCong_NhanViens.ToList();
            return View(dsPhanCong);
        }

        // GET: Admin/PhanCongNhanVien/ThemMoiPhanCong
        public ActionResult ThemMoiPhanCong()
        {
            ViewBag.Tour_id = new SelectList(db.Tours.ToList(), "Tour_id", "Name");
            ViewBag.NhanVien_id = new SelectList(db.NhanViens.ToList(), "NhanVien_id", "HoTen");
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
            ViewBag.NhanVien_id = new SelectList(db.NhanViens.ToList(), "NhanVien_id", "HoTen");
            return View(model);
        }

        // GET: Admin/PhanCongNhanVien/ChinhSuaPhanCong/5
        public ActionResult ChinhSuaPhanCong(string id)
        {
            var phanCong = db.PhanCong_NhanViens.FirstOrDefault(pc => pc.Tour_id == id);
            if (phanCong == null)
            {
                return HttpNotFound();
            }

            ViewBag.Tour_id = new SelectList(db.Tours.ToList(), "Tour_id", "Name", phanCong.Tour_id);
            ViewBag.NhanVien_id = new SelectList(db.NhanViens.ToList(), "NhanVien_id", "HoTen", phanCong.NhanVien_id);
            return View(phanCong);
        }

        [HttpPost]
        public ActionResult ChinhSuaPhanCong(PhanCong_NhanVien model)
        {
            if (ModelState.IsValid)
            {
                var phanCong = db.PhanCong_NhanViens.FirstOrDefault(pc => pc.Tour_id == model.Tour_id);
                if (phanCong != null)
                {
                    phanCong.Tour_id = model.Tour_id;
                    phanCong.NhanVien_id = model.NhanVien_id;

                    db.SubmitChanges();
                    return RedirectToAction("Index");
                }
            }

            ViewBag.Tour_id = new SelectList(db.Tours.ToList(), "Tour_id", "Name", model.Tour_id);
            ViewBag.NhanVien_id = new SelectList(db.NhanViens.ToList(), "NhanVien_id", "HoTen", model.NhanVien_id);
            return View(model);
        }

        // GET: Admin/PhanCongNhanVien/XoaPhanCong/5
        public ActionResult XoaPhanCong(string id)
        {
            var phanCong = db.PhanCong_NhanViens.FirstOrDefault(pc => pc.Tour_id == id);
            if (phanCong == null)
            {
                return HttpNotFound();
            }
            return View(phanCong);
        }

        [HttpPost, ActionName("XoaPhanCong")]
        public ActionResult XacNhanXoa(string id)
        {
            var phanCong = db.PhanCong_NhanViens.FirstOrDefault(pc => pc.Tour_id == id);
            if (phanCong != null)
            {
                db.PhanCong_NhanViens.DeleteOnSubmit(phanCong);
                db.SubmitChanges();
            }
            return RedirectToAction("Index");
        }

        // GET: Admin/PhanCongNhanVien/ChiTietPhanCong/5
        public ActionResult ChiTietPhanCong(string id)
        {
            var phanCong = db.PhanCong_NhanViens.FirstOrDefault(pc => pc.Tour_id == id);
            if (phanCong == null)
            {
                return HttpNotFound();
            }
            return View(phanCong);
        }
    }
}
