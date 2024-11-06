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

        public ActionResult HienThiDatTour()
        {
            var listDatTour = new List<QuanLyDatTour>(); // Khởi tạo danh sách để chứa dữ liệu

            using (var connection = new SqlConnection(db.Connection.ConnectionString))
            {
                connection.Open();

                // Sử dụng tên thủ tục đã tạo
                using (var command = new SqlCommand("EXEC ShowDatTour", connection))
                {
                    using (var reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            var item = new QuanLyDatTour
                            {
                                DatTour_id = reader["DatTour_id"] != DBNull.Value ? (int)reader["DatTour_id"] : 0,
                                KhachHang_id = reader["KhachHang_id"] != DBNull.Value ? reader["KhachHang_id"].ToString() : string.Empty,
                                TenKhach = reader["TenKhach"] != DBNull.Value ? reader["TenKhach"].ToString() : string.Empty,
                                NgayDat = reader["NgayDat"] != DBNull.Value ? (DateTime)reader["NgayDat"] : default(DateTime),
                                SoNguoi = reader["SoNguoi"] != DBNull.Value ? (int)reader["SoNguoi"] : 0,
                                GhiChu = reader["GhiChu"] != DBNull.Value ? reader["GhiChu"].ToString() : string.Empty,
                                Tour_id = reader["Tour_id"] != DBNull.Value ? reader["Tour_id"].ToString() : string.Empty,
                                TongTien = reader["TongTien"] != DBNull.Value ? (decimal)reader["TongTien"] : 0m // Thêm tổng tiền
                            };

                            listDatTour.Add(item); // Thêm đối tượng vào danh sách
                        }
                    }
                }
            }

            return View(listDatTour); // Trả về danh sách cho view
        }








    }
}