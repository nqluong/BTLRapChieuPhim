using BTLRapChieuPhim.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Diagnostics;

namespace BTLRapChieuPhim.Controllers
{
    public class HomeController : Controller
    {
        QuanLyRapPhimContext ql=new QuanLyRapPhimContext();
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        public IActionResult Index()
        {
            var hinhAnh = ql.HinhAnhTrailers.AsNoTracking().OrderBy(x => x.MaPhim);
			return View(hinhAnh);
		}
        public IActionResult ChiTietPhim(int maphim)
        {
            var phim = ql.Phims.SingleOrDefault(x => x.MaPhim == maphim);
            var anhphim = ql.HinhAnhTrailers.Where(x=>x.MaPhim==maphim).ToList();
            ViewBag.anhphim=anhphim;
            return View(phim);
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
