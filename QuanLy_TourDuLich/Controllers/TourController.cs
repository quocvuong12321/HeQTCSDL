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
            ViewBag.DanhgiaCount = danhgia.Count();
            ViewBag.HienThiAnh = db.Image_Tours.Where(t => t.Tour_id == id).ToList();

            //function Hien thị số chỗ còn
            int soChoCon = db.SoLuongCon(id)!=null?(int)(db.SoLuongCon(id)):0;

            ViewBag.SoChoCon = soChoCon;

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
           //Procedure lọc tour nâng cao
            var kq = db.sp_TimKiemTours(ngaykh, mucgia, noiden, ltour).ToList();

            var tours = kq.Select(t => t.Tour_id).ToList();

            var lstTour = db.Tours.Where(t => tours.Contains(t.Tour_id)).ToList();

            return View("HienThiTour", lstTour);
        }

        public ActionResult SanPhamLienQuan(int diemden, string id)
        {
            if (string.IsNullOrEmpty(id))
            {
                return PartialView(new List<Tour>());
            }
            List<Tour> ds = db.Tours.Where(t => t.DiemDen_id.Equals(diemden) && t.Tour_id != id && t.TrangThai.Equals("Mở bán")).Take(4).ToList();

            return PartialView(ds ?? new List<Tour>());
        }
    }
}