//using BTLRapChieuPhim.Models;
//using Microsoft.AspNetCore.Http;
//using Microsoft.AspNetCore.Mvc;
//using Microsoft.CodeAnalysis.Scripting;
//using Microsoft.EntityFrameworkCore;
//using Org.BouncyCastle.Crypto.Generators;

//namespace BTLRapChieuPhim.Controllers
//{
//	public class AccessController : Controller
//	{
//		QuanLyRapPhimContext db = new QuanLyRapPhimContext();
//		[HttpGet]
//		public IActionResult Login()
//		{
//			if (HttpContext.Session.GetString("UserName") == null)
//			{
//				return View();
//			}
//			else
//			{
//				return RedirectToAction("Index", "Home");
//			}
//		}
//		[HttpPost]
//		public IActionResult Login(TaiKhoan user)
//		{
//			if (HttpContext.Session.GetString("UserName") == null)
//			{
//				var u = db.TaiKhoans.Where(x => x.Username.Equals(user.Username) && x.Password.Equals(user.Password)).FirstOrDefault();
//				if (u != null)
//				{
//					HttpContext.Session.SetString("UserName", u.Username.ToString());
//					HttpContext.Session.SetInt32("LoaiTK", u.LoaiTk.Value);
//					HttpContext.Session.SetString("MaTK", u.MaTk);


//					if (u.LoaiTk == 2)
//					{
//						return RedirectToAction("Index", "Home");
//					}
//					else if (u.LoaiTk == 1)
//					{
//						return RedirectToAction("Index", "admin");
//					}
//				}
//			}
//			return View();
//		}
//		public IActionResult Logout()
//		{
//			HttpContext.Session.Clear();
//			HttpContext.Session.Remove("UserName");
//			return RedirectToAction("Index", "Home");
//		}

//		public IActionResult Unauthorized()
//		{
//			return View();
//		}

//		public IActionResult SignUp()
//		{
//			return View();

//		}
//		[HttpPost]
//		public IActionResult SignUp(string username, string email, string password, string name)
//		{
//			// Kiểm tra xem email hoặc username đã tồn tại chưa
//			if (db.TaiKhoans.Any(t => t.Email == email || t.Username == username))
//			{
//				ViewBag.Error = "Email hoặc Username đã tồn tại!";
//				return View("Signup");
//			}

//			//string hashedPassword = BCrypt.Net.BCrypt.HashPassword(password);
//			string maxMaTK = db.TaiKhoans.Any()
//			? db.TaiKhoans.Max(t => t.MaTk)
//			: 0; // Nếu chưa có tài khoản, bắt đầu từ 0
//			int roleId = email.EndsWith("@admin.rapphim") ? 1 : 2;
//			// Tạo tài khoản mới
//			TaiKhoan newAccount = new TaiKhoan
//			{
//				MaTk = maxMaTK + 1, // Tăng mã tài khoản
//				Username = username,
//				Email = email,
//				Password = password,
//				LoaiTk = roleId
//			};
//			string maxMaKH = db.KhachHangs.Any()
//			? db.KhachHangs.Max(t => t.MaKh)
//			: 0;
//			KhachHang newAccout1 = new KhachHang
//			{
//				MaTk = maxMaTK + 1,
//				HoTen = name,
//				MaKh = maxMaKH + 1,
//			};

//			int maxMaQL = db.QuanLies.Any()
//			? db.QuanLies.Max(t => t.MaQl)
//			: 0;
//			QuanLy newAccout2 = new QuanLy
//			{
//				MaTk = maxMaTK + 1,
//				HoTen = name,
//				MaQl = maxMaQL + 1,
//			};

//			// Lưu vào cơ sở dữ liệu
//			db.TaiKhoans.Add(newAccount);
//			db.KhachHangs.Add(newAccout1);
//			db.QuanLies.Add(newAccout2);
//			db.SaveChanges();

//			// Chuyển hướng tới trang đăng nhập
//			return RedirectToAction("Login", "Access");
//		}

//		[HttpGet]
//		public IActionResult ForgotPassword()
//		{
//			return View();
//		}

//		[HttpPost]
//		public IActionResult ForgotPassword(string email)
//		{
//			// Tìm tài khoản dựa trên email
//			var user = db.TaiKhoans.FirstOrDefault(u => u.Email == email);

//			if (user == null)
//			{
//				ViewBag.Error = "Email không tồn tại!";
//				return View();
//			}

//			// Hiển thị mật khẩu gốc
//			ViewBag.Password = user.Password; // Lưu ý: Nếu mật khẩu được mã hóa, bạn không thể hiển thị trực tiếp.

//			return View();
//		}
//	}
//}
