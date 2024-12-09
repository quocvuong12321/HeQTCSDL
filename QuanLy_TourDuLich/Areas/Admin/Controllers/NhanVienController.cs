using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using QuanLy_TourDuLich.Models;
using System.Data;
using System.Data.SqlClient;

namespace QuanLy_TourDuLich.Areas.Admin.Controllers
{
    [PhanQuyen("Quản lý")]
    public class NhanVienController : Controller
    {
        QuanLyTourDuLichDataContext db = new QuanLyTourDuLichDataContext();

        public ActionResult Index()
        {
            if (Session["kh"] == null)
            {
                return RedirectToAction("DangNhapNV", "TaiKhoanNhanVien");
            }
            List<NhanVien> dsNhanVien = db.NhanViens.ToList();
            return View(dsNhanVien);
        }
        public ActionResult ThemMoiNhanVien()
        {
            return View(new NhanVien());
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult ThemMoiNhanVien(NhanVien model)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    using (var connection = new SqlConnection(db.Connection.ConnectionString))
                    {
                        connection.Open();
                        using (var command = new SqlCommand("ThemNhanVien", connection))
                        {
                            command.CommandType = CommandType.StoredProcedure;
                            command.Parameters.AddWithValue("@NhanVien_id", model.NhanVien_id);
                            command.Parameters.AddWithValue("@HoTen", model.HoTen);
                            command.Parameters.AddWithValue("@DiaChi", model.DiaChi);
                            command.Parameters.AddWithValue("@Email", model.Email);
                            command.Parameters.AddWithValue("@DienThoai", model.DienThoai ?? (object)DBNull.Value);
                            command.Parameters.AddWithValue("@GIOITINH", model.GioiTinh);
                            command.Parameters.AddWithValue("@password", model.Password ?? (object)DBNull.Value);
                            command.Parameters.AddWithValue("@VaiTro", model.VaiTro);

                            command.ExecuteNonQuery();
                        }
                    }
                    return RedirectToAction("Index");
                }
                catch (Exception ex)
                {
                    throw new Exception("Lỗi: " + ex.Message);
                }
            }
            return View(model);
        }


        public ActionResult ChinhSuaNhanVien(string id)
        {
            NhanVien nhanVien = db.NhanViens.FirstOrDefault(nv => nv.NhanVien_id == id);
            if (nhanVien == null)
            {
                return HttpNotFound();
            }
            return View(nhanVien);
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult ChinhSuaNhanVien(NhanVien model)
        {
            if (ModelState.IsValid)
            {
                NhanVien nhanVien = db.NhanViens.FirstOrDefault(nv => nv.NhanVien_id == model.NhanVien_id);
                if (nhanVien != null)
                {
                    nhanVien.HoTen = model.HoTen;
                    nhanVien.Email = model.Email;
                    nhanVien.DiaChi = model.DiaChi;
                    nhanVien.DienThoai = model.DienThoai;
                    nhanVien.GioiTinh = model.GioiTinh;
                    nhanVien.Password = model.Password;
                    nhanVien.VaiTro = model.VaiTro;

                    db.SubmitChanges();
                    return RedirectToAction("Index");
                }
            }
            return View(model);
        }


        public ActionResult XoaNhanVien(string id)
        {
            NhanVien nhanVien = db.NhanViens.FirstOrDefault(nv => nv.NhanVien_id == id);
            if (nhanVien == null)
            {
                return HttpNotFound();
            }
            return View(nhanVien);
        }

        [HttpPost, ActionName("XoaNhanVien")]
        public ActionResult XacNhanXoa(string id)
        {
            try
            {
                using (var connection = new SqlConnection(db.Connection.ConnectionString))
                {
                    connection.Open();
                    using (var command = new SqlCommand("XoaNhanVien", connection))
                    {
                        command.CommandType = CommandType.StoredProcedure;
                        command.Parameters.AddWithValue("@NhanVien_id", id);
                        command.ExecuteNonQuery();
                    }
                }
                return RedirectToAction("Index");
            }
            catch (Exception ex)
            {
                throw new Exception("Lỗi: " + ex.Message);
            }
        }

        public ActionResult ChiTietNhanVien(string id)
        {
            NhanVien nhanVien = db.NhanViens.FirstOrDefault(nv => nv.NhanVien_id == id);
            if (nhanVien == null)
            {
                return HttpNotFound();
            }
            return View(nhanVien);
        }
        
    }
}