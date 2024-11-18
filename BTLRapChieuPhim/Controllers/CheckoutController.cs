using BTLRapChieuPhim.Models;
using BTLRapChieuPhim.Services.Momo;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Security.Claims;

namespace BTLRapChieuPhim.Controllers
{
	public class CheckoutController : Controller
	{
		private readonly IMomoService _momoService;
		private readonly QuanLyRapPhimContext db; // Đổi _context thành db
		private static readonly HttpClient client = new HttpClient();

		public CheckoutController(IMomoService momoService, QuanLyRapPhimContext context)
		{
			_momoService = momoService;
			db = context; 
		}
		[HttpPost]
		public IActionResult Action(string[] selectedSeats,int sove, string tenghe)
		{
			if (selectedSeats != null && selectedSeats.Length > 0)
			{
				// Lưu thông tin ghế vào TempData (hoặc xử lý dữ liệu khác)
				TempData["maghe"] = selectedSeats;
				TempData["tenghe"]=tenghe;
				TempData["sove"] = sove;
				
				return Json(new { success = true, message = "Seats saved successfully!" });
			}
			else
			{
				return Json(new { success = false, message = "No seats selected!" });
			}
		}
		private string GenerateMaHD()
		{
			// Lấy mã hóa đơn lớn nhất hiện tại, bỏ phần tiền tố "HD"
			var maxId = db.HoaDons
						  .Where(h => h.MaHd.StartsWith("HD"))
						  .Select(h => h.MaHd.Substring(2)) // Lấy phần sau tiền tố "HD"
						  .OrderByDescending(id => id) // Sắp xếp giảm dần
						  .FirstOrDefault();

			// Nếu không có mã hóa đơn nào (có thể là lần đầu thêm), bắt đầu từ 1
			int newNumber = (maxId != null && int.TryParse(maxId, out var num)) ? num + 1 : 1;

			string newMaHD = "HD" + newNumber.ToString("D2"); // Ví dụ: HD01, HD02, ...

			// Kiểm tra nếu mã hóa đơn đã tồn tại
			while (db.HoaDons.Any(h => h.MaHd == newMaHD))
			{
				newNumber++;  // Tăng số và tạo lại mã hóa đơn
				newMaHD = "HD" + newNumber.ToString("D2"); // Ví dụ: HD01, HD02, ...
			}

			return newMaHD; // Trả về mã hóa đơn mới
		}
		public async Task<IActionResult> PaymentCallBack(HoaDon model)
		{
			// Lấy phản hồi thanh toán từ Momo
			var response =  _momoService.PaymentExecuteAsync(HttpContext.Request.Query);
			var requestquery = HttpContext.Request.Query;
			// Kiểm tra kết quả giao dịch từ Momo
			var matk = HttpContext.Session.GetString("MaTK");
			var Ht = db.KhachHangs.Where(x => x.MaTk == matk).Select(x => x.HoTen).FirstOrDefault();
			var maphim = TempData["Maphim"] as string;
			var anh = db.HinhAnhTrailers.Where(x => x.MaPhim == maphim).Select(x => x.DuongDanAnh).FirstOrDefault();
			TempData["Anh"] = anh;
			var ten = db.Phims.Where(x => x.MaPhim == maphim).Select(x => x.TenPhim).FirstOrDefault();
			TempData["TenPhim"]= ten;
			var ngaychieu = TempData["Tgc"] as DateTime?;
			if (ngaychieu != null)
			{
				ViewBag.NgayChieu = ngaychieu.Value.ToString("yyyy-MM-dd");  // Hoặc định dạng bạn muốn
			}
			else
			{
				ViewBag.NgayChieu = "Ngày chiếu không có dữ liệu";
			}
			var thanhToan = new HoaDon
			{
				MaHd= GenerateMaHD(),
                MaGd = requestquery["OrderId"],
				HoTen = Ht,
				TienTt = decimal.Parse(requestquery["Amount"]),
				NgayTt = DateTime.Now
			};
			if (requestquery["ResultCode"] != "0")
			{
				db.HoaDons.Add(thanhToan);
				await db.SaveChangesAsync();
				string maTTMoi = thanhToan.MaHd;
				
				if (TempData["MaLc"] is string malc && TempData["maghe"] is string[] selectedSeats)
				{
					foreach (var maghe in selectedSeats)
					{
						var ve = db.VeXemPhims.FirstOrDefault(g => g.MaGxp == maghe && g.MaLc==malc);
						if (ve != null)
						{
							ve.TrangThai = 1; 
							ve.MaHd = maTTMoi; 
						}
					}
					await db.SaveChangesAsync();
				}
			}

			return View("PayMentCallBack",response); 
		}
	}
}
