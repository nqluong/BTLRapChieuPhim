using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using BTLRapChieuPhim.Models;
using Microsoft.EntityFrameworkCore.Metadata.Internal;

namespace BTLRapChieuPhim.Areas.Admin.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class BaoCaoController : ControllerBase
    {
        QuanLyRapPhimContext _context = new QuanLyRapPhimContext();

        [HttpGet("ngay")]
        public IActionResult GetDoanhThuTheoNgay(string fromDate, string toDate)
        {

            var query = from lc in _context.LichChieus
                        join vxp in _context.VeXemPhims on lc.MaLc equals vxp.MaLc
                        join hd in _context.HoaDons on vxp.MaHd equals hd.MaHd
                        select new
                        {
                            NgayChieu = lc.ThoiGianChieu,
                            TienVe = hd.TongTienVe,
                            TienDoAn = hd.TongTienDa,
                            TongHd = hd.TongTienVe + hd.TongTienDa
                        };
            var culture = System.Globalization.CultureInfo.InvariantCulture;
            if (!string.IsNullOrEmpty(fromDate) && DateTime.TryParseExact(fromDate, "yyyy/MM/dd", culture, System.Globalization.DateTimeStyles.None, out DateTime startDate))
            {
                query = query.Where(x=> x.NgayChieu.HasValue && x.NgayChieu >= startDate);
            }
            if (!string.IsNullOrEmpty(toDate) && DateTime.TryParseExact(toDate, "yyyy/MM/dd", culture, System.Globalization.DateTimeStyles.None, out DateTime endDate))
            {
                
                query = query.Where(x =>x.NgayChieu.HasValue && x.NgayChieu < endDate);
            }
            var groupedResult = query
                    .GroupBy(x => x.NgayChieu.HasValue ? x.NgayChieu.Value.Date : (DateTime?)null)
                    .Select(g => new
                    {
                        NgayChieu = g.Key,
                        TienVe = g.Sum(y => y.TienVe),
                        TienDoAn = g.Sum(y => y.TienDoAn),
                        DoanhThu = g.Sum(y => y.TongHd)
                    })
                    .OrderBy(x => x.NgayChieu)
                    .ToList();

            // Format ngày sau khi lấy dữ liệu từ DB
            var result = groupedResult.Select(x => new
            {
                NgayChieu = x.NgayChieu.HasValue ? x.NgayChieu.Value.ToString("dd/MM/yyyy") : "Không xác định",
                x.TienVe,
                x.TienDoAn,
                x.DoanhThu
            });
            return Ok(result);
        }

        [HttpGet("theo-phim")]
        public IActionResult GetDoanhThuTheoPhim()
        {
            var query = from lc in _context.LichChieus
                        join vxp in _context.VeXemPhims on lc.MaLc equals vxp.MaLc
                        join hd in _context.HoaDons on vxp.MaHd equals hd.MaHd
                        join phim in _context.Phims on lc.MaPhim equals phim.MaPhim
                        select new
                        {
                            TenPhim = phim.TenPhim,
                            TienVe = hd.TongTienVe,
                            TienDoAn = hd.TongTienDa,
                            TongHd = hd.TongTienVe + hd.TongTienDa
                        };

            var culture = System.Globalization.CultureInfo.InvariantCulture;


            var groupedResult = query
                    .GroupBy(x => x.TenPhim)
                    .Select(g => new
                    {
                        TenPhim = g.Key,
                        TienVe = g.Sum(y => y.TienVe),
                        TienDoAn = g.Sum(y => y.TienDoAn),
                        DoanhThu = g.Sum(y => y.TongHd)
                    })
                    .OrderBy(x => x.TenPhim)
                    .ToList();

            var result = groupedResult.Select(x => new
            {
                x.TenPhim,
                x.TienVe,
                x.TienDoAn,
                x.DoanhThu
            });

            return Ok(result);
        }

        [HttpGet("theo-phong-chieu")]
        public IActionResult GetDoanhThuTheoPhongChieu()
        {
            var query = from lc in _context.LichChieus
                        join vxp in _context.VeXemPhims on lc.MaLc equals vxp.MaLc
                        join hd in _context.HoaDons on vxp.MaHd equals hd.MaHd
                        join phong in _context.PhongChieus on lc.MaPc equals phong.MaPc
                        select new
                        {
                            TenPhongChieu = phong.TenPc,
                            TienVe = hd.TongTienVe,
                            TienDoAn = hd.TongTienDa,
                            TongHd = hd.TongTienVe + hd.TongTienDa
                        };

            var groupedResult = query
                    .GroupBy(x => x.TenPhongChieu)
                    .Select(g => new
                    {
                        TenPhongChieu = g.Key,
                        TienVe = g.Sum(y => y.TienVe),
                        TienDoAn = g.Sum(y => y.TienDoAn),
                        DoanhThu = g.Sum(y => y.TongHd)
                    })
                    .OrderBy(x => x.TenPhongChieu)
                    .ToList();

            var result = groupedResult.Select(x => new
            {
                x.TenPhongChieu,
                x.TienVe,
                x.TienDoAn,
                x.DoanhThu
            });

            return Ok(result);
        }


    }
}
