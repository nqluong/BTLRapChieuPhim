using System;
using System.Collections.Generic;

namespace BTLRapChieuPhim.Models;

public partial class GheXemPhim
{
    public int MaGxp { get; set; }

    public string? LoaiGhe { get; set; }

    public virtual ICollection<GheVe> GheVes { get; set; } = new List<GheVe>();
}
