using BTLRapChieuPhim.Models;
using Microsoft.AspNetCore.Mvc;

namespace BTLRapChieuPhim.Areas.Admin.Controllers
{
	[Area("admin")]
	[Route("admin")]
	public class HomeAdminController : Controller
	{

		QuanLyRapPhimContext db = new QuanLyRapPhimContext();
		[Route("")]
		public IActionResult Index()
		{
			return View();
		}

		[Route("lichchieuphim")]
		public IActionResult LichChieuPhim()
		{
			return View("~/Areas/Admin/Views/LichChieu/LichChieuPhim.cshtml");
		}
		[Route("lichchieuupdate")]
		public IActionResult LichChieuUpdate(int maLc)
		{
			return View("~/Areas/Admin/Views/LichChieu/LichChieuUpdate.cshtml");

        }
		[Route("lichchieuadd")]
		public IActionResult LichChieuAdd()
		{
			var phimlist = db.Phims.Select(p => new
			{
				Id = p.MaPhim,
				TenPhim = p.TenPhim,
			}).ToList();
			ViewBag.phimlist = phimlist;

			var phongChieuList = db.PhongChieus.Select(pc => new
			{
				Id = pc.MaPc,
				TenPc = pc.TenPc,
			}).ToList();
			ViewBag.phongChieuList = phongChieuList;
			return View("~/Areas/Admin/Views/LichChieu/LichChieuAdd.cshtml");
		}
		[Route("BaoCao")]
		public IActionResult ThongKe()
		{
			return View("~/Areas/Admin/Views/BaoCao/BaoCao.cshtml");
		}
	}
}
