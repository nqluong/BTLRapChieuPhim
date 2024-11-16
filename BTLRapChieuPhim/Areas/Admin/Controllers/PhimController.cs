using BTLRapChieuPhim.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using BTLRapChieuPhim.Areas.Admin.Models.LichChieuModels;
namespace BTLRapChieuPhim.Areas.Admin.Controllers
{
	[Route("api/[controller]")]
	[ApiController]
	public class PhimController : ControllerBase
	{
		QuanLyRapPhimContext _context = new QuanLyRapPhimContext();
		[HttpGet]
		public IActionResult GetPhim()
		{
			var phim = (from p in _context.Phims
						select new
						{
							MaPhim = p.MaPhim,
							TenPhim = p.TenPhim
						}).ToList();
			return Ok(phim);
		}
	}
}
