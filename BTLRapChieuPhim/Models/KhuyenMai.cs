using System;
using System.Collections.Generic;

namespace BTLRapChieuPhim.Models;

public partial class KhuyenMai
{
    public string MaKm { get; set; } = null!;

    public string? TenKm { get; set; }

    public string? DieuKienKm { get; set; }

    public DateOnly? HanKm { get; set; }

    public string? MaPhim { get; set; }

    public string? MaQl { get; set; }

    public int? PhanTramKm { get; set; }

    public virtual Phim? MaPhimNavigation { get; set; }

    public virtual QuanLy? MaQlNavigation { get; set; }
}
