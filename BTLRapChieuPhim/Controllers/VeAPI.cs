/*using BTLRapChieuPhim.Models.LichChieuModels;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using static BTLRapChieuPhim.Controllers.PhongChieuAPIController;

namespace BTLRapChieuPhim.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class VeAPI : ControllerBase
    {
		[HttpPost("TTve/{Malc}")]
		public IActionResult PostTTVe(int malc, [FromBody] List<TTVe> selectedSeats)
		{
			try
			{
				if (selectedSeats == null || !selectedSeats.Any())
				{
					return BadRequest("No seats selected.");
				}

				foreach (var seat in selectedSeats)
				{
					SeatStorage.StoredSeats.Add(new TTVe
					{
						MaLc = seat.MaLc,				
						GiaVe = seat.GiaVe,
						Ghe = seat.Ghe,
						Gio=seat.Gio,
						Tgc=seat.Tgc,
						TenPhim=seat.TenPhim,
						MaPhim = seat.MaPhim,
						MaGxp = seat.MaGxp
					});
				}

				return Ok(new { Message = "Seats successfully selected", SelectedSeats = selectedSeats });
			}
			catch (Exception ex)
			{
				return StatusCode(500, $"Internal server error: {ex.Message}");
			}
		}
		[HttpGet("TTve")]
		public IActionResult GetStoredSeats()
		{
			try
			{
				// Trả về thông tin ghế đã lưu trong bộ nhớ tạm
				return Ok(new { StoredSeats = SeatStorage.StoredSeats });
			}
			catch (Exception ex)
			{
				return StatusCode(500, $"Internal server error: {ex.Message}");
			}
		}
		[HttpPost("resetStoredSeats")]
		public IActionResult ResetStoredSeats()
		{
			try
			{
				SeatStorage.StoredSeats.Clear();
				return Ok(new { Message = "StoredSeats reset successfully." });
			}
			catch (Exception ex)
			{
				return StatusCode(500, $"Internal server error: {ex.Message}");
			}
		}


	}
}
*/