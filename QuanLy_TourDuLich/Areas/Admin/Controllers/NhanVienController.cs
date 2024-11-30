using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using QuanLy_TourDuLich.Models;

namespace QuanLy_TourDuLich.Areas.Admin.Controllers
{
    public class NhanVienController : Controller
    {
        QuanLyTourDuLichDataContext db = new QuanLyTourDuLichDataContext();

        public ActionResult Index()
        {
            List<NhanVien> dsNhanVien = db.NhanViens.ToList();
            return View(dsNhanVien);
        }
        public ActionResult ThemMoiNhanVien()
        {
            return View(new NhanVien());
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult ThemMoiNhanVien(NhanVien model)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    db.NhanViens.InsertOnSubmit(model);
                    db.SubmitChanges();
                }
                catch (Exception ex)
                {
                    throw new Exception("Lỗi: " + ex.Message);
                }
                return RedirectToAction("Index");
            }
            return View(model);
        }


        public ActionResult ChinhSuaNhanVien(string id)
        {
            NhanVien nhanVien = db.NhanViens.FirstOrDefault(nv => nv.NhanVien_id == id);
            if (nhanVien == null)
            {
                return HttpNotFound();
            }
            return View(nhanVien);
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult ChinhSuaNhanVien(NhanVien model)
        {
            if (ModelState.IsValid)
            {
                NhanVien nhanVien = db.NhanViens.FirstOrDefault(nv => nv.NhanVien_id == model.NhanVien_id);
                if (nhanVien != null)
                {
                    nhanVien.HoTen = model.HoTen;
                    nhanVien.Email = model.Email;
                    nhanVien.DiaChi = model.DiaChi;
                    nhanVien.DienThoai = model.DienThoai;
                    nhanVien.GioiTinh = model.GioiTinh;
                    nhanVien.Password = model.Password;
                    nhanVien.VaiTro = model.VaiTro;

                    db.SubmitChanges();
                    return RedirectToAction("Index");
                }
            }
            return View(model);
        }


        public ActionResult XoaNhanVien(string id)
        {
            NhanVien nhanVien = db.NhanViens.FirstOrDefault(nv => nv.NhanVien_id == id);
            if (nhanVien == null)
            {
                return HttpNotFound();
            }
            return View(nhanVien);
        }

        [HttpPost, ActionName("XoaNhanVien")]
        public ActionResult XacNhanXoa(string id)
        {
            NhanVien nhanVien = db.NhanViens.FirstOrDefault(nv => nv.NhanVien_id == id);
            if (nhanVien != null)
            {
                db.NhanViens.DeleteOnSubmit(nhanVien);
                db.SubmitChanges();
            }
            return RedirectToAction("Index");
        }

        public ActionResult ChiTietNhanVien(string id)
        {
            NhanVien nhanVien = db.NhanViens.FirstOrDefault(nv => nv.NhanVien_id == id);
            if (nhanVien == null)
            {
                return HttpNotFound();
            }
            return View(nhanVien);
        }
        
    }
}