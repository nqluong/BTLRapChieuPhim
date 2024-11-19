using BTLRapChieuPhim.Models;

namespace BTLRapChieuPhim.Areas.Admin.Service
{
    public class QuanLyService
    {
        private readonly QuanLyRapPhimContext _context;

        public QuanLyService(QuanLyRapPhimContext context)
        {
            _context = context;
        }

        public string GetHoTenQuanLy(string userId)
        {
            var quanLy = _context.QuanLies.FirstOrDefault(q => q.MaQl == userId);
            return quanLy?.HoTen ?? "Không xác định";
        }
    }
}
