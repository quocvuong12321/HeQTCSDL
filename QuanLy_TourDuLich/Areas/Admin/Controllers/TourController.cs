using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using QuanLy_TourDuLich.Models;
using System.Threading;
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
                string MaTour = "TOUR" + SoTour.ToString("D3");
                model.Tour_id = MaTour;
                try { 
                    //Proc thêm mới tour
                    var result = db.proc_ThemMoiTour(model.Tour_id,
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
                    model.TrangThai);
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

        public ActionResult Edit(string id)
        {
            ViewBag.TinhThanh = new SelectList(db.TinhThanhs.ToList().OrderBy(t => t.TinhThanh_id), "TinhThanh_id", "Name");
            ViewBag.NhaHang = new SelectList(db.NhaHangs.ToList().OrderBy(t => t.NhaHang_id), "NhaHang_id", "Name");
            ViewBag.KhachSan = new SelectList(db.KhachSans.ToList().OrderBy(t => t.KhachSan_id), "KhachSan_id", "Name");
            return View(db.Tours.FirstOrDefault(t => t.Tour_id.Equals(id)));
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Edit(Tour model)
        {
            if (ModelState.IsValid)
            {
                var tour = db.Tours.FirstOrDefault(t => t.Tour_id.Equals(model.Tour_id));
                if(tour != null)
                {
                    try
                    {
                        //Proc Update tour
                        var result = db.UpdateTour(model.Tour_id, model.Name, model.Gia, model.MoTa, model.LichTrinh, model.DiemKhoiHanh_id, model.DiemDen_id, model.KhachSan_id,
                            model.NgayKhoiHanh, model.NgayKetThuc, model.SoLuongCon, model.LoaiTour, model.TrangThai);
                    }
                    catch (Exception ex)
                    {
                        throw new Exception("Lỗi: " + ex);
                    }
                }
            }
            ViewBag.TinhThanh = new SelectList(db.TinhThanhs.ToList().OrderBy(t => t.TinhThanh_id), "TinhThanh_id", "Name");
            ViewBag.NhaHang = new SelectList(db.NhaHangs.ToList().OrderBy(t => t.NhaHang_id), "NhaHang_id", "Name");
            ViewBag.KhachSan = new SelectList(db.KhachSans.ToList().OrderBy(t => t.KhachSan_id), "KhachSan_id", "Name");
            return RedirectToAction("Index");
        }

        public ActionResult XoaHinhAnh(string id)
        {
            return View(db.Image_Tours.Where(t => t.Tour_id == id).ToList());
        }
        [HttpPost]
        public ActionResult XoaHinhAnh(int imageId, string tourId)
        {
            var image = db.Image_Tours.FirstOrDefault(i => i.Img_id == imageId);
            if (image != null)
            {
                var imagePath = Path.Combine(Server.MapPath("~/img"), image.Name);

                // Delete the file from the file system
                if (System.IO.File.Exists(imagePath))
                {
                    System.IO.File.Delete(imagePath);
                }

                // Delete the record from the database
                db.Image_Tours.DeleteOnSubmit(image);
                db.SubmitChanges();
            }

            return RedirectToAction("XoaHinhAnh", new { id = tourId });
        }

        public ActionResult ThemNhaHang(string id)
        {
            var tour = db.Tours.FirstOrDefault(t => t.Tour_id.Equals(id));
            int diemDen = tour.TinhThanh.TinhThanh_id;

            ViewBag.NhaHang = db.NhaHangs.Where(t => t.TinhThanh_id == diemDen).ToList();

            var nh_t = db.NhaHang_Tours.Where(t => t.Tour_id.Equals(id)).ToList();
            ViewBag.NhaHang_Tour = db.NhaHang_Tours.Where(t => t.Tour_id.Equals(id)).ToList();

            return View(tour);
        }

        [HttpPost]
        public ActionResult kqThemNhaHang(string id, string maNhaHang)
        {
            string message = string.Empty;

            if (db.NhaHang_Tours.Any(t => t.Tour_id.Equals(id) && t.NhaHang_id.Equals(maNhaHang)))
            {
                message = "Restaurants that already exist!";
            }
            else
            {
                //Proc Them Nha Hang
                db.sp_ThemNhaHang(id, maNhaHang);
                message = "Add a successful restaurant!";
            }

            TempData["ThongBao"] = message;  
            return RedirectToAction("ThemNhaHang", new { id = id });
        }
    }
}