using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace BTLRapChieuPhim.Models;

public partial class QuanLyRapPhimContext : DbContext
{
    public QuanLyRapPhimContext()
    {
    }

    public QuanLyRapPhimContext(DbContextOptions<QuanLyRapPhimContext> options)
        : base(options)
    {
    }

    public virtual DbSet<DanhGium> DanhGia { get; set; }

    public virtual DbSet<GheXemPhim> GheXemPhims { get; set; }

    public virtual DbSet<HinhAnhTrailer> HinhAnhTrailers { get; set; }

    public virtual DbSet<HoaDon> HoaDons { get; set; }

    public virtual DbSet<KhachHang> KhachHangs { get; set; }

    public virtual DbSet<KhuyenMai> KhuyenMais { get; set; }

    public virtual DbSet<LichChieu> LichChieus { get; set; }

    public virtual DbSet<Phim> Phims { get; set; }

    public virtual DbSet<PhongChieu> PhongChieus { get; set; }

    public virtual DbSet<QuanLy> QuanLies { get; set; }

    public virtual DbSet<RapPhim> RapPhims { get; set; }

    public virtual DbSet<TaiKhoan> TaiKhoans { get; set; }

    public virtual DbSet<TheLoai> TheLoais { get; set; }

    public virtual DbSet<VeXemPhim> VeXemPhims { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see https://go.microsoft.com/fwlink/?LinkId=723263.

        => optionsBuilder.UseSqlServer("Data Source=LAPTOP-LUONG\\SQLEXPRESS;Initial Catalog=QuanLyRapPhim;Integrated Security=True;Connect Timeout=30;Encrypt=True;Trust Server Certificate=True;Application Intent=ReadWrite;Multi Subnet Failover=False");


    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<DanhGium>(entity =>
        {
            entity.HasKey(e => e.MaDg);

            entity.Property(e => e.MaDg)
                .HasMaxLength(50)
                .HasColumnName("MaDG");
            entity.Property(e => e.MaPhim).HasMaxLength(50);
            entity.Property(e => e.MaTk)
                .HasMaxLength(50)
                .HasColumnName("MaTK");
            entity.Property(e => e.TenDg).HasColumnName("TenDG");
            entity.Property(e => e.ThoiGianDg)
                .HasColumnType("datetime")
                .HasColumnName("ThoiGianDG");

            entity.HasOne(d => d.MaPhimNavigation).WithMany(p => p.DanhGia)
                .HasForeignKey(d => d.MaPhim)
                .HasConstraintName("FK_DanhGia_Phim");

            entity.HasOne(d => d.MaTkNavigation).WithMany(p => p.DanhGia)
                .HasForeignKey(d => d.MaTk)
                .HasConstraintName("FK_DanhGia_TaiKhoan");
        });

        modelBuilder.Entity<GheXemPhim>(entity =>
        {
            entity.HasKey(e => e.MaGxp);

            entity.ToTable("GheXemPhim");

            entity.Property(e => e.MaGxp)
                .HasMaxLength(50)
                .HasColumnName("MaGXP");
            entity.Property(e => e.MaPc)
                .HasMaxLength(50)
                .HasColumnName("MaPC");

            entity.HasOne(d => d.MaPcNavigation).WithMany(p => p.GheXemPhims)
                .HasForeignKey(d => d.MaPc)
                .HasConstraintName("FK_GheXemPhim_PhongChieu");
        });

        modelBuilder.Entity<HinhAnhTrailer>(entity =>
        {
            entity.HasKey(e => e.MaHat);

            entity.ToTable("HinhAnhTrailer");

            entity.Property(e => e.MaHat)
                .HasMaxLength(50)
                .HasColumnName("MaHAT");
            entity.Property(e => e.MaPhim).HasMaxLength(50);

            entity.HasOne(d => d.MaPhimNavigation).WithMany(p => p.HinhAnhTrailers)
                .HasForeignKey(d => d.MaPhim)
                .HasConstraintName("FK_HinhAnhTrailer_Phim");
        });

        modelBuilder.Entity<HoaDon>(entity =>
        {
            entity.HasKey(e => e.MaHd);

            entity.ToTable("HoaDon");

            entity.Property(e => e.MaHd)
                .HasMaxLength(50)
                .HasColumnName("MaHD");
            entity.Property(e => e.MaGd).HasColumnName("MaGD");
            entity.Property(e => e.MaKh)
                .HasMaxLength(50)
                .HasColumnName("MaKH");
            entity.Property(e => e.NgayTt)
                .HasColumnType("datetime")
                .HasColumnName("NgayTT");
            entity.Property(e => e.TienTt)
                .HasColumnType("decimal(18, 0)")
                .HasColumnName("TienTT");
        });

        modelBuilder.Entity<KhachHang>(entity =>
        {
            entity.HasKey(e => e.MaKh);

            entity.ToTable("KhachHang");

            entity.Property(e => e.MaKh)
                .HasMaxLength(50)
                .HasColumnName("MaKH");
            entity.Property(e => e.DiaChi).HasMaxLength(50);
            entity.Property(e => e.GioiTinh).HasMaxLength(10);
            entity.Property(e => e.MaTk)
                .HasMaxLength(50)
                .HasColumnName("MaTK");
            entity.Property(e => e.Sdt)
                .HasMaxLength(50)
                .HasColumnName("SDT");

            entity.HasOne(d => d.MaTkNavigation).WithMany(p => p.KhachHangs)
                .HasForeignKey(d => d.MaTk)
                .HasConstraintName("FK_KhachHang_TaiKhoan");
        });

        modelBuilder.Entity<KhuyenMai>(entity =>
        {
            entity.HasKey(e => e.MaKm);

            entity.ToTable("KhuyenMai");

            entity.Property(e => e.MaKm)
                .HasMaxLength(50)
                .HasColumnName("MaKM");
            entity.Property(e => e.DieuKienKm).HasColumnName("DieuKienKM");
            entity.Property(e => e.HanKm).HasColumnName("HanKM");
            entity.Property(e => e.MaPhim).HasMaxLength(50);
            entity.Property(e => e.MaQl)
                .HasMaxLength(50)
                .HasColumnName("MaQL");
            entity.Property(e => e.PhanTramKm).HasColumnName("PhanTramKM");
            entity.Property(e => e.TenKm)
                .HasMaxLength(50)
                .HasColumnName("TenKM");

            entity.HasOne(d => d.MaPhimNavigation).WithMany(p => p.KhuyenMais)
                .HasForeignKey(d => d.MaPhim)
                .HasConstraintName("FK_KhuyenMai_Phim");

            entity.HasOne(d => d.MaQlNavigation).WithMany(p => p.KhuyenMais)
                .HasForeignKey(d => d.MaQl)
                .HasConstraintName("FK_KhuyenMai_QuanLy");
        });

        modelBuilder.Entity<LichChieu>(entity =>
        {
            entity.HasKey(e => e.MaLc);

            entity.ToTable("LichChieu");

            entity.Property(e => e.MaLc)
                .HasMaxLength(50)
                .HasColumnName("MaLC");
            entity.Property(e => e.MaPc)
                .HasMaxLength(50)
                .HasColumnName("MaPC");
            entity.Property(e => e.MaPhim).HasMaxLength(50);
            entity.Property(e => e.ThoiGianChieu).HasColumnType("datetime");

            entity.HasOne(d => d.MaPcNavigation).WithMany(p => p.LichChieus)
                .HasForeignKey(d => d.MaPc)
                .HasConstraintName("FK_LichChieu_PhongChieu");

            entity.HasOne(d => d.MaPhimNavigation).WithMany(p => p.LichChieus)
                .HasForeignKey(d => d.MaPhim)
                .HasConstraintName("FK_LichChieu_Phim");
        });

        modelBuilder.Entity<Phim>(entity =>
        {
            entity.HasKey(e => e.MaPhim);

            entity.ToTable("Phim");

            entity.Property(e => e.MaPhim).HasMaxLength(50);
            entity.Property(e => e.DaoDien).HasMaxLength(50);
            entity.Property(e => e.MaTl)
                .HasMaxLength(50)
                .HasColumnName("MaTL");
            entity.Property(e => e.NuocSx)
                .HasMaxLength(50)
                .HasColumnName("NuocSX");

            entity.HasOne(d => d.MaTlNavigation).WithMany(p => p.Phims)
                .HasForeignKey(d => d.MaTl)
                .HasConstraintName("FK_Phim_TheLoai");
        });

        modelBuilder.Entity<PhongChieu>(entity =>
        {
            entity.HasKey(e => e.MaPc);

            entity.ToTable("PhongChieu");

            entity.Property(e => e.MaPc)
                .HasMaxLength(50)
                .HasColumnName("MaPC");
            entity.Property(e => e.MaRp)
                .HasMaxLength(50)
                .HasColumnName("MaRP");
            entity.Property(e => e.TenPc)
                .HasMaxLength(50)
                .HasColumnName("TenPC");

            entity.HasOne(d => d.MaRpNavigation).WithMany(p => p.PhongChieus)
                .HasForeignKey(d => d.MaRp)
                .HasConstraintName("FK_PhongChieu_RapPhim");
        });

        modelBuilder.Entity<QuanLy>(entity =>
        {
            entity.HasKey(e => e.MaQl).HasName("PK_QuanLY");

            entity.ToTable("QuanLy");

            entity.Property(e => e.MaQl)
                .HasMaxLength(50)
                .HasColumnName("MaQL");
            entity.Property(e => e.DiaChi).HasMaxLength(50);
            entity.Property(e => e.MaTk)
                .HasMaxLength(50)
                .HasColumnName("MaTK");
            entity.Property(e => e.Sdt)
                .HasMaxLength(50)
                .HasColumnName("SDT");

            entity.HasOne(d => d.MaTkNavigation).WithMany(p => p.QuanLies)
                .HasForeignKey(d => d.MaTk)
                .HasConstraintName("FK_QuanLy_TaiKhoan");
        });

        modelBuilder.Entity<RapPhim>(entity =>
        {
            entity.HasKey(e => e.MaRp);

            entity.ToTable("RapPhim");

            entity.Property(e => e.MaRp)
                .HasMaxLength(50)
                .HasColumnName("MaRP");
            entity.Property(e => e.MaQl)
                .HasMaxLength(50)
                .HasColumnName("MaQL");
            entity.Property(e => e.TenRp)
                .HasMaxLength(50)
                .HasColumnName("TenRP");

            entity.HasOne(d => d.MaQlNavigation).WithMany(p => p.RapPhims)
                .HasForeignKey(d => d.MaQl)
                .HasConstraintName("FK_RapPhim_QuanLy");
        });

        modelBuilder.Entity<TaiKhoan>(entity =>
        {
            entity.HasKey(e => e.MaTk);

            entity.ToTable("TaiKhoan");

            entity.Property(e => e.MaTk)
                .HasMaxLength(50)
                .HasColumnName("MaTK");
            entity.Property(e => e.Email).HasMaxLength(50);
            entity.Property(e => e.LoaiTk).HasColumnName("LoaiTK");
            entity.Property(e => e.Password).HasMaxLength(50);
            entity.Property(e => e.Sdt)
                .HasMaxLength(50)
                .HasColumnName("SDT");
            entity.Property(e => e.Username).HasMaxLength(50);
        });

        modelBuilder.Entity<TheLoai>(entity =>
        {
            entity.HasKey(e => e.MaTl);

            entity.ToTable("TheLoai");

            entity.Property(e => e.MaTl)
                .HasMaxLength(50)
                .HasColumnName("MaTL");
            entity.Property(e => e.TenTheLoai).HasMaxLength(50);
        });

        modelBuilder.Entity<VeXemPhim>(entity =>
        {
            entity.HasKey(e => e.MaVxp);

            entity.ToTable("VeXemPhim");

            entity.Property(e => e.MaVxp)
                .HasMaxLength(50)
                .HasColumnName("MaVXP");
            entity.Property(e => e.GiaVe).HasColumnType("decimal(18, 0)");
            entity.Property(e => e.MaGxp)
                .HasMaxLength(50)
                .HasColumnName("MaGXP");
            entity.Property(e => e.MaHd)
                .HasMaxLength(50)
                .HasColumnName("MaHD");
            entity.Property(e => e.MaLc)
                .HasMaxLength(50)
                .HasColumnName("MaLC");

            entity.HasOne(d => d.MaGxpNavigation).WithMany(p => p.VeXemPhims)
                .HasForeignKey(d => d.MaGxp)
                .HasConstraintName("FK_VeXemPhim_GheXemPhim");

            entity.HasOne(d => d.MaHdNavigation).WithMany(p => p.VeXemPhims)
                .HasForeignKey(d => d.MaHd)
                .HasConstraintName("FK_VeXemPhim_HoaDon");

            entity.HasOne(d => d.MaLcNavigation).WithMany(p => p.VeXemPhims)
                .HasForeignKey(d => d.MaLc)
                .HasConstraintName("FK_VeXemPhim_LichChieu");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
