using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web.Mvc;
using QuanLy_TourDuLich.Models;

namespace QuanLy_TourDuLich.Areas.Admin.Controllers
{
    public class QuanLyHanhKhachTourController : Controller
    {
        private QuanLyTourDuLichDataContext db = new QuanLyTourDuLichDataContext();
        public ActionResult Index()
        {
            var tours = db.Tours.ToList();
            return View(tours);
        }
        public ActionResult Details(string id)
        {
            if (string.IsNullOrEmpty(id))
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }

            var tour = db.Tours.SingleOrDefault(t => t.Tour_id == id);

            if (tour == null)
            {
                return HttpNotFound();
            }

            var hanhKhachs = db.HanhKhaches.Where(h => h.Tour_id == id).ToList();
            var phanCongList = db.PhanCong_NhanViens.Where(p => p.Tour_id == id).ToList();
            var huongDanVienList = phanCongList.Select(p => db.NhanViens.SingleOrDefault(n => n.NhanVien_id == p.NhanVien_id)).ToList();

            var viewModel = new TourDetailsViewModel
            {
                Tour = tour,
                HuongDanVien = huongDanVienList,
                HanhKhachs = hanhKhachs
            };

            return View(viewModel);
        }
        public class TourDetailsViewModel
        {
            public Tour Tour { get; set; }
            public List<NhanVien> HuongDanVien { get; set; }
            public List<HanhKhach> HanhKhachs { get; set; }
        }
    }
    
}
