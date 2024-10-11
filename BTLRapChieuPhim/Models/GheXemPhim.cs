using System;
using System.Collections.Generic;

namespace BTLRapChieuPhim.Models;

public partial class GheXemPhim
{
    public int MaGxp { get; set; }

    public string? LoaiGhe { get; set; }

    public string? TrangThai { get; set; }

    public virtual ICollection<VeXemPhim> VeXemPhims { get; set; } = new List<VeXemPhim>();
}
