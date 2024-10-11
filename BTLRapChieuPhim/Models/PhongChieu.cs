using System;
using System.Collections.Generic;

namespace BTLRapChieuPhim.Models;

public partial class PhongChieu
{
    public int MaPc { get; set; }

    public string? TenPc { get; set; }

    public int? SucChua { get; set; }

    public int? MaQl { get; set; }

    public int? MaRp { get; set; }

    public virtual ICollection<LichChieu> LichChieus { get; set; } = new List<LichChieu>();

    public virtual QuanLy? MaQlNavigation { get; set; }

    public virtual RapPhim? MaRpNavigation { get; set; }
}
