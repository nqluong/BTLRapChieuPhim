using BTLRapChieuPhim.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace BTLRapChieuPhim.Areas.Admin.Controllers
{
	[Route("api/[controller]")]
	[ApiController]
	public class PhongChieuController : ControllerBase
	{
		QuanLyRapPhimContext _context = new QuanLyRapPhimContext();
		[HttpGet]
		public IActionResult GetPhongChieu()
		{
			var phong = (from p in _context.PhongChieus
						select new
						{
							MaPhong = p.MaPc,
							TenPhong = p.TenPc
						}).ToList();
			return Ok(phong);
		}
	}
}
