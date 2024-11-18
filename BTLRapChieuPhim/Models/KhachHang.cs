using System;
using System.Collections.Generic;

namespace BTLRapChieuPhim.Models;

public partial class KhachHang
{
<<<<<<< HEAD
    public string MaKh { get; set; } = null!;
=======
    public string? MaKh { get; set; }
>>>>>>> origin/chinh

    public string? HoTen { get; set; }

    public string? DiaChi { get; set; }

    public string? Sdt { get; set; }

    public string? GioiTinh { get; set; }

    public string? MaTk { get; set; }

    public DateOnly? NgaySinh { get; set; }

    public virtual TaiKhoan? MaTkNavigation { get; set; }
}
