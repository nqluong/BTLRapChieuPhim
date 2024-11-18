using BTLRapChieuPhim.Areas.Admin.Models.PhimModels;
using BTLRapChieuPhim.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System.Drawing.Printing;

namespace BTLRapChieuPhim.Areas.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PhimAPIController : ControllerBase
    {
        QuanLyRapPhimContext _context = new QuanLyRapPhimContext();

		[HttpGet]
		public IActionResult GetAllPhim(int page = 1, int pageSize = 10)
		{
			var phimQuery = (from p in _context.Phims
							 join tl in _context.TheLoais on p.MaTl equals tl.MaTl
							 join hat in _context.HinhAnhTrailers on p.MaPhim equals hat.MaPhim
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
								 DuongDanAnh = hat.DuongDanAnh,
								 DuongDanTrailer = hat.DuongDanTrailer,
								 MaHat = hat.MaHat,
							 });

			// Tính tổng số trang
			int totalItems = phimQuery.Count();
			var totalPages = (int)Math.Ceiling((double)totalItems / pageSize);


			// Lấy danh sách phim theo trang
			var items = phimQuery.Skip((page - 1) * pageSize).Take(pageSize).ToList();

			// Trả về dữ liệu bao gồm thông tin phân trang
			return Ok(new
			{
				CurrentPage = page,
				TotalPages = totalPages,
				PageSize = pageSize,
				TotalItems = totalItems,
				Items = items
			});
		}


		//[HttpGet]
  //      public IEnumerable<PhimAPI> GetAllPhim()
  //      {
  //          var phimQuery = (from p in _context.Phims
  //                           join tl in _context.TheLoais on p.MaTl equals tl.MaTl
  //                           join hat in _context.HinhAnhTrailers on p.MaPhim equals hat.MaPhim
  //                           select new PhimAPI
  //                           {
  //                               MaPhim = p.MaPhim,
  //                               TenPhim = p.TenPhim,
  //                               ThoiLuong = p.ThoiLuong,
  //                               DaoDien = p.DaoDien,
  //                               DoTuoi = p.DoTuoi,
  //                               NuocSx = p.NuocSx,
  //                               MoTa = p.MoTa,
  //                               MaTl = p.MaTl,
  //                               TenTheLoai = tl.TenTheLoai,
  //                               DuongDanAnh = hat.DuongDanAnh,
  //                               DuongDanTrailer = hat.DuongDanTrailer,
  //                               MaHat = hat.MaHat,
  //                           }).ToList();
  //          return phimQuery;
  //      }

        [HttpGet("{maPhim}")]
        public IEnumerable<PhimAPI> GetPhim(int maPhim)
        {
            var phim = (from p in _context.Phims
                        join tl in _context.TheLoais on p.MaTl equals tl.MaTl
                        join hat in _context.HinhAnhTrailers on p.MaPhim equals hat.MaPhim
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
                            DuongDanAnh = hat.DuongDanAnh,
                            DuongDanTrailer = hat.DuongDanTrailer,
                            MaHat = hat.MaHat,
                        }).ToList();
            return phim;
        }

        [HttpPost]

        public IActionResult ThemPhim([FromBody] PhimAPI phimadd)
        {
            if (ModelState.IsValid)
            {
                var isDuplicate1 = _context.Phims.Any(p =>
                   p.MaPhim == phimadd.MaPhim || p.TenPhim == phimadd.TenPhim);
                var isDuplicate2 = _context.HinhAnhTrailers.Any(hat => hat.MaHat == phimadd.MaHat);
                if (isDuplicate1)
                {
                    return BadRequest(new { message = "Mã phim hoặc tên phim đã tồn tại!" });
                }

                if (isDuplicate2)
                {
                    return BadRequest(new { message = "Mã hình ảnh Trailer đã tồn tại!" });
                }

				if (phimadd.DoTuoi < 0)
				{
					return BadRequest(new { message = "Độ tuổi không hợp lệ!" });
				}

				if (phimadd.ThoiLuong <= 0)
				{
					return BadRequest(new { message = "Thời lượng phải lớn hơn 0!" });
				}

				if (phimadd.MaPhim <= 0)
				{
					return BadRequest(new { message = "Mã phim không được để trống hoặc nhỏ hơn 1!" });
				}

				if (phimadd.MaTl <= 0)
				{
					return BadRequest(new { message = "Mã thể loại không được để trống hoặc nhỏ hơn 1!" });
				}

				if (phimadd.MaHat <= 0)
				{
					return BadRequest(new { message = "Mã hình ảnh Trailer không được để trống hoặc nhỏ hơn 1!" });
				}

				if (string.IsNullOrWhiteSpace(phimadd.DuongDanAnh))
				{
					return BadRequest(new { message = "Đường dẫn ảnh không được để trống!" });
				}

				if (string.IsNullOrWhiteSpace(phimadd.DuongDanTrailer))
				{
					return BadRequest(new { message = "Đường dẫn Trailer không được để trống!" });
				}

				var phim = new Phim
                {
                    MaPhim = phimadd.MaPhim,
                    TenPhim = phimadd.TenPhim,
                    MaTl = phimadd.MaTl, 
                    ThoiLuong = phimadd.ThoiLuong,
                    DaoDien = phimadd.DaoDien,
                    DoTuoi = phimadd.DoTuoi,
                    NuocSx = phimadd.NuocSx,
                    MoTa = phimadd.MoTa,
                };
                var hinhanhTrailer = new HinhAnhTrailer
                {
                    DuongDanAnh = phimadd.DuongDanAnh,
                    DuongDanTrailer = phimadd.DuongDanTrailer,
                    MaPhim = phimadd.MaPhim,
                    MaHat = phimadd.MaHat,
                };
                _context.Phims.Add(phim);
                _context.HinhAnhTrailers.Add(hinhanhTrailer);
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
                return BadRequest(new { message = "Không tìm thấy phim với mã này!" });
            }

            var phim = _context.Phims.Find(maPhim);
            var hinhanhTrailer = _context.HinhAnhTrailers.Find(maPhim);
            if (phim == null && hinhanhTrailer == null)
            {
                return BadRequest(new { message = "Không tìm thấy phim với mã này!" });
            }

            // Kiểm tra các trường quan trọng không được để trống
            if (string.IsNullOrWhiteSpace(phimUpdated.TenPhim) ||
                string.IsNullOrWhiteSpace(phimUpdated.MoTa) ||
                string.IsNullOrWhiteSpace(phimUpdated.DaoDien) ||
                string.IsNullOrWhiteSpace(phimUpdated.NuocSx) ||
                phimUpdated.DoTuoi == null || phimUpdated.ThoiLuong == null)
            {
                return BadRequest(new { message = "Một hoặc nhiều dữ liệu phim quan trọng bị để trống!" });
            }

            if (phimUpdated.DoTuoi < 0)
            {
                return BadRequest(new { message = "Độ tuổi không hợp lệ!" });
            }

            if (phimUpdated.ThoiLuong <= 0)
            {
                return BadRequest(new { message = "Thời lượng phải lớn hơn 0!" });
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
            hinhanhTrailer.MaHat = phimUpdated.MaHat;
            hinhanhTrailer.DuongDanAnh = phimUpdated.DuongDanAnh;
            hinhanhTrailer.DuongDanTrailer = phimUpdated.DuongDanTrailer;

            _context.SaveChanges();

            return NoContent(); 
        }

        [HttpDelete("{maPhim}")]
        public IActionResult DeletePhim(int maPhim)
        {
            var phim = _context.Phims.Find(maPhim);
            if (phim == null)
            {
                return BadRequest(new { message = "Phim không tồn tại!" });
            }

            // Lấy tất cả các bản ghi liên quan đến maPhim
            var vexemphims = _context.VeXemPhims.Where(vx => vx.MaPhim == maPhim).ToList();
            var khuyenmais = _context.KhuyenMais.Where(km => km.MaPhim == maPhim).ToList();
            var danhgias = _context.DanhGia.Where(dg => dg.MaPhim == maPhim).ToList();
            var hinhanhtrailers = _context.HinhAnhTrailers.Where(hat => hat.MaPhim == maPhim).ToList();

            // Xóa các bản ghi phụ thuộc
            if (vexemphims.Any())
            {
                _context.VeXemPhims.RemoveRange(vexemphims);
            }
            if (khuyenmais.Any())
            {
                _context.KhuyenMais.RemoveRange(khuyenmais);
            }
            if (danhgias.Any())
            {
                _context.DanhGia.RemoveRange(danhgias);
            }
            if (hinhanhtrailers.Any())
            {
                _context.HinhAnhTrailers.RemoveRange(hinhanhtrailers);
            }

            // Xóa phim
            _context.Phims.Remove(phim);

            // Lưu thay đổi vào cơ sở dữ liệu
            _context.SaveChanges();

            return Ok(new { message = "Xóa phim thành công!" });
        }

        [HttpGet("phim")]
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
