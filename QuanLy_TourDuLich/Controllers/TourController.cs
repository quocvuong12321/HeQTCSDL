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
        public ActionResult DatTour(string tour_id)
        {
            Tour tour = db.Tours.Single(t => t.Tour_id == "T001");

            if (tour == null)
            {
                return HttpNotFound();
            }

            return View(tour); 
        }

        public ActionResult ThanhToan()
        {
            return View();
        }
    }
}