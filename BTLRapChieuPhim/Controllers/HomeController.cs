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
			var theloai = ql.TheLoais.SingleOrDefault(x => x.MaTl == phim.MaTl);
			ViewBag.anhphim=anhphim;
            ViewBag.theloai=theloai;   
            return View(phim);
        }
        public IActionResult Contact()
        {
            var rap = ql.RapPhims.SingleOrDefault(x=>x.MaRp==1);
            var quanly = ql.TaiKhoans.Where(x=>x.MaTk==1).ToList();
            ViewBag.quanly = quanly;
            return View(rap);
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
