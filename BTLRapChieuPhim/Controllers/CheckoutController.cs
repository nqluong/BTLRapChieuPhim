using BTLRapChieuPhim.Models;
using BTLRapChieuPhim.Services.Momo;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

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

		public async Task<IActionResult> PaymentCallBack(ThanhToan model)
		{
			// Lấy phản hồi thanh toán từ Momo
			var response =  _momoService.PaymentExecuteAsync(HttpContext.Request.Query);
			var requestquery = HttpContext.Request.Query;
			// Kiểm tra kết quả giao dịch từ Momo
			if (requestquery["ResultCode"] != "0")
			{
				var thanhToan = new ThanhToan
				{
					MaGd = requestquery["OrderId"],
					NoiDung = requestquery["OrderInfomation"],
					Hoten = requestquery["FullName"],
					ThanhTien = decimal.Parse(requestquery["Amount"]),
					NgayTt = DateTime.Now
				};
				db.ThanhToans.Add(thanhToan);
				await db.SaveChangesAsync();
			}

			return View(response); 
		}
	}
}
