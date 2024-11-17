using System;
using System.Collections.Generic;

namespace BTLRapChieuPhim.Models;

public partial class GheVe
{
    public int Ma { get; set; }

    public int MaLc { get; set; }

    public int MaGxp { get; set; }

    public string TrangThai { get; set; } = null!;

    public virtual GheXemPhim MaGxpNavigation { get; set; } = null!;

    public virtual VeXemPhim MaLcNavigation { get; set; } = null!;
}
