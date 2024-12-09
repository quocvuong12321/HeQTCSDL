using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace QuanLy_TourDuLich.Areas.Admin.Controllers
{
    public class PhanQuyen : AuthorizeAttribute
    {
        private readonly string[] _allowedRoles;

        public PhanQuyen(params string[] roles)
        {
            _allowedRoles = roles;
        }

        protected override bool AuthorizeCore(HttpContextBase httpContext)
        {
            if (httpContext.User.Identity.IsAuthenticated)
            {
                // Lấy danh sách vai trò của người dùng từ Session
                var userRoles = GetUserRoles(httpContext.User.Identity.Name);

                // Kiểm tra nếu vai trò của người dùng phù hợp với vai trò được phép
                return _allowedRoles.Any(role => userRoles.Contains(role));
            }
            return false;
        }

        private string[] GetUserRoles(string username)
        {
            if (HttpContext.Current.Session["Role"] != null)
            {
                // Nếu Role là một chuỗi đơn
                if (HttpContext.Current.Session["Role"] is string role)
                {
                    return new string[] { role }; // Trả về một mảng với một vai trò
                }

                // Nếu Role là một mảng chuỗi
                if (HttpContext.Current.Session["Role"] is string[] roles)
                {
                    return roles;
                }
            }

            return new string[] { }; // Nếu không có vai trò nào
        }

        protected override void HandleUnauthorizedRequest(AuthorizationContext filterContext)
        {
            // Chuyển hướng đến trang AccessDenied trong Admin/Home
            filterContext.Result = new RedirectToRouteResult(
                new System.Web.Routing.RouteValueDictionary(
                    new { controller = "Home", action = "AccessDenied", area = "Admin" }
                )
            );
        }
    }
}