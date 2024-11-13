using BTLRapChieuPhim.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using BTLRapChieuPhim.Areas.Admin.Models;
using BTLRapChieuPhim.Areas.Admin.Models.LichChieuModels;
using Microsoft.EntityFrameworkCore.Metadata.Internal;

namespace BTLRapChieuPhim.Areas.Admin.Controllers
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
                                     MaQl = lc.MaQl,
                                     MaPc = lc.MaPc,
                                     TenPhim = p.TenPhim,
                                     ThoiLuong = p.ThoiLuong,
                                     TenPhongChieu = pc.TenPc,
                                     SucChua = pc.SucChua
                                 }).ToList();

            var totalRecords = lichChieuQuery.Count();
            var lichChieu = lichChieuQuery
                .Skip((page-1)*pageSize)
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
            if(phongChieu == null) 
            {
                return BadRequest(new { message = "Phong chieu khong ton tai !" });
            }
            if (phim == null) 
            {
                return BadRequest(new { message = "Phim khong ton tai !" });
            }
            int maLc = GenerateMaLc();

            lichChieu.MaLc = maLc;

            int thoiGian = phim.ThoiLuong ?? 0;
            var existingShowTimes = _context.LichChieus.Where(lc => lc.MaPc == lichChieu.MaPc && lc.MaLc != lichChieu.MaLc).ToList();

            DateTime newShowTimeEnd = lichChieu.ThoiGianChieu.Value.AddMinutes(thoiGian);
            foreach (var existingShowTime in existingShowTimes)
            {
                int existingMovie = existingShowTime.MaPhimNavigation?.ThoiLuong ?? 0;
                DateTime existingShowTimeEnd = existingShowTime.ThoiGianChieu.Value.AddMinutes(existingMovie);

                
                if ((lichChieu.ThoiGianChieu >= existingShowTime.ThoiGianChieu && lichChieu.ThoiGianChieu < existingShowTimeEnd) ||  
                    (newShowTimeEnd > existingShowTime.ThoiGianChieu && newShowTimeEnd <= existingShowTimeEnd) ||  
                    (lichChieu.ThoiGianChieu <= existingShowTime.ThoiGianChieu && newShowTimeEnd >= existingShowTimeEnd))  
                {
                    return BadRequest(new { message = "Đã có lịch chiếu phim tại phòng này trong thời gian này!" });
                }
            }

            if (ModelState.IsValid)
            {
                 _context.LichChieus.Add(lichChieu);
                 _context.SaveChanges();
                 return Ok(new { message = "Thêm lịch chiếu thành công!" });
            }
            return BadRequest(new { message = "Thêm lịch chiếu thất bại!" });

        }
        private int GenerateMaLc()
        {
            // Lấy mã lịch chiếu cao nhất hiện có trong cơ sở dữ liệu
            var maxMaLc = _context.LichChieus.Max(lc => lc.MaLc);

            // Tạo mã lịch chiếu mới = mã cao nhất + 1
            return maxMaLc + 1;
        }
        [HttpPut("{id}")]
        public IActionResult UpdateLichChieu(int id, [FromBody] LichChieuApi lichChieuUpdated)
        {
            if (lichChieuUpdated == null || id != lichChieuUpdated.MaLc)
            {
                return BadRequest();
            }

            var lichChieu = _context.LichChieus.Find(id);
            if (lichChieu == null)
            {
                return NotFound();
            }

            // Cập nhật các trường cần thiết
            lichChieu.ThoiGianChieu = lichChieuUpdated.ThoiGianChieu;
            lichChieu.MaQl = lichChieuUpdated.MaQl;
            lichChieu.MaPc = lichChieuUpdated.MaPc;

            _context.SaveChanges();

            return NoContent(); // trả về mã 204 nếu thành công
        }

        [HttpDelete("{id}")]
        public IActionResult DeleteLichChieu(int id)
        {
            var lichChieu = _context.LichChieus.Find(id);
            if (lichChieu == null)
            {
                return NotFound();
            }

            _context.LichChieus.Remove(lichChieu);
            _context.SaveChanges();

            return Ok(new { message = "Xóa lịch chiếu thành công!" });
        }
    }
}
