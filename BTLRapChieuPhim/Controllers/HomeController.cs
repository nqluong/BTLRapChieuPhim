using Azure;
using BTLRapChieuPhim.Models;
using BTLRapChieuPhim.Models.Authentication;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Newtonsoft.Json;
using System.Diagnostics;
using X.PagedList;
namespace BTLRapChieuPhim.Controllers
{

    [Route("Home")]
    [Route("")]

	public class HomeController : Controller

    {
        QuanLyRapPhimContext ql = new QuanLyRapPhimContext();
        private readonly ILogger<HomeController> _logger;

        QuanLyRapPhimContext db = new QuanLyRapPhimContext();
        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        [Route("")]
        [Route("index")]
		public IActionResult Index()
		{
			var hinhanh = ql.HinhAnhTrailers
				   .AsNoTracking()
				   .Join(ql.Phims,
					   ha => ha.MaPhim,
					   p => p.MaPhim,
					   (ha, p) => new { HinhAnh = ha, Phim = p })
				   .Join(ql.TheLoais,
					   hp => hp.Phim.MaTl,
					   tl => tl.MaTl,
					   (hp, tl) => new HinhAnhPhimViewModel
					   {
						   MaPhim = hp.Phim.MaPhim,
						   TenPhim = hp.Phim.TenPhim,
						   DuongDanAnh = hp.HinhAnh.DuongDanAnh,
						   DuongDanTrailer = hp.HinhAnh.DuongDanTrailer,
						   TenTL = tl.TenTheLoai,
						   NuocSX = hp.Phim.NuocSx
					   })
				   .OrderBy(x => x.MaPhim)
				   .ToList();

			return View(hinhanh);
		}
		[Route("chitietphim")]
        public IActionResult ChiTietPhim(string maphim)
        {
            var phim = ql.Phims.SingleOrDefault(x => x.MaPhim == maphim);
            var anhphim = ql.HinhAnhTrailers.Where(x => x.MaPhim == maphim).ToList();
            var theloai = ql.TheLoais.SingleOrDefault(x => x.MaTl == phim.MaTl);
            ViewBag.anhphim = anhphim;
            ViewBag.theloai = theloai;
            return View(phim);
        }
        [Route("thongtinrap")]
        public IActionResult Contact()
        {

            var rap = ql.RapPhims.SingleOrDefault(x=>x.MaRp=="RP1");
            var quanly = ql.TaiKhoans.Where(x=>x.MaTk=="TK1").ToList();

            ViewBag.quanly = quanly;
            return View(rap);
        }


        [Route("Privacy")]

            public IActionResult Privacy()
            {
                return View();
            }
            [Route("lichchieu")] 
            public IActionResult Lichchieu(string maphim)
            {
            if (string.IsNullOrEmpty(maphim))
            {
                return BadRequest("Mã phim không h?p l?");
            }

            ViewBag.MaPhim = maphim;
            return View();
        }
            [Route("chonghe")]
            public IActionResult ChonGhe(string malc, string maphim, string gio, string tgc,string mapc)
            {
			    ViewBag.MaPC = mapc;
                ViewBag.MaLC = malc;
                ViewBag.MaPhim = maphim;
                ViewBag.Gio = gio;
                ViewBag.Tgc = tgc;
			return View();
            }
            [Route("checkout")]
            public IActionResult Checkout(string malc, string maphim, string gio, string tgc,string mapc)
            {
            var matk = HttpContext.Session.GetString("MaTK");
            var Ht = db.KhachHangs.Where(x => x.MaTk == matk).Select(x => x.HoTen).FirstOrDefault();
                ViewBag.MaLC = malc;
			    ViewBag.MaPC = mapc;
			    ViewBag.MaPhim = maphim;
                ViewBag.Gio = gio;
                ViewBag.Tgc = tgc;       
                TempData["Maphim"] = maphim;
                TempData["Tgc"] = tgc;
                TempData["Gio"] = gio;
				TempData["MaLc"] = malc;
			    var hotenJson = JsonConvert.SerializeObject(Ht);
			ViewBag.HotenJson = hotenJson;
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

