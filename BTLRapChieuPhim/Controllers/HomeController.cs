using Azure;
using BTLRapChieuPhim.Models;
using BTLRapChieuPhim.Models.Authentication;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Diagnostics;
using X.PagedList;
namespace BTLRapChieuPhim.Controllers
{

    [Route("Home")]
    [Route("")]

	public class HomeController : Controller

    {
        QuanLyRapPhimContext ql=new QuanLyRapPhimContext();
        private readonly ILogger<HomeController> _logger;

        QuanLyRapPhimContext db=new QuanLyRapPhimContext();
        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        [Route("")]
        [Route("index")]
        public IActionResult Index()
        {
            var hinhAnh = ql.HinhAnhTrailers.AsNoTracking().OrderBy(x => x.MaPhim);
			return View(hinhAnh);
		}
        [Route("chitietphim")]
        public IActionResult ChiTietPhim(int maphim)
        {
            var phim = ql.Phims.SingleOrDefault(x => x.MaPhim == maphim);
            var anhphim = ql.HinhAnhTrailers.Where(x=>x.MaPhim==maphim).ToList();
			var theloai = ql.TheLoais.SingleOrDefault(x => x.MaTl == phim.MaTl);
			ViewBag.anhphim=anhphim;
            ViewBag.theloai=theloai;   
            return View(phim);
        }
        [Route("thongtinrap")]
        public IActionResult Contact()
        {
            var rap = ql.RapPhims.SingleOrDefault(x=>x.MaRp==1);
            var quanly = ql.TaiKhoans.Where(x=>x.MaTk==1).ToList();
            ViewBag.quanly = quanly;
            return View(rap);
        }


        [Route("Privacy")]

        public IActionResult Privacy()
		{
            return View();
        }
        [Route("lichchieu")]
        public IActionResult Lichchieu()
        {
            ViewBag.MaPhim = 1;
			return View();
        }
        [Route("chonghe")]
        public IActionResult ChonGhe(int malc,int maphim,string gio, string tgc) 
        {
			
			ViewBag.MaLC = malc;
            ViewBag.MaPhim = maphim;
			ViewBag.Gio =gio;
            ViewBag.Tgc = tgc;
			return View();
        }
        [Route("checkout")]
        public IActionResult Checkout(int malc, int maphim,string gio, string tgc) 
        {
			ViewBag.MaLC = malc;
			ViewBag.MaPhim = maphim;
			ViewBag.Gio = gio;
			ViewBag.Tgc = tgc;
			return View();
		}

        [Route("Error")]
        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
