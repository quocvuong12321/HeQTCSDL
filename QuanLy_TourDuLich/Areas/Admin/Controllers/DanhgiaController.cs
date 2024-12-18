﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using QuanLy_TourDuLich.Models;
namespace QuanLy_TourDuLich.Areas.Admin.Controllers
{
    public class DanhgiaController : Controller
    {
        // GET: Admin/Danhgia
        QuanLyTourDuLichDataContext db = new QuanLyTourDuLichDataContext();
        [PhanQuyen("Quản lý")]

        public ActionResult QLDanhgia()
        {
            if (Session["kh"] == null)
            {
                return RedirectToAction("DangNhapNV", "TaiKhoanNhanVien");
            }
            List<DanhGia> danhgia = db.DanhGias.ToList();
            return View(danhgia);
        }
    }
}