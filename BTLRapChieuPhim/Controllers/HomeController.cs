using BTLRapChieuPhim.Models;
using BTLRapChieuPhim.Models.LichChieu;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Diagnostics;

namespace BTLRapChieuPhim.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        QuanLyRapPhimContext db=new QuanLyRapPhimContext();
        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        public IActionResult Index()
        {
            return View();
        }
        public IActionResult LichChieu(int maphim)
        {
			var lichChieuList = db.LichChieus.Where(lc => lc.VeXemPhims.Any(v => v.MaPhim == maphim)).ToList();
			var model = lichChieuList.Select(lc => new Models.LichChieu.LichChieuViewModel
			{
				DayOfWeek = lc.ThoiGianChieu.DayOfWeek.ToString(),
				Day = lc.ThoiGianChieu.Day,
				ThoiGianChieu = lc.ThoiGianChieu
			}).ToList();
			return View(model);
		}

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
