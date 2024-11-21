using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using BTLRapChieuPhim.Models;
using Microsoft.EntityFrameworkCore.Metadata.Internal;
using System.Globalization;

namespace BTLRapChieuPhim.Areas.API.Controllers
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
                        where hd.NgayTt.HasValue
                        select new
                        {
                            Ngay = hd.NgayTt,
							TienVe = vxp.GiaVe
						};
            var culture = System.Globalization.CultureInfo.InvariantCulture;
            if (!string.IsNullOrEmpty(fromDate) && DateTime.TryParseExact(fromDate, "dd/MM/yyyy", culture, System.Globalization.DateTimeStyles.None, out DateTime startDate))
            {
                
                query = query.Where(x =>  x.Ngay >= startDate.Date);
            }
            if (!string.IsNullOrEmpty(toDate) && DateTime.TryParseExact(toDate, "dd/MM/yyyy", culture, System.Globalization.DateTimeStyles.None, out DateTime endDate))
            {
                
                query = query.Where(x =>  x.Ngay <= endDate.Date);
            }
            var groupedResult = query
                    .GroupBy(x  => x.Ngay.Value.Date)
                    .Select(g => new
                    {
                        NgayTt = g.Key,
						TongDoanhThu = g.Sum(y => y.TienVe)
					})
                    .OrderBy(x => x.NgayTt)
                    .ToList();
            if (!groupedResult.Any())
            {
                return NotFound(new
                {
                    Message = "Không có dữ liệu doanh thu phù hợp với ngày được truyền vào.",
                    FromDate = fromDate,
                    ToDate = toDate
                });
            }

            var result = groupedResult.Select(x => new
            {
                Ngay = x.NgayTt,
                x.TongDoanhThu,
            });
            return Ok(result);
        }

        [HttpGet("theo-phim")]
        [HttpGet]
        public IActionResult GetDoanhThuTheoPhim()
        {
            var query = from lc in _context.LichChieus
                        join vxp in _context.VeXemPhims on lc.MaLc equals vxp.MaLc
                        join hd in _context.HoaDons on vxp.MaHd equals hd.MaHd
                        join phim in _context.Phims on lc.MaPhim equals phim.MaPhim
                        where hd.NgayTt.HasValue
                        select new
                        {
                            phim.TenPhim,
							TienVe = vxp.GiaVe
						};

            


            var groupedResult = query
                    .GroupBy(x => x.TenPhim)
                    .Select(g => new
                    {
                        TenPhim = g.Key,
						TongDoanhThu = g.Sum(y => y.TienVe)
					})
                    .OrderBy(x => x.TenPhim)
                    .ToList();

            var result = groupedResult.Select(x => new
            {
                x.TenPhim,
                x.TongDoanhThu
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
                        where hd.NgayTt.HasValue
                        select new
                        {
                            TenPhongChieu = phong.TenPc,
							TienVe = vxp.GiaVe
						};

            var groupedResult = query
                    .GroupBy(x => x.TenPhongChieu)
                    .Select(g => new
                    {
                        TenPhongChieu = g.Key,
						TongDoanhThu = g.Sum(y => y.TienVe)
					})
                    .OrderBy(x => x.TenPhongChieu)
                    .ToList();

            var result = groupedResult.Select(x => new
            {
                x.TenPhongChieu,
				x.TongDoanhThu
			});

            return Ok(result);
        }


    }
}
