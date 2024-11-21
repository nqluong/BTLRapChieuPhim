using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using BTLRapChieuPhim.Models;
using Microsoft.EntityFrameworkCore;
using BTLRapChieuPhim.Areas.Admin.Models.PhongChieuModels;
using BTLRapChieuPhim.Areas.Admin.Models.PhimModels;

namespace BTLRapChieuPhim.Areas.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PhongChieuAPIController : ControllerBase
    {

        QuanLyRapPhimContext _context = new QuanLyRapPhimContext();

        [HttpGet]
        public IActionResult GetAllPhongChieu(int page = 1, int pageSize = 20)
        {
            var phongchieu = (from pc in _context.PhongChieus
                              join rp in _context.RapPhims on pc.MaRp equals rp.MaRp
							  select new PhongChieuAPI
                              {
								  MaRp = rp.MaRp,
                                  MaPc = pc.MaPc,
                                  TenPc = pc.TenPc,
                                  SucChua = pc.SucChua,
                                  TenRp = rp.TenRp,
                              }).ToList();

            var totalRecords = phongchieu.Count();
            var phong = phongchieu
                .Skip((page - 1) * pageSize)
                .Take(pageSize)
                .ToList();
            var result = new
            {
                TotalRecords = totalRecords,
                Page = page,
                PageSize = pageSize,
                TotalPages = (int)Math.Ceiling((double)totalRecords / pageSize),
                Data = phong
            };
            return Ok(result);
        }


        [HttpGet("{maPc}")]
        public IEnumerable<PhongChieuAPI> GetPhongChieu(string maPc)
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
        public IActionResult ThemPhongChieu([FromBody] PhongChieuAPI phongChieu)
        {
            int maGXP = GenerateMaGhe();
            string maPhong = GenerateMaPhong();
            phongChieu.MaPc = maPhong;
            if (ModelState.IsValid)
            {
                // Kiểm tra trùng lặp mã phòng chiếu hoặc tên phòng chiếu
                var isDuplicate = _context.PhongChieus.Any(pc =>
                    pc.MaPc == phongChieu.MaPc || pc.TenPc == phongChieu.TenPc);

                if (isDuplicate)
                {
                    return BadRequest(new { message = "Mã phòng chiếu hoặc tên phòng chiếu đã tồn tại!" });
				}

				var phongchieus = new PhongChieu
				{
					MaPc = phongChieu.MaPc, 
                    TenPc = phongChieu.TenPc,
                    MaRp = phongChieu.MaRp,
                    SucChua = phongChieu.SucChua
				};

				// Tạo 10 ghế VIP
				// Tạo danh sách chứa tất cả ghế
				var gheList = new List<GheXemPhim>();

				// Tạo ghế VIP (từ 1 đến 23)
				for (int i = 1; i <= 23; i++)
				{
					gheList.Add(new GheXemPhim
					{
						MaGxp = "GXP" + maGXP + i + Guid.NewGuid().ToString().Substring(0, 8), // Đảm bảo MaGxp là duy nhất
						MaPc = maPhong,
						LoaiGhe = "Vip",
						Ghe = i
					});
				}

				// Tạo ghế Thường (từ 24 đến 69)
				for (int i = 24; i <= 69; i++)
				{
					gheList.Add(new GheXemPhim
					{
						MaGxp = "GXP" + maGXP + i + Guid.NewGuid().ToString().Substring(0, 8), // Đảm bảo MaGxp là duy nhất
						MaPc = maPhong,
						LoaiGhe = "Thường",
						Ghe = i
					});
				}

				// Lưu toàn bộ danh sách ghế vào cơ sở dữ liệu
				_context.GheXemPhims.AddRange(gheList);

				// Nếu không trùng, thêm mới
				_context.PhongChieus.Add(phongchieus);
                _context.SaveChanges();
				return Ok(new { message = "Thêm phòng chiếu thành công!" });
            }
            return BadRequest(new { message = "Thêm phòng chiếu thất bại!" });
        }
		private string GenerateMaPhong()
		{

			var existingIds = _context.PhongChieus
				.Select(p => p.MaPc)
				.Where(id => id.StartsWith("PC"))
				.ToList();

			var numbers = existingIds
				.Select(id => int.TryParse(id.Substring(2), out int num) ? num : 0)
				.ToList();
			int maxNumber = numbers.Any() ? numbers.Max() : 0;
			int newNumber = maxNumber + 1;

			return "PC" + newNumber;
		}

		private int GenerateMaGhe()
		{

			var existingIds = _context.GheXemPhims
				.Select(p => p.MaGxp)
				.Where(id => id.StartsWith("GXP"))
				.ToList();

			var numbers = existingIds
				.Select(id => int.TryParse(id.Substring(3), out int num) ? num : 0)
				.ToList();
			int maxNumber = numbers.Any() ? numbers.Max() : 0;
			int newNumber = maxNumber + 1;

			return newNumber;
		}
		[HttpPut("{maPc}")]
        public IActionResult UpdatePhongChieu(string maPc, [FromBody] PhongChieuAPI phongChieuUpdated)
        {
            if (phongChieuUpdated == null || maPc != phongChieuUpdated.MaPc)
            {
                return BadRequest();
            }

            // Kiểm tra nếu tên phòng chiếu đã tồn tại trong cơ sở dữ liệu (ngoại trừ phòng chiếu hiện tại)
            var existingPhongChieu = _context.PhongChieus
                .FirstOrDefault(pc => pc.TenPc == phongChieuUpdated.TenPc && pc.MaPc != maPc && pc.MaRp == phongChieuUpdated.MaRp);

            if (existingPhongChieu != null)
            {
                return BadRequest(new { message = "Tên phòng chiếu đã tồn tại." });
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
        public IActionResult DeletePhongChieu(string maPc)
        {
            var maLCs = _context.LichChieus
                .Where(lc => lc.MaPc == maPc)
                .Select(lc => lc.MaLc)
                .ToList();

            if (maLCs.Any())
            {
                // Lấy danh sách vé xem phim dựa trên danh sách maLC
                var vexemphims = _context.VeXemPhims
                    .Where(vx => maLCs.Contains(vx.MaLc))
                    .ToList();

                // Xóa danh sách vé xem phim
                _context.VeXemPhims.RemoveRange(vexemphims);

                // Xóa danh sách lịch chiếu
                var lichchieus = _context.LichChieus.Where(lc => maLCs.Contains(lc.MaLc)).ToList();
                _context.LichChieus.RemoveRange(lichchieus);
            }

            var ghexemPhim = _context.GheXemPhims
                   .Where(gxp => maPc.Contains(gxp.MaPc))
                   .ToList();
            if (ghexemPhim != null)
            {
                _context.GheXemPhims.RemoveRange(ghexemPhim);
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



