using System;
using System.Collections.Generic;

namespace BTLRapChieuPhim.Models;

public partial class VeXemPhim
{
    public string MaVxp { get; set; } = null!;

    public decimal? GiaVe { get; set; }

    public string? MaHd { get; set; }

    public string? MaLc { get; set; }

    public string? MaGxp { get; set; }

    public int? TrangThai { get; set; }

    public virtual GheXemPhim? MaGxpNavigation { get; set; }

    public virtual HoaDon? MaHdNavigation { get; set; }

    public virtual LichChieu? MaLcNavigation { get; set; }
}
