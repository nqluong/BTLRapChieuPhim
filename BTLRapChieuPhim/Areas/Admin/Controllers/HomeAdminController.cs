using Microsoft.AspNetCore.Mvc;
using BTLRapChieuPhim.Models;
using Microsoft.AspNetCore.Mvc.Rendering;
using BTLRapChieuPhim.Models.Authentication;

namespace BTLRapChieuPhim.Areas.Admin.Controllers
{
    [Area("admin")]
    [Route("admin")]
	[Authentication(1)]
	public class HomeAdminController : Controller
	{
		QuanLyRapPhimContext db = new QuanLyRapPhimContext();

		
		[Route("")]

		public IActionResult Index()
		{
			return View();
		}

        [Route("phongchieuupdate")]
        public IActionResult PhongChieuUpdate(int maPc)
        {
            return View();
        }

        [Route("phongchieuadd")]
        public IActionResult PhongChieuAdd()
        {
            return View();
        }

        [Route("phimupdate")]
        public IActionResult PhimUpdate(int maPhim)
        {
            var lstTheLoai = db.TheLoais.Select(tl => new
            {
                matl = tl.MaTl,
                tentl = tl.TenTheLoai,
            }).ToList();
            ViewBag.lstTheLoai = lstTheLoai;
            return View();
        }

        [Route("phimadd")]
        public IActionResult PhimAdd()
        {
            var lstTheLoai = db.TheLoais.Select(tl => new
            {
                matl = tl.MaTl,
                tentl = tl.TenTheLoai,
            }).ToList();
            ViewBag.lstTheLoai = lstTheLoai;

            return View();
        }
    }
}
