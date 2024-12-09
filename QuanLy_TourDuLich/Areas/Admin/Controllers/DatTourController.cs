﻿using System;
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
        [PhanQuyen("Quản lý","Nhân viên")]
        public ActionResult HienThiDatTour()
        {
            if (Session["kh"] == null)
            {
                return RedirectToAction("DangNhapNV", "TaiKhoanNhanVien");
            }
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

        [PhanQuyen("Quản lý", "Nhân viên")]
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
        [PhanQuyen("Nhân viên")]
        public ActionResult XacNhanDatTour(int DatTour_id)
        {
            var datTour = db.DatTours.FirstOrDefault(d => d.DatTour_id == DatTour_id);

            if (datTour == null)
            {
                return HttpNotFound();
            }

            if (datTour.GhiChu == "Chưa xác nhận")
            {
                datTour.GhiChu = "Đã xác nhận";

                db.SubmitChanges();
            }

            return RedirectToAction("HienThiDatTour");
        }

        [PhanQuyen("Quản lý", "Nhân viên")]
        public ActionResult HienThiHuyTour()
        {
            var listHuyTour = new List<QuanLyHuyTour>(); // Khởi tạo danh sách để chứa dữ liệu

            using (var connection = new SqlConnection(db.Connection.ConnectionString))
            {
                connection.Open();

                // Gọi thủ tục ShowHuyTour
                using (var command = new SqlCommand("EXEC ShowHuyTour", connection))
                {
                    using (var reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            var item = new QuanLyHuyTour
                            {
                                HuyTour_id = reader["HuyTour_id"] != DBNull.Value ? (int)reader["HuyTour_id"] : 0,
                                DatTour_id = reader["DatTour_id"] != DBNull.Value ? (int)reader["DatTour_id"] : 0,
                                NgayHuy = reader["NgayHuy"] != DBNull.Value ? (DateTime)reader["NgayHuy"] : default(DateTime),
                                LyDo = reader["LyDo"] != DBNull.Value ? reader["LyDo"].ToString() : string.Empty,
                                Tour_id = reader["Tour_id"] != DBNull.Value ? reader["Tour_id"].ToString() : string.Empty,
                                TenTour = reader["TenTour"] != DBNull.Value ? reader["TenTour"].ToString() : string.Empty,
                                NhanVien_id = reader["NhanVien_id"] != DBNull.Value ? reader["NhanVien_id"].ToString() : string.Empty,
                                KhachHang_id = reader["KhachHang_id"] != DBNull.Value ? reader["KhachHang_id"].ToString() : string.Empty,
                                TenKhach = reader["TenKhach"] != DBNull.Value ? reader["TenKhach"].ToString() : string.Empty,
                                TrangThai = reader["TrangThai"] != DBNull.Value ? reader["TrangThai"].ToString() : string.Empty
                            };

                            listHuyTour.Add(item); // Thêm đối tượng vào danh sách
                        }
                    }
                }
            }

            return View(listHuyTour); // Trả về danh sách cho view
        }
        [PhanQuyen("Nhân viên")]

        public ActionResult XacNhanHuyTour(int DatTour_id)
        {
            var huyTour = db.HuyTours.FirstOrDefault(d => d.DatTour_id == DatTour_id);

            var dtour = db.DatTours.FirstOrDefault(t => t.DatTour_id == DatTour_id);

            var lsthanhkhach = db.HanhKhaches.Where(t => t.DatTour_id == DatTour_id);

            if (huyTour == null)
            {
                return HttpNotFound();
            }

            if (huyTour.TrangThai == "Chưa xác nhận")
            {
                huyTour.TrangThai = "Đã xác nhận";

                dtour.GhiChu = "Đã huỷ";

                db.HanhKhaches.DeleteAllOnSubmit(lsthanhkhach);

                db.SubmitChanges();
            }

            return RedirectToAction("HienThiHuyTour");
        }
    }
}