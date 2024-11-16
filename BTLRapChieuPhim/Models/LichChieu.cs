using System;
using System.Collections.Generic;

namespace BTLRapChieuPhim.Models;

public partial class LichChieu
{
    public int MaLc { get; set; }

    public DateTime? ThoiGianChieu { get; set; }


    public int? MaPc { get; set; }

    public int? MaPhim { get; set; }

    public virtual PhongChieu? MaPcNavigation { get; set; }

    public virtual Phim? MaPhimNavigation { get; set; }
    public virtual ICollection<VeXemPhim> VeXemPhims { get; set; } = new List<VeXemPhim>();
}
