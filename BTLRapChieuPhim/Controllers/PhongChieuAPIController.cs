using BTLRapChieuPhim.Models;
using BTLRapChieuPhim.Models.LichChieuModels;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace BTLRapChieuPhim.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PhongChieuAPIController : ControllerBase
    {
		public static class SeatStorage
		{
			
			public static List<TTVe> StoredSeats = new List<TTVe>();
		}
		QuanLyRapPhimContext db = new QuanLyRapPhimContext();
        [HttpGet("byLC/{Malc}")]
        public IEnumerable<GheXPAPI> GetAllGheXP(string malc)
        {
            var ghexp = (from lc in db.LichChieus
                         join pc in db.PhongChieus on lc.MaPc equals pc.MaPc
                         join vxp in db.VeXemPhims on lc.MaLc equals vxp.MaLc
                         join g in db.GheXemPhims on vxp.MaGxp equals g.MaGxp
                         where lc.MaLc==malc
                         select new GheXPAPI
                             {
                                 MaLc = lc.MaLc,
                                 MaPc = lc.MaPc,
                                TenPc=pc.TenPc,
                                LoaiGhe = g.LoaiGhe,
                                MaGxp = g.MaGxp,
                                TrangThai = vxp.TrangThai,

                         }).ToList();
            return ghexp;
        }
        

	}
}
