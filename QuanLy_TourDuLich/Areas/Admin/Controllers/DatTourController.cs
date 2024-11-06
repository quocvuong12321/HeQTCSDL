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
    public class DatTourController : Controller
    {
        // GET: Admin/DatTour

        QuanLyTourDuLichDataContext db = new QuanLyTourDuLichDataContext();

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

        public ActionResult HienThiChiTietDatTour(int DatTour_id)
        {
            var listHanhKhachDatTour = new List<QuanLyHanhKhachDatTour>(); // Khởi tạo danh sách để chứa dữ liệu hành khách

            // Biến để chứa thông tin tour
            ViewBag.TourId = string.Empty;
            ViewBag.TenTour = string.Empty;
            ViewBag.DiemKhoiHanh = string.Empty;
            ViewBag.DiemDen = string.Empty;
            ViewBag.NgayKhoiHanh = string.Empty;
            ViewBag.NgayKetThuc = string.Empty;

            using (var connection = new SqlConnection(db.Connection.ConnectionString))
            {
                connection.Open();

                // Lấy thông tin tour từ thủ tục GetTourDetailsByDatTourId
                using (var command = new SqlCommand("EXEC GetTourDetailsByDatTourId @DatTour_id", connection))
                {
                    command.Parameters.AddWithValue("@DatTour_id", DatTour_id);

                    using (var reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            // Lấy dữ liệu từ thủ tục và gán vào ViewBag
                            ViewBag.TourId = reader["Tour_id"].ToString();
                            ViewBag.TenTour = reader["TenTour"].ToString();
                            ViewBag.DiemKhoiHanh = reader["DiemKhoiHanh"].ToString();
                            ViewBag.DiemDen = reader["DiemDen"].ToString();
                            ViewBag.NgayKhoiHanh = ((DateTime)reader["NgayKhoiHanh"]).ToString("dd/MM/yyyy");
                            ViewBag.NgayKetThuc = ((DateTime)reader["NgayKetThuc"]).ToString("dd/MM/yyyy");
                        }
    }
}

                // Lấy thông tin hành khách từ thủ tục ShowHanhKhachDatTour
                using (var command = new SqlCommand("EXEC ShowHanhKhachDatTour @DatTour_id", connection))
                {
                    command.Parameters.AddWithValue("@DatTour_id", DatTour_id);

                    using (var reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            var item = new QuanLyHanhKhachDatTour
                            {
                                HanhKhachId = reader["HanhKhach_id"] != DBNull.Value ? (int)reader["HanhKhach_id"] : 0,
                                HoTen = reader["HoTen"] != DBNull.Value ? reader["HoTen"].ToString() : string.Empty,
                                NgaySinh = reader["NgaySinh"] != DBNull.Value ? (DateTime)reader["NgaySinh"] : default(DateTime),
                                GioiTinh = reader["GioiTinh"] != DBNull.Value ? (bool)reader["GioiTinh"] : false // Giới tính có thể là true (nữ) hoặc false (nam)
                            };

                            listHanhKhachDatTour.Add(item); // Thêm đối tượng vào danh sách
                        }
                    }
                }
            }

            // Trả về dữ liệu vào view
            return View(listHanhKhachDatTour);
        }


    }
}