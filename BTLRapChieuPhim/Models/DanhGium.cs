using System;
using System.Collections.Generic;

namespace BTLRapChieuPhim.Models;

public partial class DanhGium
{
    public string MaDg { get; set; } = null!;

    public string? TenDg { get; set; }

    public string? NoiDung { get; set; }

    public DateTime? ThoiGianDg { get; set; }

    public string? MaPhim { get; set; }

    public string? MaTk { get; set; }

    public virtual Phim? MaPhimNavigation { get; set; }

    public virtual TaiKhoan? MaTkNavigation { get; set; }
}
