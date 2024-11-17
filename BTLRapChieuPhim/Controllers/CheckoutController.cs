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
			db = context; // Khởi tạo đúng db context
		}

		

		
		
	}
}
