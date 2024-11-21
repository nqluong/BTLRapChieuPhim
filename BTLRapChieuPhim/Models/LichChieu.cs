using System;
using System.Collections.Generic;

namespace BTLRapChieuPhim.Models;

public partial class LichChieu
{
    public string? MaLc { get; set; }

    public DateTime? ThoiGianChieu { get; set; }

    public string? MaPc { get; set; }

    public string? MaPhim { get; set; }

    public virtual PhongChieu? MaPcNavigation { get; set; }

    public virtual Phim? MaPhimNavigation { get; set; }

    public virtual ICollection<VeXemPhim> VeXemPhims { get; set; } = new List<VeXemPhim>();
}
