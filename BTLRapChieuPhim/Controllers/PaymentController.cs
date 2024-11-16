using BTLRapChieuPhim.Models;
using BTLRapChieuPhim.Services.Momo;
using Microsoft.AspNetCore.Mvc;

namespace BTLRapChieuPhim.Controllers
{
	public class PaymentController : Controller
	{
		private IMomoService _momoService;

		public PaymentController(IMomoService momoService)
		{
			_momoService = momoService;
		}
		public async Task<IActionResult> CreatePaymentMomo(OrderInfo model)
		{
			var response = await _momoService.CreatePaymentMomo(model);
			return Redirect(response.PayUrl);
		}
		public IActionResult PaymentCallBack()
		{
			var response = _momoService.PaymentExecuteAsync(HttpContext.Request.Query);
			return View(response);
		}
	}
}
