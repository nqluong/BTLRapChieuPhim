using System;
using System.Collections.Generic;

namespace BTLRapChieuPhim.Models;

public partial class DanhGium
{
    public int MaDg { get; set; }

    public string? TenDg { get; set; }

    public string? NoiDung { get; set; }

    public DateTime? ThoiGianDg { get; set; }

    public int? MaTk { get; set; }

    public int? MaPhim { get; set; }

    public virtual Phim? MaPhimNavigation { get; set; }

    public virtual TaiKhoan? MaTkNavigation { get; set; }
}
