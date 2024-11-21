using System;
using System.Collections.Generic;

namespace BTLRapChieuPhim.Models;

public partial class HoaDon
{
    public string? MaHd { get; set; }

    public decimal? TienTt { get; set; }

    public DateTime? NgayTt { get; set; }

    public string? MaGd { get; set; }

    public string? MaKh { get; set; }

    public string? HoTen { get; set; }

    public virtual ICollection<VeXemPhim> VeXemPhims { get; set; } = new List<VeXemPhim>();
}
