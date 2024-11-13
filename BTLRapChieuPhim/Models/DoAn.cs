using System;
using System.Collections.Generic;

namespace BTLRapChieuPhim.Models;

public partial class DoAn
{
    public int MaDa { get; set; }

    public string? TenDa { get; set; }

    public decimal? Gia { get; set; }

    public string? MoTa { get; set; }

    public string? TrangThai { get; set; }

    public int? MaQl { get; set; }

    public virtual ICollection<HoaDon> HoaDons { get; set; } = new List<HoaDon>();
}
