using Microsoft.AspNetCore.Mvc;
using BTLRapChieuPhim.Models;

namespace BTLRapChieuPhim.Controllers
{
    public class AccessController : Controller
    {
        QuanLyRapPhimContext db = new QuanLyRapPhimContext();
        [HttpGet]
        public IActionResult Login()
        {
            if(HttpContext.Session.GetString("UserName") == null)
            {
                return View();
            }
            else
            {
                return RedirectToAction("Index", "Home");
            }
        }
        [HttpPost]
        public IActionResult Login(TaiKhoan user)
        {
            if (HttpContext.Session.GetString("User Name") == null)
            {
                var u = db.TaiKhoans.Where(x => x.Username.Equals(user.Username) && x.Password.Equals(user.Password)).FirstOrDefault();
                if (u != null)
                {
                    HttpContext.Session.SetString("User Name", u.Username.ToString());
                    // Kiểm tra MaTk
                    if (u.MaTk >= 1 && u.MaTk <= 6)
                    {
                        return RedirectToAction("Index", "HomeAdmin"); // Chuyển đến trang admin
                    }
                    else
                    {
                        return RedirectToAction("Index", "Home"); // Chuyển đến trang người dùng
                    }
                }
            }
            return View();
        }
        public IActionResult Logout()
        {
            HttpContext.Session.Clear();
            HttpContext.Session.Remove("UserName");
            return RedirectToAction("Login", "Access");
        }
    }
}
