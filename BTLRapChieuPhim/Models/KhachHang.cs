using System;
using System.Collections.Generic;

namespace BTLRapChieuPhim.Models;

public partial class KhachHang
{
    public int MaKh { get; set; }

    public string? HoTen { get; set; }

    public string? DiaChi { get; set; }

    public string? Sdt { get; set; }

    public string? GioiTinh { get; set; }

    public int? MaTk { get; set; }

    public DateOnly? NgaySinh { get; set; }

    public virtual ICollection<HoaDon> HoaDons { get; set; } = new List<HoaDon>();

    public virtual TaiKhoan? MaTkNavigation { get; set; }
}
