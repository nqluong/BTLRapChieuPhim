using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using BTLRapChieuPhim.Models;
using BTLRapChieuPhim.Areas.Admin.Models;
using Microsoft.EntityFrameworkCore;

namespace BTLRapChieuPhim.Areas.API.Controllers
{
	[Route("api/[controller]")]
	[ApiController]
	public class PhongChieuAPIController : ControllerBase
	{

        QuanLyRapPhimContext _context = new QuanLyRapPhimContext();

        [HttpGet]
		public IEnumerable<PhongChieuAPI> GetAllPhongChieu()
		{
			var phongchieu = (from pc in _context.PhongChieus
						   join rp in _context.RapPhims on pc.MaRp equals rp.MaRp
						   join ql in _context.QuanLies on pc.MaQl equals ql.MaQl
						   select new PhongChieuAPI
						   {
							   MaQl = ql.MaQl,
							   MaRp = rp.MaRp,
							   HoTen = ql.HoTen,
							   MaPc = pc.MaPc,
							   TenPc = pc.TenPc,
							   SucChua = pc.SucChua,
							   TenRp = rp.TenRp,
						   }).ToList();
			return phongchieu;
		}

        [HttpGet("{maPc}")]
        public IEnumerable<PhongChieuAPI> GetPhongChieu(int maPc)
        {
            var phongchieu = (from pc in _context.PhongChieus
                              join rp in _context.RapPhims on pc.MaRp equals rp.MaRp
                              join ql in _context.QuanLies on pc.MaQl equals ql.MaQl
                              where maPc == pc.MaPc
                              select new PhongChieuAPI
                              {
                                  MaQl = ql.MaQl,
                                  MaRp = rp.MaRp,
                                  HoTen = ql.HoTen,
                                  MaPc = pc.MaPc,
                                  TenPc = pc.TenPc,
                                  SucChua = pc.SucChua,
                                  TenRp = rp.TenRp,
                              }).ToList();
            return phongchieu;
        }
        

        [HttpPost]

        public IActionResult ThemPhongChieu([FromBody] PhongChieu phongChieu)
        {
            if (ModelState.IsValid)
            {
                _context.PhongChieus.Add(phongChieu);
                _context.SaveChanges();
                return Ok(new { message = "Thêm phòng chiếu thành công!" });
            }
            return BadRequest(new { message = "Thêm phòng chiếu thất bại!" });
        }

        [HttpPut("{maPc}")]
        public IActionResult UpdatePhongChieu(int maPc, [FromBody] PhongChieuAPI phongChieuUpdated)
        {
            if (phongChieuUpdated == null || maPc != phongChieuUpdated.MaPc)
            {
                return BadRequest();
            }

            var phongChieu = _context.PhongChieus.Find(maPc);
            if (phongChieu == null)
            {
                return NotFound();
            }

            // Cập nhật các trường cần thiết
            phongChieu.TenPc = phongChieuUpdated.TenPc;
            phongChieu.SucChua = phongChieuUpdated.SucChua;
            phongChieu.MaQl = phongChieuUpdated.MaQl;
            phongChieu.MaRp = phongChieuUpdated.MaRp;

            _context.SaveChanges();

            return NoContent(); // trả về mã 204 nếu thành công
        }

        [HttpDelete("{maPc}")]
        public IActionResult DeletePhongChieu(int maPc)
        {
            var phongChieu = _context.PhongChieus.Find(maPc);
            if (phongChieu == null)
            {
                return NotFound();
            }

            _context.PhongChieus.Remove(phongChieu);
            _context.SaveChanges();

            return Ok(new { message = "Xóa phòng chiếu thành công!" });
        }

    }
}
