using Microsoft.AspNetCore.Mvc.Filters;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Http;

namespace BTLRapChieuPhim.Models.Authentication
{
	public class Authentication : ActionFilterAttribute
	{
		private readonly int[] _allowedRoles;

		public Authentication(params int[] allowedRoles)
		{
			_allowedRoles = allowedRoles;
		}

		public override void OnActionExecuting(ActionExecutingContext context)
		{
			var session = context.HttpContext.Session;
			var userName = session.GetString("UserName");
			var role = session.GetInt32("LoaiTK");

			// Kiểm tra xem người dùng đã đăng nhập chưa
			if (userName == null)
			{
				context.Result = new RedirectToRouteResult(new RouteValueDictionary
				{
					{"Controller", "Home"},
					{"Action", "Index"}
				});
				return;
			}

			// Kiểm tra quyền truy cập
			if (_allowedRoles != null && role.HasValue && !_allowedRoles.Contains(role.Value))
			{
				context.Result = new RedirectToRouteResult(new RouteValueDictionary
				{
					{"Controller", "Access"},
					{"Action", "Unauthorized"} // Tạo trang báo lỗi quyền truy cập
                });
				return;
			}
		}
	}
}
