using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace QuanLy_TourDuLich.Controllers
{
    public class TourController : Controller
    {
        // GET: Tour
        public ActionResult DatTour()
        {
            return View();
        }

        public ActionResult ThanhToan()
        {
            return View();
        }
    }
}