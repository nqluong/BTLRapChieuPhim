using System;
using System.Collections.Generic;

namespace BTLRapChieuPhim.Models;

public partial class Phim
{
    public int MaPhim { get; set; }

    public string? TenPhim { get; set; }

    public int? ThoiLuong { get; set; }

    public string? DaoDien { get; set; }

    public int? DoTuoi { get; set; }

    public string? NuocSx { get; set; }

    public string? MoTa { get; set; }

    public int MaTl { get; set; }

    public virtual ICollection<DanhGium> DanhGia { get; set; } = new List<DanhGium>();

    public virtual ICollection<HinhAnhTrailer> HinhAnhTrailers { get; set; } = new List<HinhAnhTrailer>();

    public virtual ICollection<KhuyenMai> KhuyenMais { get; set; } = new List<KhuyenMai>();

    public virtual ICollection<LichChieu> LichChieus { get; set; } = new List<LichChieu>();

    public virtual TheLoai MaTlNavigation { get; set; } = null!;
}
