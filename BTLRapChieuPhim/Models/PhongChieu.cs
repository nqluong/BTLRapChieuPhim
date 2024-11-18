using System;
using System.Collections.Generic;

namespace BTLRapChieuPhim.Models;

public partial class PhongChieu
{
    public string MaPc { get; set; } = null!;

    public string? TenPc { get; set; }

    public int? SucChua { get; set; }

    public string? MaRp { get; set; }

    public virtual ICollection<GheXemPhim> GheXemPhims { get; set; } = new List<GheXemPhim>();

    public virtual ICollection<LichChieu> LichChieus { get; set; } = new List<LichChieu>();

    public virtual RapPhim? MaRpNavigation { get; set; }
}
