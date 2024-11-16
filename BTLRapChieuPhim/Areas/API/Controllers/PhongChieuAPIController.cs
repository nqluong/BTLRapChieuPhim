using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using BTLRapChieuPhim.Models;
using Microsoft.EntityFrameworkCore;
using BTLRapChieuPhim.Areas.Admin.Models.PhongChieuModels;

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
						   
                           where pc.MaRp == 1
						   select new PhongChieuAPI
						   {

							   MaRp = rp.MaRp,
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
                           
                              where maPc == pc.MaPc
                              select new PhongChieuAPI
                              {
                                  
                                  MaRp = rp.MaRp,
                                  
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
                // Kiểm tra trùng lặp mã phòng chiếu hoặc tên phòng chiếu
                var isDuplicate = _context.PhongChieus.Any(pc =>
                    pc.MaPc == phongChieu.MaPc || pc.TenPc == phongChieu.TenPc);

                if (isDuplicate)
                {
                    return BadRequest(new { message = "Mã phòng chiếu hoặc tên phòng chiếu đã tồn tại!" });
                }


                // Nếu không trùng, thêm mới
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

            // Kiểm tra nếu tên phòng chiếu đã tồn tại trong cơ sở dữ liệu (ngoại trừ phòng chiếu hiện tại)
            var existingPhongChieu = _context.PhongChieus
                .FirstOrDefault(pc => pc.TenPc == phongChieuUpdated.TenPc && pc.MaPc != maPc && pc.MaRp==phongChieuUpdated.MaRp);

            if (existingPhongChieu != null)
            {
                return Conflict("Tên phòng chiếu đã tồn tại."); // Trả về mã lỗi 409 nếu tên phòng chiếu bị trùng
            }

            if (string.IsNullOrWhiteSpace(phongChieuUpdated.TenPc) ||
                phongChieuUpdated.SucChua == null)
            {
                return BadRequest(new { message = "Một hoặc nhiều dữ liệu phòng chiếu quan trọng bị để trống!" });
            }

            var phongChieu = _context.PhongChieus.Find(maPc);
            if (phongChieu == null)
            {
                return NotFound();
            }

            // Cập nhật các trường cần thiết
            phongChieu.TenPc = phongChieuUpdated.TenPc;
            phongChieu.SucChua = phongChieuUpdated.SucChua;
            phongChieu.MaRp = phongChieuUpdated.MaRp;

            _context.SaveChanges();

            return NoContent();
        }

        [HttpDelete("{maPc}")]
        public IActionResult DeletePhongChieu(int maPc)
        {
            var maLCs = _context.LichChieus
                .Where(lc => lc.MaPc == maPc)
                .Select(lc => lc.MaLc)
                .ToList();

            if (maLCs.Any())
            {
                // Lấy danh sách vé xem phim dựa trên danh sách maLC
                var vexemphims = _context.VeXemPhims
                    .Where(vx => maLCs.Contains((int)vx.MaLc))
                    .ToList();

                // Xóa danh sách vé xem phim
                _context.VeXemPhims.RemoveRange(vexemphims);

                // Xóa danh sách lịch chiếu
                var lichchieus = _context.LichChieus.Where(lc => maLCs.Contains(lc.MaLc)).ToList();
                _context.LichChieus.RemoveRange(lichchieus);
            }

            // Xóa phòng chiếu
            var phongChieu = _context.PhongChieus.Find(maPc);
            if (phongChieu != null)
            {
                _context.PhongChieus.Remove(phongChieu);
            }

            _context.SaveChanges();
            return Ok(new { message = "Xóa phòng chiếu thành công!" });
        }

        [HttpGet("phongchieu")]
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
