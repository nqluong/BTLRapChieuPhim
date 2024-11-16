using BTLRapChieuPhim.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace BTLRapChieuPhim.Areas.Admin.Controllers
{
	[Route("api/[controller]")]
	[ApiController]
	public class TheLoaiController : ControllerBase
	{
		QuanLyRapPhimContext _context = new QuanLyRapPhimContext();
		[HttpGet]
		public IActionResult GetTheLoai()
		{
			var theLoai = (from p in _context.TheLoais
						select new
						{
							MaTL = p.MaTl,
							TenTL = p.TenTheLoai
						}).ToList();
			return Ok(theLoai);
		}
	}
}
