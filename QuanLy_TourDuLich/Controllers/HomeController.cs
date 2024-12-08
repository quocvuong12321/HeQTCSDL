using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using QuanLy_TourDuLich.Models;
namespace QuanLy_TourDuLich.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        public ActionResult AccessDenied()
        {
            return View();
        }
    }
}
