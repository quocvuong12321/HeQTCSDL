using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace QuanLy_TourDuLich.Models
{
    public class DatTourService
    {
        private readonly QuanLyTourDuLichDataContext _db;

        public DatTourService()
        {
            _db = new QuanLyTourDuLichDataContext();
        }

        public void AddTourBooking(string khachHangId, string tourId, int soNguoi, List<HanhKhach> hanhKhachList)
        {
            using (var connection = new SqlConnection(_db.Connection.ConnectionString))
            {
                using (SqlCommand command = new SqlCommand("AddTourBooking", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    // Thêm các tham số vào lệnh
                    command.Parameters.AddWithValue("@KhachHang_id", khachHangId);
                    command.Parameters.AddWithValue("@Tour_id", tourId);
                    command.Parameters.AddWithValue("@SoNguoi", soNguoi);

                    // Tạo một bảng dữ liệu để truyền vào thủ tục
                    DataTable hanhKhachTable = new DataTable();
                    hanhKhachTable.Columns.Add("HoTen", typeof(string));
                    hanhKhachTable.Columns.Add("NgaySinh", typeof(DateTime));
                    hanhKhachTable.Columns.Add("GioiTinh", typeof(bool));

                    foreach (var hanhKhach in hanhKhachList)
                    {
                        hanhKhachTable.Rows.Add(hanhKhach.HoTen, hanhKhach.NgaySinh, hanhKhach.GioiTinh);
                    }

                    // Thêm bảng dữ liệu làm tham số
                    SqlParameter hanhKhachParam = new SqlParameter
                    {
                        ParameterName = "@HanhKhach",
                        SqlDbType = SqlDbType.Structured,
                        TypeName = "HanhKhachList",
                        Value = hanhKhachTable
                    };
                    command.Parameters.Add(hanhKhachParam);
                    try
                    {
                        connection.Open();
                        command.ExecuteNonQuery();
                        Console.WriteLine("Đặt tour thành công");
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine("Lỗi khi đặt tour: " + ex.Message);
                    }
                }
            }
        }
    }
}