using BTLRapChieuPhim.Models;
using Microsoft.AspNetCore.Mvc;
using System.Drawing.Drawing2D;

namespace BTLRapChieuPhim.ViewComponents
{
    public class TenMenuViewComponent : ViewComponent
    {
		public async Task<IViewComponentResult> InvokeAsync(string menuType)
		{
			string[] tenMenu = { "Phòng chiếu", "Phim"};
			if (menuType == "PhongChieu")
			{
				return View("~/Areas/Admin/Views/Shared/Components/TenMenu/PhongChieu/PhongChieu.cshtml", tenMenu);  // Trả về view PhongChieu.cshtml
			}
			else if (menuType == "Phim")
			{
				return View("~/Areas/Admin/Views/Shared/Components/TenMenu/Phim/Phim.cshtml", tenMenu);  // Trả về view Phim.cshtml
			}
			else
			{
				return View("~/Areas/Admin/Views/Shared/Components/TenMenu/PhongChieu/PhongChieu.cshtml", tenMenu);  // Mặc định là PhongChieu nếu không có loại nào khác
			}
		}
    }
}
