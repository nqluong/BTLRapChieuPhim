using BTLRapChieuPhim.Areas.Admin.Models;
using BTLRapChieuPhim.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace BTLRapChieuPhim.Areas.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PhimAPIController : ControllerBase
    {
        QuanLyRapPhimContext _context = new QuanLyRapPhimContext();

        [HttpGet]
        public IEnumerable<PhimAPI> GetAllPhim()
        {
            var phim = (from p in _context.Phims
                              join tl in _context.TheLoais on p.MaTl equals tl.MaTl
                              select new PhimAPI
                              {
                                  MaPhim = p.MaPhim,
                                  TenPhim = p.TenPhim,
                                  ThoiLuong = p.ThoiLuong,
                                  DaoDien = p.DaoDien,
                                  DoTuoi = p.DoTuoi,
                                  NuocSx = p.NuocSx,
                                  MoTa = p.MoTa,
                                  MaTl = p.MaTl,
                                  TenTheLoai = tl.TenTheLoai,
                              }).ToList();
            return phim;
        }

        [HttpGet("{maPhim}")]
        public IEnumerable<PhimAPI> GetPhim(int maPhim)
        {
            var phim = (from p in _context.Phims
                        join tl in _context.TheLoais on p.MaTl equals tl.MaTl
                        where maPhim == p.MaPhim
                        select new PhimAPI
                        {
                            MaPhim = p.MaPhim,
                            TenPhim = p.TenPhim,
                            ThoiLuong = p.ThoiLuong,
                            DaoDien = p.DaoDien,
                            DoTuoi = p.DoTuoi,
                            NuocSx = p.NuocSx,
                            MoTa = p.MoTa,
                            MaTl = p.MaTl,
                            TenTheLoai = tl.TenTheLoai,
                        }).ToList();
            return phim;
        }


        [HttpPost]

        public IActionResult ThemPhim([FromBody] Phim phim)
        {
            if (ModelState.IsValid)
            {
                _context.Phims.Add(phim);
                _context.SaveChanges();
                return Ok(new { message = "Thêm phim thành công!" });
            }
            return BadRequest(new { message = "Thêm phim thất bại!" });
        }

        [HttpPut("{maPhim}")]
        public IActionResult UpdatePhim(int maPhim, [FromBody] PhimAPI phimUpdated)
        {
            if (phimUpdated == null || maPhim != phimUpdated.MaPhim)
            {
                return BadRequest();
            }

            var phim = _context.Phims.Find(maPhim);
            if (phim == null)
            {
                return NotFound();
            }

            // Cập nhật các trường cần thiết
            phim.MaPhim = phimUpdated.MaPhim;
            phim.TenPhim = phimUpdated.TenPhim;
            phim.DaoDien = phimUpdated.DaoDien;
            phim.DoTuoi = phimUpdated.DoTuoi;
            phim.ThoiLuong = phimUpdated.ThoiLuong;
            phim.MaTl = phimUpdated.MaTl;
            phim.NuocSx = phimUpdated.NuocSx;
            phim.MoTa = phimUpdated.MoTa;

            _context.SaveChanges();

            return NoContent(); // trả về mã 204 nếu thành công
        }

        [HttpDelete("{maPhim}")]
        public IActionResult DeletePhim(int maPhim)
        {
            var phim = _context.Phims.Find(maPhim);
            if (phim == null)
            {
                return NotFound();
            }

            _context.Phims.Remove(phim);
            _context.SaveChanges();

            return Ok(new { message = "Xóa phim thành công!" });
        }
    }
}
