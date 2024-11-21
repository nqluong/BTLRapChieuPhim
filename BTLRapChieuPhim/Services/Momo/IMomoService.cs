using BTLRapChieuPhim.Models;
using BTLRapChieuPhim.Models.MoMo;

namespace BTLRapChieuPhim.Services.Momo
{
	public interface IMomoService
	{
		Task<MomoCreatePaymentResponseModel> CreatePaymentMomo(OrderInfo model);
		MomoExecuteResponseModel PaymentExecuteAsync(IQueryCollection collection);
	}
}
