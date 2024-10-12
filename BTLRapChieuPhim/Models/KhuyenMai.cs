using System;
using System.Collections.Generic;

namespace BTLRapChieuPhim.Models;

public partial class KhuyenMai
{
    public int MaKm { get; set; }

    public string? TenKm { get; set; }

    public string? DieuKienKm { get; set; }

    public DateOnly? HanKm { get; set; }

    public int? MaPhim { get; set; }

    public int? MaQl { get; set; }

    public decimal? PhanTramKm { get; set; }

    public virtual Phim? MaPhimNavigation { get; set; }

    public virtual QuanLy? MaQlNavigation { get; set; }
}
