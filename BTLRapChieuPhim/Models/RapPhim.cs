using System;
using System.Collections.Generic;

namespace BTLRapChieuPhim.Models;

public partial class RapPhim
{
    public int MaRp { get; set; }

    public string? TenRp { get; set; }

    public string? DiaChi { get; set; }

    public string? MoTa { get; set; }

    public int? MaQl { get; set; }

    public virtual QuanLy? MaQlNavigation { get; set; }

    public virtual ICollection<PhongChieu> PhongChieus { get; set; } = new List<PhongChieu>();
}
