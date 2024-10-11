using System;
using System.Collections.Generic;

namespace BTLRapChieuPhim.Models;

public partial class ThanhToan
{
    public int MaTt { get; set; }

    public string? HinhThucTt { get; set; }

    public decimal? ThanhTien { get; set; }

    public DateOnly? NgayTt { get; set; }

    public int? MaHd { get; set; }

    public virtual HoaDon? MaHdNavigation { get; set; }
}
