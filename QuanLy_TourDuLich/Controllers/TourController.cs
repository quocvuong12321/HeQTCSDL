using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using QuanLy_TourDuLich.Models;
namespace QuanLy_TourDuLich.Controllers
{
    public class TourController : Controller
    {
        // GET: Tour
        QuanLyTourDuLichDataContext db = new QuanLyTourDuLichDataContext();

        public ActionResult HienThiTour()
        {
            List<Tour> lst = db.Tours.Where(t => t.TrangThai.Equals("Mở bán")).ToList();
            return View(lst);
        }

        public ActionResult AnhChoCard(string id)
        {
            var imgs_tour = db.Image_Tours.OrderBy(a => a.Name).Where(t => t.Tour_id == id).Take(1).ToList();
            return PartialView(imgs_tour);
        }

        public ActionResult ChiTietTour(string id)
        {
            var danhgia = db.DanhGias.Where(f => f.Tour_id == id).ToList();
            ViewBag.DanhgiaCount = danhgia.Count;
            ViewBag.HienThiAnh = db.Image_Tours.Where(t => t.Tour_id == id).ToList();
            return View(db.Tours.FirstOrDefault(t => t.Tour_id == id));
        }
        public ActionResult GioiThieu()
        {
            return View();
        }

        //Chức năng tìm kiếm thường
        public ActionResult TimKiem(string search)
        {
            var result = db.Tours.Where(t => t.Name.Contains(search)).ToList();
            return View("HienThiTour", result);
        }

        public ActionResult TimKiemNangCao()
        {
            ViewBag.lstTinhThanh = db.TinhThanhs.ToList();
            return View();
        }

        //Tìm kiếm nâng cao
        public ActionResult KQTimKiem(DateTime? ngaykh, string mucgia, string noiden, string ltour)
        {
            ViewBag.lstTinhThanh = db.TinhThanhs.ToList();
            var query = db.Tours.AsQueryable();

            if (ngaykh.HasValue)
            {
                query = query.Where(t => t.NgayKhoiHanh == ngaykh);
            }

            if (!string.IsNullOrEmpty(noiden))
            {
                query = query.Where(t => t.TinhThanh.Name.Contains(noiden));
            }

            if (!string.IsNullOrEmpty(mucgia))
            {
                switch (mucgia)
                {
                    case "1":
                        query = query.Where(t => t.Gia < 2000000);
                        break;
                    case "2":
                        query = query.Where(t => t.Gia >= 2000000 && t.Gia <= 4000000);
                        break;
                    case "3":
                        query = query.Where(t => t.Gia >= 4000000 && t.Gia <= 6000000);
                        break;
                    case "4":
                        query = query.Where(t => t.Gia >= 6000000 && t.Gia <= 10000000);
                        break;
                    case "5":
                        query = query.Where(t => t.Gia >= 10000000 && t.Gia <= 20000000);
                        break;
                    case "6":
                        query = query.Where(t => t.Gia >= 20000000 && t.Gia <= 50000000);
                        break;
                    case "7":
                        query = query.Where(t => t.Gia > 50000000);
                        break;
                }
            }

            if (!string.IsNullOrEmpty(ltour))
            {
                switch (ltour)
                {
                    case "1":
                        query = query.Where(t => t.LoaiTour == "Trong nước");
                        break;
                    case "2":
                        query = query.Where(t => t.LoaiTour == "Ngoài nước");
                        break;
                }
            }

            List<Tour> kq = query.Where(t => t.TrangThai.Equals("Mở bán")).ToList();


            return View("HienThiTour", kq);
        }

        public ActionResult SanPhamLienQuan(string diemkh, string id)
        {
            if (string.IsNullOrEmpty(diemkh) || string.IsNullOrEmpty(id))
            {
                return PartialView(new List<Tour>());
            }
            List<Tour> ds = db.Tours.Where(t => t.TinhThanh1.Name.Contains(diemkh) && t.Tour_id != id && t.TrangThai.Equals("Mở bán")).Take(4).ToList();

            return PartialView(ds ?? new List<Tour>());

        }
    }
}