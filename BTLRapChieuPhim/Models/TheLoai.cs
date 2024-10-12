using System;
using System.Collections.Generic;

namespace BTLRapChieuPhim.Models;

public partial class TheLoai
{
    public int MaTl { get; set; }

    public string? TenTheLoai { get; set; }

    public string? MoTa { get; set; }

    public int? MaPhim { get; set; }

    public virtual Phim? MaPhimNavigation { get; set; }
}
