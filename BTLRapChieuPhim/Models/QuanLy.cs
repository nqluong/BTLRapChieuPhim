using System;
using System.Collections.Generic;

namespace BTLRapChieuPhim.Models;

public partial class QuanLy
{
    public int MaQl { get; set; }

    public string? HoTen { get; set; }

    public string? DiaChi { get; set; }

    public DateOnly? NgaySinh { get; set; }

    public string? Sdt { get; set; }

    public int? MaTk { get; set; }

    public virtual ICollection<KhuyenMai> KhuyenMais { get; set; } = new List<KhuyenMai>();

    public virtual TaiKhoan? MaTkNavigation { get; set; }

    public virtual ICollection<RapPhim> RapPhims { get; set; } = new List<RapPhim>();
}
