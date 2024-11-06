using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using QuanLy_TourDuLich.Models;
using System.Data.SqlClient;
using System.Dynamic;
using QuanLy_TourDuLich.Areas.Admin.Models;

namespace QuanLy_TourDuLich.Areas.Admin.Controllers
{
    public class TourController : Controller
    {
        // GET: Admin/Tour
        QuanLyTourDuLichDataContext db = new QuanLyTourDuLichDataContext();
        public ActionResult Index()
        {
            List<Tour> dsTour = db.Tours.ToList();
            return View(dsTour);
        }

        public ActionResult ThemMoiTour()
        {
            int SoTour = db.Tours.Count() + 1;
            string MaTour = "Tour" + SoTour.ToString("D3");
            ViewBag.MaTour = MaTour;
            ViewBag.NhaHang= new SelectList(db.NhaHangs.ToList().OrderBy(t => t.NhaHang_id), "NhaHang_id", "Name");
            ViewBag.KhachSan= new SelectList(db.KhachSans.ToList().OrderBy(t => t.KhachSan_id), "KhachSan_id", "Name");
            ViewBag.TinhThanh = new SelectList(db.TinhThanhs.ToList().OrderBy(t => t.TinhThanh_id), "TinhThanh_id", "Name");
            return View(new Tour());
        }

        [HttpPost]
        [ValidateInput(false)]

        public ActionResult ThemMoiTour(Tour model)
        {
            if (ModelState.IsValid)
            {
                int SoTour = db.Tours.Count() + 1;
                string MaTour = "Tour" + SoTour.ToString("D3");
                model.Tour_id = MaTour;
                //db.Tours.InsertOnSubmit(model);
                //db.SubmitChanges();
                try { 
                
                var result = db.ExecuteCommand("EXEC proc_ThemMoiTour @Tour_id={0}, @Name={1}, @Gia={2}, @MoTa={3}, @LichTrinh={4}, @DiemKhoiHanh_id={5}, @DiemDen_id={6}, @KhachSan_id={7}, @NgayKhoiHanh={8}, @NgayKetThuc={9}, @SoLuongCon={10}, @LoaiTour={11}, @TrangThai={12}, @NhaHang_id = {13}",
                model.Tour_id,
                model.Name,
                model.Gia,
                model.MoTa,
                model.LichTrinh,
                model.DiemKhoiHanh_id,
                model.DiemDen_id,
                model.KhachSan_id,
                model.NgayKhoiHanh,
                model.NgayKetThuc,
                model.SoLuongCon,
                model.LoaiTour,
                model.TrangThai,
                "NH001");
                }
                catch (Exception ex)
                {
                    throw new Exception("Lỗi: " + ex);
                }

                return RedirectToAction("Index");
            }
            ViewBag.TinhThanh = new SelectList(db.TinhThanhs.ToList().OrderBy(t => t.TinhThanh_id), "TinhThanh_id", "Name");
            ViewBag.NhaHang = new SelectList(db.NhaHangs.ToList().OrderBy(t => t.NhaHang_id), "NhaHang_id", "Name");
            ViewBag.KhachHang = new SelectList(db.KhachSans.ToList().OrderBy(t => t.KhachSan_id), "KhachSan_id", "Name");
            return View(model);
        }

       




    }
}