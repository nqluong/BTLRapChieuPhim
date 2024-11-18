using BTLRapChieuPhim.Models.MoMo;
using Microsoft.CodeAnalysis.Options;
using Microsoft.Extensions.Options;
using BTLRapChieuPhim.Models;
using System.Security.Cryptography;
using System.Text;
using RestSharp;
using Newtonsoft.Json;
namespace BTLRapChieuPhim.Services.Momo
{
	public class MomoService : IMomoService
	{
		private readonly IOptions<MomoOptionModel> _options;
		public MomoService(IOptions<MomoOptionModel> options)
		{
			_options = options;
		}
		public async Task<MomoCreatePaymentResponseModel> CreatePaymentMomo(OrderInfo model)
		{
			model.OrderId = DateTime.UtcNow.Ticks.ToString();
			model.OrderInformation = "Khách hàng: " + model.FullName + ". Nội dung: " + model.OrderInformation;

			var rawData = $"partnerCode={_options.Value.PartnerCode}" +
						  $"&accessKey={_options.Value.AccessKey}" +
						  $"&requestId={model.OrderId}" +
						  $"&amount={model.Amount}" +
						  $"&orderId={model.OrderId}" +
						  $"&orderInfo={model.OrderInformation}" +
						  $"&returnUrl={_options.Value.ReturnUrl}" +
						  $"&notifyUrl={_options.Value.NotifyUrl}" +
						  $"&extraData=";

			var signature = ComputeHmacSha256(rawData, _options.Value.Secretkey);

			var client = new RestClient(_options.Value.MomoApiUrl);
			var request = new RestRequest() { Method = Method.Post };
			request.AddHeader("Content-Type", "application/json;Charset=UTF-8");

			var requestData = new
			{
				accessKey = _options.Value.AccessKey,
				partnerCode = _options.Value.PartnerCode,
				requestType = _options.Value.RequestType,
				notifyUrl = _options.Value.NotifyUrl,
				returnUrl = _options.Value.ReturnUrl,
				orderId = model.OrderId,
				amount = model.Amount.ToString(),
				orderInfo = model.OrderInformation,
				requestId = model.OrderId,
				extraData = "",
				signature = signature
			};

			request.AddParameter("application/json", JsonConvert.SerializeObject(requestData), ParameterType.RequestBody);
			var response = await client.ExecuteAsync(request);
			return JsonConvert.DeserializeObject<MomoCreatePaymentResponseModel>(response.Content);
		}

		public MomoExecuteResponseModel PaymentExecuteAsync(IQueryCollection collection)
		{
			if (!collection.TryGetValue("Amount", out var amount) ||
				!collection.TryGetValue("OrderInfo", out var orderInfo) ||
				!collection.TryGetValue("OrderId", out var orderId))
			{
				throw new Exception("Phản hồi từ MoMo không đầy đủ.");
			}

			var fullName = collection.TryGetValue("FullName", out var name) ? name.ToString() : "Không xác định";

			return new MomoExecuteResponseModel()
			{
				FullName = fullName,
				Amount = amount,
				OrderId = orderId,
				OrderInfo = orderInfo
			};
		}

		private string ComputeHmacSha256(string message, string secretKey)
		{
			var keyBytes = Encoding.UTF8.GetBytes(secretKey);
			var messageBytes = Encoding.UTF8.GetBytes(message);
			byte[] hashBytes;
			using (var hmac = new HMACSHA256(keyBytes))
			{
				hashBytes = hmac.ComputeHash(messageBytes);
			}
			var hashString = BitConverter.ToString(hashBytes).Replace("-", "").ToLower();
			return hashString;
		}
	}
}
