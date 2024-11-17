using System.ComponentModel.DataAnnotations;
using System.Data.SqlTypes;

namespace BTLRapChieuPhim.Models.LichChieuModels
{
	public class TTVe
	{
		public int MaLc { get; set; }
		public int MaPc { get; set; }
		public int MaPhim { get; set; }
		public string? Gio { get; set; }
        public string? Tgc { get; set; }
        public string? TenPhim { get; set; }
		public decimal? GiaVe { get; set; }
		public string? Ghe { get; set; } 
		public int? MaGxp { get; set; }
	}
}
