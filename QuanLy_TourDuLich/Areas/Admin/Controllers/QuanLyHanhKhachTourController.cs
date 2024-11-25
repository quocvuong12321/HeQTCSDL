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

        // GET: QuanLyHanhKhachTour
        public ActionResult Index()
        {
            var tours = db.Tours.ToList();
            return View(tours);
        }

        // GET: QuanLyHanhKhachTour/Details/5
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
            var phanCong = db.PhanCong_NhanViens.SingleOrDefault(p => p.Tour_id == id);
            var huongDanVien = phanCong != null ? db.NhanViens.SingleOrDefault(n => n.NhanVien_id == phanCong.NhanVien_id) : null;

            var viewModel = new TourDetailsViewModel
            {
                Tour = tour,
                HuongDanVien = huongDanVien,
                HanhKhachs = hanhKhachs
            };

            return View(viewModel);
        }
    }
    
}
