using BTLRapChieuPhim.Models;
using BTLRapChieuPhim.Models.LichChieuModels;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Globalization;
using System.Security.Cryptography;

namespace BTLRapChieuPhim.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class LichChieuAPIController : ControllerBase
    {
        QuanLyRapPhimContext db = new QuanLyRapPhimContext();
        [HttpGet]
        public IEnumerable<LichChieuAPI> GetAllLichChieu()
        {
            var lichchieu = (from lc in db.LichChieus
                             join p in db.Phims on lc.MaPhim equals p.MaPhim
                             join pc in db.PhongChieus on lc.MaPc equals pc.MaPc
                             
                             select new LichChieuAPI
                             {
                                 MaLc = lc.MaLc,
                                 ThoiGianChieu = lc.ThoiGianChieu.Value.ToString("yyyy-MM-dd"),
                                
                                 MaPc = lc.MaPc,
                                 Ngay = lc.ThoiGianChieu.Value.Day,
                                 Thu = (lc.ThoiGianChieu.Value.DayOfWeek.ToString().Substring(0, 3).ToUpper()),
                                 Gio = lc.ThoiGianChieu.Value.ToString("hh:mm tt"),
                                 MaPhim = lc.MaPhim,
                             }).ToList();
            return lichchieu;
        }
        [HttpGet("byPhim/{MaPhim}")]
        public IEnumerable<LichChieuAPI> GetLichChieuByMaPhim(int maphim)
        {
            var lichchieu = (from lc in db.LichChieus
                             join p in db.Phims on lc.MaPhim equals p.MaPhim
                             join pc in db.PhongChieus on lc.MaPc equals pc.MaPc
                            
                             where lc.MaPhim == maphim && lc.ThoiGianChieu >= DateTime.Now.Date
                             orderby lc.ThoiGianChieu
                             select new LichChieuAPI
                             {
                                 MaLc = lc.MaLc,
                                 ThoiGianChieu = lc.ThoiGianChieu.Value.ToString("yyyy-MM-dd"),
                                 
                                 MaPc = lc.MaPc,
                                 Ngay = lc.ThoiGianChieu.Value.Day,
                                 Thu = (lc.ThoiGianChieu.Value.DayOfWeek.ToString().Substring(0, 3).ToUpper()),
                                 Gio = lc.ThoiGianChieu.Value.ToString("hh:mm tt"),
                                 MaPhim = lc.MaPhim,
                             }).ToList();
            return lichchieu;
        }
        [HttpGet("byPhimNgay/{maPhim}/{ngay}")]
        public IEnumerable<LichChieuAPI> GetLichChieuByPhimAndNgay(int maPhim, int ngay)
        {
            var lichchieu = (from lc in db.LichChieus
                             join p in db.Phims on lc.MaPhim equals p.MaPhim
                             join pc in db.PhongChieus on lc.MaPc equals pc.MaPc                         
                             where lc.MaPhim == maPhim && lc.ThoiGianChieu.Value.Day == ngay
                             select new LichChieuAPI
                             {
                                 MaLc = lc.MaLc,
                                 ThoiGianChieu = lc.ThoiGianChieu.Value.ToString("yyyy-MM-dd"),
                                 MaPc = lc.MaPc,
                                 Ngay = lc.ThoiGianChieu.Value.Day,
                                 Thu = lc.ThoiGianChieu.Value.DayOfWeek.ToString().Substring(0, 3).ToUpper(),
                                 Gio = lc.ThoiGianChieu.Value.ToString("hh:mm tt"),
                                 MaPhim = lc.MaPhim,
                             }).ToList();

            return lichchieu;
        }
        [HttpGet("ttphim")]
        public IEnumerable<TTPhimAPI> GetAllTTPhim()
        {
            var ttphim = (from tl in db.Phims
                          join ha in db.HinhAnhTrailers on tl.MaPhim equals ha.MaPhim
                          join tt in db.TheLoais on tl.MaTl equals tt.MaTl
                          select new TTPhimAPI
                          {
                              MaPhim = tl.MaPhim,
                              TenPhim = tl.TenPhim,
                              ThoiLuong = tl.ThoiLuong,
                              DuongDanTrailer = ha.DuongDanTrailer,
                              DuongDanAnh = ha.DuongDanAnh,
                              TenTheLoai = tt.TenTheLoai,
                              NuocSx = tl.NuocSx
                          });

            return ttphim.ToList();
        }
        [HttpGet("ttphim/{maPhim}")]
        public IEnumerable<TTPhimAPI> GetAllTTPhimbyMaphim(int maphim)
        {
            var ttphim = (from tl in db.Phims
						  join ha in db.HinhAnhTrailers on tl.MaPhim equals ha.MaPhim
                          join tt in db.TheLoais on tl.MaTl equals tt.MaTl
                          where tl.MaPhim == maphim
                          select new TTPhimAPI
                          {
                              MaPhim = tl.MaPhim,
                              TenPhim = tl.TenPhim,
                              ThoiLuong = tl.ThoiLuong,
							  DuongDanTrailer = ha.DuongDanTrailer,
                              DuongDanAnh = ha.DuongDanAnh,
                              TenTheLoai = tt.TenTheLoai,
                              NuocSx = tl.NuocSx
                          });

            return ttphim.ToList();
        }

    }

}

