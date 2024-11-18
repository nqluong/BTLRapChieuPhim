using System;
using System.Collections.Generic;

namespace BTLRapChieuPhim.Models;

public partial class TaiKhoan
{
    public string? MaTk { get; set; } 
    public string? Username { get; set; }

    public string? Password { get; set; }

    public string? Email { get; set; }

    public string? Sdt { get; set; }

    public int? LoaiTk { get; set; }

    public virtual ICollection<DanhGium> DanhGia { get; set; } = new List<DanhGium>();

    public virtual ICollection<KhachHang> KhachHangs { get; set; } = new List<KhachHang>();

    public virtual ICollection<QuanLy> QuanLies { get; set; } = new List<QuanLy>();
}
