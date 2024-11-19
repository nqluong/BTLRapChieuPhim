using BTLRapChieuPhim.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using BTLRapChieuPhim.Areas.Admin.Models;
using BTLRapChieuPhim.Areas.Admin.Models.LichChieuModels;
using Microsoft.EntityFrameworkCore.Metadata.Internal;

namespace BTLRapChieuPhim.Areas.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class LichChieuController : ControllerBase
    {
        QuanLyRapPhimContext _context = new QuanLyRapPhimContext();

        [HttpGet]
        public IActionResult GetLichChieu(int page = 1, int pageSize = 20)
        {
            var lichChieuQuery = (from lc in _context.LichChieus
                                  join p in _context.Phims on lc.MaPhim equals p.MaPhim
                                  join pc in _context.PhongChieus on lc.MaPc equals pc.MaPc
                                  select new LichChieuApi
                                  {
                                      MaLc = lc.MaLc,
                                      ThoiGianChieu = lc.ThoiGianChieu,
                                      MaPc = lc.MaPc,
                                      TenPhim = p.TenPhim,
                                      ThoiLuong = p.ThoiLuong,
                                      TenPhongChieu = pc.TenPc,
                                      SucChua = pc.SucChua,
                                      
                                  })
								  .OrderByDescending(lc => lc.ThoiGianChieu)
								  .ToList();

            var totalRecords = lichChieuQuery.Count();
            var lichChieu = lichChieuQuery
                .Skip((page - 1) * pageSize)
                .Take(pageSize)
                .ToList();
            var result = new
            {
                TotalRecords = totalRecords,
                Page = page,
                PageSize = pageSize,
                TotalPages = (int)Math.Ceiling((double)totalRecords / pageSize),
                Data = lichChieu
            };
            return Ok(result);
        }

        [HttpPost]
        public IActionResult ThemLichChieu([FromBody] LichChieu lichChieu)
        {

            var phongChieu = _context.PhongChieus.FirstOrDefault(pc => pc.MaPc == lichChieu.MaPc);

            var phim = _context.Phims.FirstOrDefault(p => p.MaPhim == lichChieu.MaPhim);
            if (phongChieu == null)
            {
                return BadRequest(new { message = "Phong chieu khong ton tai !" });
            }
            if (phim == null)
            {
                return BadRequest(new { message = "Phim khong ton tai !" });
            }
            string maLc = GenerateMaLc();

            lichChieu.MaLc = maLc;

            int thoiGian = phim.ThoiLuong ?? 0;
            var existingShowTimes = _context.LichChieus.Where(lc => lc.MaPc == lichChieu.MaPc && lc.MaLc != lichChieu.MaLc).ToList();

            DateTime newShowTimeEnd = lichChieu.ThoiGianChieu.Value.AddMinutes(thoiGian);
            foreach (var existingShowTime in existingShowTimes)
            {
                int existingMovie = existingShowTime.MaPhimNavigation?.ThoiLuong ?? 0;
                DateTime existingShowTimeEnd = existingShowTime.ThoiGianChieu.Value.AddMinutes(existingMovie);


                if (lichChieu.ThoiGianChieu >= existingShowTime.ThoiGianChieu && lichChieu.ThoiGianChieu < existingShowTimeEnd ||
                    newShowTimeEnd > existingShowTime.ThoiGianChieu && newShowTimeEnd <= existingShowTimeEnd ||
                    lichChieu.ThoiGianChieu <= existingShowTime.ThoiGianChieu && newShowTimeEnd >= existingShowTimeEnd)
                {
                    return BadRequest("Đã có lịch chiếu phim tại phòng này trong thời gian này!");
                }
            }

            if (ModelState.IsValid)
            {
                _context.LichChieus.Add(lichChieu);
                _context.SaveChanges();

				var gheTrongPhong = _context.GheXemPhims.Where(g => g.MaPc == phongChieu.MaPc).ToList();
				var veXemPhimList = new List<VeXemPhim>();
				int currentMaxNumber = _context.VeXemPhims
                    .Where(v => v.MaVxp.StartsWith("VXP"))
					.AsEnumerable()
					.Select(v => int.Parse(v.MaVxp.Substring(3)))
                    .DefaultIfEmpty(0)
                    .Max();
				foreach (var ghe in gheTrongPhong)
				{

					var veXemPhim = new VeXemPhim
					{
						MaVxp = GenerateVeXemPhimId(ref currentMaxNumber),
						MaLc = lichChieu.MaLc,
						MaGxp = ghe.MaGxp, 
						TrangThai = 0,
						MaHd = null, 
						GiaVe = 100000 // Gia vé đang để cố định
					};
					veXemPhimList.Add(veXemPhim);
				}
				_context.VeXemPhims.AddRange(veXemPhimList);
				_context.SaveChanges();
				return Ok(new { message = "Thêm lịch chiếu thành công!" });
            }
            return BadRequest(new { message = "Thêm lịch chiếu thất bại!" });

        }
        private string GenerateMaLc()
        {

			var existingIds = _context.LichChieus
				.Select(lc => lc.MaLc)
				.Where(id => id.StartsWith("LC"))
				.ToList();

			var numbers = existingIds
				.Select(id => int.TryParse(id.Substring(2), out int num) ? num : 0)
				.ToList();
			int maxNumber = numbers.Any() ? numbers.Max() : 0;
			int newNumber = maxNumber + 1;

			return "LC" + newNumber;
		}

		private string GenerateVeXemPhimId(ref int currentMaxNumber)
		{
			currentMaxNumber++; 
            return "VXP" + currentMaxNumber;
		}

		[HttpGet("{maLc}")]
        public IActionResult GetLichChieuByMa(string maLc)
        {
            var lichChieuQuery = (from lc in _context.LichChieus
                                  join p in _context.Phims on lc.MaPhim equals p.MaPhim
                                  join tl in _context.TheLoais on p.MaTl equals tl.MaTl
                                  join pc in _context.PhongChieus on lc.MaPc equals pc.MaPc
                                  where lc.MaLc == maLc
                                  select new
                                  {
                                      lc.MaLc,
                                      lc.ThoiGianChieu,
                                      lc.MaPc,
                                      p.TenPhim,
                                      p.ThoiLuong,
                                      TenPhongChieu = pc.TenPc,
                                      pc.SucChua,
                                      TheLoai = tl.TenTheLoai


                                  }).FirstOrDefault();

            return Ok(lichChieuQuery);
        }
        [HttpPut("{id}")]
        public IActionResult UpdateLichChieu(string id, [FromBody] LichChieuApi lichChieuUpdated)
        {

            var lichChieu = _context.LichChieus.Find(id);
            if (lichChieu == null)
            {
                return NotFound("Không tìm thấy lịch chiếu.");
            }


            if (lichChieuUpdated.ThoiGianChieu == null || lichChieuUpdated.MaPc == null)
            {
                return BadRequest("Thông tin lịch chiếu không đầy đủ.");
            }
            var phim = _context.Phims.FirstOrDefault(p => p.MaPhim == lichChieu.MaPhim);
            if (phim == null)
            {
                return NotFound("Không tìm thấy phim.");
            }

            int thoiGian = phim.ThoiLuong ?? 0;
            var existingShowTimes = _context.LichChieus.Where(lc => lc.MaPc == lichChieuUpdated.MaPc && lc.MaLc != id).ToList();

            DateTime newShowTimeEnd = lichChieuUpdated.ThoiGianChieu.Value.AddMinutes(thoiGian);
            foreach (var existingShowTime in existingShowTimes)
            {
                int existingMovie = existingShowTime.MaPhimNavigation?.ThoiLuong ?? 0;
                DateTime existingShowTimeEnd = existingShowTime.ThoiGianChieu.Value.AddMinutes(existingMovie);


                if (lichChieuUpdated.ThoiGianChieu >= existingShowTime.ThoiGianChieu && lichChieuUpdated.ThoiGianChieu < existingShowTimeEnd ||
                    newShowTimeEnd > existingShowTime.ThoiGianChieu && newShowTimeEnd <= existingShowTimeEnd ||
                    lichChieuUpdated.ThoiGianChieu <= existingShowTime.ThoiGianChieu && newShowTimeEnd >= existingShowTimeEnd)
                {
                    return BadRequest("Đã có lịch chiếu phim tại phòng này trong thời gian này!");
                }
            }

            lichChieu.ThoiGianChieu = lichChieuUpdated.ThoiGianChieu;
            lichChieu.MaPc = lichChieuUpdated.MaPc;


            try
            {
                _context.SaveChanges();
            }
            catch (Exception ex)
            {
                return StatusCode(500, "Lỗi khi lưu dữ liệu: " + ex.Message);
            }

            return NoContent();
        }

        [HttpDelete("{id}")]
        public IActionResult DeleteLichChieu(string id)
        {
            var lichChieu = _context.LichChieus.Find(id);
            if (lichChieu == null)
            {
                return NotFound(new { message = "Không có lịch chiếu !"});
            }
			var veXemPhims = _context.VeXemPhims.Where(v => v.MaLc == id).ToList();

			
			if (veXemPhims.Any())
			{
				_context.VeXemPhims.RemoveRange(veXemPhims);
			}
			_context.LichChieus.Remove(lichChieu);
            _context.SaveChanges();

            return Ok(new { message = "Xóa lịch chiếu và các vé liên quan thành công!" });
        }


    }
}
