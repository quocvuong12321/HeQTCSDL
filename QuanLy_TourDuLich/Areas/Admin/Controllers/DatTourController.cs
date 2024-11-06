using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using QuanLy_TourDuLich.Models;
using System.Data.SqlClient;
using QuanLy_TourDuLich.Areas.Admin.Models;
namespace QuanLy_TourDuLich.Areas.Admin.Controllers
{
    public class DatTourController : Controller
    {
        // GET: Admin/DatTour

        QuanLyTourDuLichDataContext db = new QuanLyTourDuLichDataContext();
        public ActionResult Index()
        {
            return View();
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