using System;
using System.Collections.Generic;

namespace BTLRapChieuPhim.Models;

public partial class HinhAnhTrailer
{
    public int MaHat { get; set; }

    public string? DuongDanAnh { get; set; }

    public string? DuongDanTrailer { get; set; }

    public int? MaPhim { get; set; }

    public virtual Phim? MaPhimNavigation { get; set; }
}
