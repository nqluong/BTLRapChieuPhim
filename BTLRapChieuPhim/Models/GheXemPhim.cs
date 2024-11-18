using System;
using System.Collections.Generic;

namespace BTLRapChieuPhim.Models;

public partial class GheXemPhim
{
    public string MaGxp { get; set; } = null!;

    public string? LoaiGhe { get; set; }

    public string? MaPc { get; set; }

    public virtual PhongChieu? MaPcNavigation { get; set; }

    public virtual ICollection<VeXemPhim> VeXemPhims { get; set; } = new List<VeXemPhim>();
}
