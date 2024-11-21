using System;
using System.Collections.Generic;

namespace BTLRapChieuPhim.Models;

public partial class TheLoai
{
    public string MaTl { get; set; } = null!;

    public string? TenTheLoai { get; set; }

    public string? MoTa { get; set; }

    public virtual ICollection<Phim> Phims { get; set; } = new List<Phim>();
}
