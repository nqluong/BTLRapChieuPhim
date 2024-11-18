using System;
using System.Collections.Generic;

namespace BTLRapChieuPhim.Models;

public partial class RapPhim
{
    public string MaRp { get; set; } = null!;

    public string? TenRp { get; set; }

    public string? DiaChi { get; set; }

    public string? MoTa { get; set; }

    public string? MaQl { get; set; }

    public virtual QuanLy? MaQlNavigation { get; set; }

    public virtual ICollection<PhongChieu> PhongChieus { get; set; } = new List<PhongChieu>();
}
