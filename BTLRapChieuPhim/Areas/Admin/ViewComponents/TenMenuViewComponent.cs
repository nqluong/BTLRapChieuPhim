using BTLRapChieuPhim.Areas.Admin.Models.PhimModels;
using BTLRapChieuPhim.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Drawing.Drawing2D;

namespace BTLRapChieuPhim.ViewComponents
{
    public class TenMenuViewComponent : ViewComponent
    {

		private readonly QuanLyRapPhimContext _context;

		public TenMenuViewComponent(QuanLyRapPhimContext context)
		{
			_context = context;
		}
		public async Task<IViewComponentResult> InvokeAsync(string menuType, int page = 1, int pageSize = 10)
		{
			if (menuType == "PhongChieu")
			{
				return View("~/Areas/Admin/Views/Shared/Components/TenMenu/PhongChieu/PhongChieu.cshtml");  // Trả về view PhongChieu.cshtml
			}
			else if (menuType == "Phim")
			{
                var phimQuery = from p in _context.Phims
                                join tl in _context.TheLoais on p.MaTl equals tl.MaTl
                                join hat in _context.HinhAnhTrailers on p.MaPhim equals hat.MaPhim
                                select new PhimAPI
                                {
                                    MaPhim = p.MaPhim,
                                    TenPhim = p.TenPhim,
                                    ThoiLuong = p.ThoiLuong,
                                    DaoDien = p.DaoDien,
                                    DoTuoi = p.DoTuoi,
                                    NuocSx = p.NuocSx,
                                    MoTa = p.MoTa,
                                    MaTl = p.MaTl,
                                    TenTheLoai = tl.TenTheLoai,
                                    DuongDanAnh = hat.DuongDanAnh,
                                    DuongDanTrailer = hat.DuongDanTrailer,
                                    MaHat = hat.MaHat,
                                };

                int totalItems = await phimQuery.CountAsync();
                var totalPages = (int)Math.Ceiling((double)totalItems / pageSize);
                var items = await phimQuery.Skip((page - 1) * pageSize).Take(pageSize).ToListAsync();

                ViewBag.CurrentPage = page;
                ViewBag.TotalPages = totalPages;

                return View("~/Areas/Admin/Views/Shared/Components/TenMenu/Phim/Phim.cshtml", items);
			}
			else
			{
				return View("~/Areas/Admin/Views/Shared/Components/TenMenu/PhongChieu/PhongChieu.cshtml");  // Mặc định là PhongChieu nếu không có loại nào khác
			}
		}

		
	}
}
