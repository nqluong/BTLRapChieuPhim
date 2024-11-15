using Microsoft.AspNetCore.Mvc;
using BTLRapChieuPhim.Models;
using Microsoft.AspNetCore.Mvc.Rendering;

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

        [Route("danhsachphongchieu")]
        public IActionResult DanhSachPhongChieu()
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
            var lstQuanLi = db.QuanLies.Select(ql => new
            {
                maql = ql.MaQl,
                tenql = ql.HoTen,
            }).ToList();

            var lstRapPhim = db.RapPhims.Select(rp => new
            {
                marp = rp.MaRp,
                tenrp = rp.TenRp,
            }).ToList();

            ViewBag.lstQuanLi = lstQuanLi;
            ViewBag.lstRapPhim = lstRapPhim;

            return View();
        }

        [Route("danhsachphim")]
        public IActionResult DanhSachPhim()
        {
            return View();
        }

        [Route("phimupdate")]
        public IActionResult PhimUpdate(int maPhim)
        {
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
