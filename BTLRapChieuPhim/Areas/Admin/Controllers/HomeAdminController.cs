using BTLRapChieuPhim.Models;
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
			return View("~/Areas/Admin/Views/BaoCao/BaoCao.cshtml");

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
	
		
        [Route("phongchieuupdate")]
        public IActionResult PhongChieuUpdate(int maPc)
        {
            return View("~/Areas/Admin/Views/PhongChieu/PhongChieuUpdate.cshtml");
        }

        [Route("phongchieuadd")]
        public IActionResult PhongChieuAdd()
        {
            return View("~/Areas/Admin/Views/PhongChieu/PhongChieuAdd.cshtml");
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
            return View("~/Areas/Admin/Views/Phim/PhimUpdate.cshtml");
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

            return View("~/Areas/Admin/Views/Phim/PhimAdd.cshtml");
        }
    }
}
