using BTLRapChieuPhim.Models;
using BTLRapChieuPhim.Models.MoMo;
using BTLRapChieuPhim.Services.Momo;
using Microsoft.EntityFrameworkCore;

var builder = WebApplication.CreateBuilder(args);

// Thêm DbContext cho SQL Server
var connectionString = builder.Configuration.GetConnectionString("DefaultConnection");
builder.Services.AddDbContext<QuanLyRapPhimContext>(x => x.UseSqlServer(connectionString));

// Cấu hình Momo API
builder.Services.Configure<MomoOptionModel>(builder.Configuration.GetSection("MomoAPI"));
builder.Services.AddScoped<IMomoService, MomoService>();

// Thêm session
builder.Services.AddSession();

// Thêm MVC Controllers và Views
builder.Services.AddControllersWithViews();

var app = builder.Build();

// Cấu hình request pipeline
if (!app.Environment.IsDevelopment())
{
	app.UseExceptionHandler("/Home/Error");
	app.UseHsts();
}

app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();
app.UseAuthorization();
app.UseSession();

app.MapControllers();

app.MapControllerRoute(
	name: "default",
	pattern: "{controller=Home}/{action=Index}/{id?}");

app.Run();
