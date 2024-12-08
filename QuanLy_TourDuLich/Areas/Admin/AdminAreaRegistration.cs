using System.Web.Mvc;

namespace QuanLy_TourDuLich.Areas.Admin
{
    public class AdminAreaRegistration : AreaRegistration 
    {
        public override string AreaName 
        {
            get 
            {
                return "Admin";
            }
        }


        public override void RegisterArea(AreaRegistrationContext context) 
        {
            //context.MapRoute(
            //name: "XoaPhanCongNhanVien",
            //url: "Admin/PhanCongNhanVien/XoaPhanCong/{Tour_id}/{NhanVien_id}",
            //defaults: new { controller = "PhanCongNhanVien", action = "XoaPhanCong" }
            //);
            context.MapRoute(
                "Admin_default",
                "Admin/{controller}/{action}/{id}",
                new { action = "Index", id = UrlParameter.Optional, area = "Admin" }

            );
        }
    }
}