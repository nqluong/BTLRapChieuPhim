

using BTLRapChieuPhim.Models;
using BTLRapChieuPhim.Models.MoMo;
using BTLRapChieuPhim.Services.Momo;
using Microsoft.EntityFrameworkCore;

﻿using BTLRapChieuPhim.Models;
using Microsoft.EntityFrameworkCore;


var builder = WebApplication.CreateBuilder(args);




builder.Services.AddDbContext<QuanLyRapPhimContext>(options =>
	options.UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection")));

builder.Services.Configure<MomoOptionModel>(builder.Configuration.GetSection("MomoAPI"));
builder.Services.AddScoped<IMomoService, MomoService>();

builder.Services.AddControllersWithViews();

var connectionString = builder.Configuration.GetConnectionString("QuanLyRapPhimContext");
builder.Services.AddDbContext<QuanLyRapPhimContext>(x => x.UseSqlServer(connectionString));

builder.Services.AddSession();

var app = builder.Build();

// Configure the HTTP request pipeline
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
