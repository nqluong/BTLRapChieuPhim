using System;
using System.Collections.Generic;

namespace BTLRapChieuPhim.Models;

public partial class VeXemPhim
{
    public int MaVxp { get; set; }

    public decimal? GiaVe { get; set; }

    public int? MaHd { get; set; }

    public int? MaPhim { get; set; }

    public int? MaLc { get; set; }

    public int? MaGxp { get; set; }

    public virtual GheXemPhim? MaGxpNavigation { get; set; }

    public virtual LichChieu? MaLcNavigation { get; set; }
}
