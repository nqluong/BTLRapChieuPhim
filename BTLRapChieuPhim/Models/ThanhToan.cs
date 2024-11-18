using System;
using System.Collections.Generic;

namespace BTLRapChieuPhim.Models;

public partial class ThanhToan
{
    public int MaTt { get; set; }

    public string? MaGd { get; set; }

    public string? Hoten { get; set; }

    public decimal? ThanhTien { get; set; }

    public DateTime? NgayTt { get; set; }
}
