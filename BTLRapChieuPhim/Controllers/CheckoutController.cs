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
		public IActionResult Action(int[] selectedSeats,int sove, string tenghe)
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
		public async Task<IActionResult> PaymentCallBack(ThanhToan model)
		{
			// Lấy phản hồi thanh toán từ Momo
			var response =  _momoService.PaymentExecuteAsync(HttpContext.Request.Query);
			var requestquery = HttpContext.Request.Query;
			// Kiểm tra kết quả giao dịch từ Momo
			var matk = HttpContext.Session.GetInt32("MaTK");
			var Ht = db.KhachHangs.Where(x => x.MaTk == matk).Select(x => x.HoTen).FirstOrDefault();
			var maphim = TempData["Maphim"] as int?;
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
			var thanhToan = new ThanhToan
			{
				MaGd = requestquery["OrderId"],
				Hoten = Ht,
				ThanhTien = decimal.Parse(requestquery["Amount"]),
				NgayTt = DateTime.Now
			};
			if (requestquery["ResultCode"] != "0")
			{
				db.ThanhToans.Add(thanhToan);
				await db.SaveChangesAsync();
				int maTTMoi = thanhToan.MaTt;
				
				if (TempData["MaLc"] is int malc && TempData["maghe"] is int[] selectedSeats)
				{
					foreach (var maghe in selectedSeats)
					{
						var ve = db.VeXemPhims.FirstOrDefault(g => g.MaGxp == maghe && g.MaLc==malc);
						if (ve != null)
						{
							ve.TrangThai = "Đã Đặt"; 
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
