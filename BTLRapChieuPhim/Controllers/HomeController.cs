using Azure;
using BTLRapChieuPhim.Models;

using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Diagnostics;
using X.PagedList;
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
       public IActionResult Lichchieu()
        {
            ViewBag.MaPhim = 1;
			return View();
        }
        public IActionResult ChonGhe(int malc,int maphim) 
        {
            ViewBag.MaLC = malc;
            ViewBag.MaPhim = maphim;
			return View();
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
