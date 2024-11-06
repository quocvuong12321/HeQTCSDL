using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using QuanLy_TourDuLich.Models;
using QuanLy_TourDuLich.Areas.Admin.Models;
using System.IO;
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

        public ActionResult ThemHinhAnhTour(string id)
        {
            Tour t = db.Tours.FirstOrDefault(a=>a.Tour_id == id);
            if (t == null)
            {
                return RedirectToAction("Index"); // Xử lý nếu không tìm thấy tour
            }

            ViewBag.TourId = id;
            return View("ThemHinhAnhTour", t);
        }

        [HttpPost]
        public ActionResult ThemHinhAnhTour(Tour t, IEnumerable<HttpPostedFileBase> fileUpLoad)
        //Thêm hình ảnh cho tour có tour_id == id
        {
            //var t = db.Tours.FirstOrDefault(a => a.Tour_id == id);
            if (fileUpLoad == null || !fileUpLoad.Any() || fileUpLoad.All(f => f == null))
            {
                ViewBag.Thongbao = "Vui lòng chọn ít nhất 1 ảnh";
                return View(t);
            }
            else
            {
                if (ModelState.IsValid)
                {
                    // Duyệt qua các tệp ảnh được tải lên và lưu trữ chúng
                    foreach (var file in fileUpLoad)
                    {
                        if (file != null && file.ContentLength > 0)
                        {
                            var fileName = Path.GetFileName(file.FileName);
                            var path = Path.Combine(Server.MapPath("~/img"), fileName);

                            // Kiểm tra xem tệp đã tồn tại chưa, nếu chưa thì lưu trữ tệp
                            if (!System.IO.File.Exists(path))
                            {
                                file.SaveAs(path);
                                db.Image_Tours.InsertOnSubmit(new Image_Tour
                                {
                                    Tour_id = t.Tour_id,
                                    Name = fileName
                                });
                            }
                            else
                            {
                                ViewBag.Thongbao = "Một hoặc nhiều hình ảnh đã tồn tại";
                                return View(t);
                            }
                        }
                    }
                    db.SubmitChanges();
                    return RedirectToAction("Index");
                }
            }
            return View(t);
        }

        public ActionResult ChiTietTour(string id) // Hiển thị chi tiết tour
        {
            return View(db.Tours.FirstOrDefault(t => t.Tour_id == id));
        }

        public ActionResult dsAnh(string id) //Lấy ra List hình ảnh của tour có Tour_id == id
        {
            return PartialView(db.Image_Tours.Where(t => t.Tour_id == id).ToList());
        }

    }
}