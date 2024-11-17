using System;
using System.Collections.Generic;

namespace BTLRapChieuPhim.Models;

public partial class HoaDon
{
    public int MaHd { get; set; }

    public int? SoLuongVe { get; set; }

    public int? SoLuongDa { get; set; }

    public decimal? TongTienVe { get; set; }

    public decimal? TongTienDa { get; set; }

    public decimal? TongTienHd { get; set; }

    public int? MaDa { get; set; }

    public int? MaKh { get; set; }

    public virtual DoAn? MaDaNavigation { get; set; }

    public virtual KhachHang? MaKhNavigation { get; set; }

    public virtual ICollection<ThanhToan> ThanhToans { get; set; } = new List<ThanhToan>();

    public virtual ICollection<VeXemPhim> VeXemPhims { get; set; } = new List<VeXemPhim>();
}
