using System;
using System.Collections.Generic;
using BTLRapChieuPhim.Areas.Admin.Models;
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

    public virtual DbSet<DoAn> DoAns { get; set; }

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

    public virtual DbSet<ThanhToan> ThanhToans { get; set; }

    public virtual DbSet<TheLoai> TheLoais { get; set; }

    public virtual DbSet<VeXemPhim> VeXemPhims { get; set; }

	protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see https://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("Data Source=CHUNGLE;Initial Catalog=QuanLyRapPhim;Integrated Security=True;Connect Timeout=30;Encrypt=True;Trust Server Certificate=True;Application Intent=ReadWrite;Multi Subnet Failover=False");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<DanhGium>(entity =>
        {
            entity.HasKey(e => e.MaDg).HasName("PK__DanhGia__27258660A1DB6868");

            entity.Property(e => e.MaDg)
                .ValueGeneratedNever()
                .HasColumnName("MaDG");
            entity.Property(e => e.MaTk).HasColumnName("MaTK");
            entity.Property(e => e.NoiDung).HasMaxLength(255);
            entity.Property(e => e.TenDg)
                .HasMaxLength(100)
                .HasColumnName("TenDG");
            entity.Property(e => e.ThoiGianDg)
                .HasColumnType("datetime")
                .HasColumnName("ThoiGianDG");

            entity.HasOne(d => d.MaPhimNavigation).WithMany(p => p.DanhGia)
                .HasForeignKey(d => d.MaPhim)
                .HasConstraintName("FK__DanhGia__MaPhim__07C12930");

            entity.HasOne(d => d.MaTkNavigation).WithMany(p => p.DanhGia)
                .HasForeignKey(d => d.MaTk)
                .HasConstraintName("FK__DanhGia__MaTK__08B54D69");
        });

        modelBuilder.Entity<DoAn>(entity =>
        {
            entity.HasKey(e => e.MaDa).HasName("PK__DoAn__2725867AA0454514");

            entity.ToTable("DoAn");

            entity.Property(e => e.MaDa)
                .ValueGeneratedNever()
                .HasColumnName("MaDA");
            entity.Property(e => e.Gia).HasColumnType("decimal(18, 2)");
            entity.Property(e => e.MaQl).HasColumnName("MaQL");
            entity.Property(e => e.MoTa).HasMaxLength(255);
            entity.Property(e => e.TenDa)
                .HasMaxLength(100)
                .HasColumnName("TenDA");
            entity.Property(e => e.TrangThai).HasMaxLength(50);
        });

        modelBuilder.Entity<GheXemPhim>(entity =>
        {
            entity.HasKey(e => e.MaGxp).HasName("PK__GheXemPh__3CD34478897A55EF");

            entity.ToTable("GheXemPhim");

            entity.Property(e => e.MaGxp)
                .ValueGeneratedNever()
                .HasColumnName("MaGXP");
            entity.Property(e => e.LoaiGhe).HasMaxLength(50);
            entity.Property(e => e.TrangThai).HasMaxLength(50);
        });

        modelBuilder.Entity<HinhAnhTrailer>(entity =>
        {
            entity.HasKey(e => e.MaHat).HasName("PK__HinhAnhT__3C938F6ED679BB96");

            entity.ToTable("HinhAnhTrailer");

            entity.Property(e => e.MaHat)
                .ValueGeneratedNever()
                .HasColumnName("MaHAT");
            entity.Property(e => e.DuongDanAnh).HasMaxLength(255);
            entity.Property(e => e.DuongDanTrailer).HasMaxLength(255);
            entity.Property(e => e.Loai).HasMaxLength(50);
            entity.Property(e => e.MoTa).HasMaxLength(255);

            entity.HasOne(d => d.MaPhimNavigation).WithMany(p => p.HinhAnhTrailers)
                .HasForeignKey(d => d.MaPhim)
                .HasConstraintName("FK__HinhAnhTr__MaPhi__09A971A2");
        });

        modelBuilder.Entity<HoaDon>(entity =>
        {
            entity.HasKey(e => e.MaHd).HasName("PK__HoaDon__2725A6E040C1A9A1");

            entity.ToTable("HoaDon");

            entity.Property(e => e.MaHd)
                .ValueGeneratedNever()
                .HasColumnName("MaHD");
            entity.Property(e => e.MaDa).HasColumnName("MaDA");
            entity.Property(e => e.MaKh).HasColumnName("MaKH");
            entity.Property(e => e.SoLuongDa).HasColumnName("SoLuongDA");
            entity.Property(e => e.TongTienDa)
                .HasColumnType("decimal(18, 2)")
                .HasColumnName("TongTienDA");
            entity.Property(e => e.TongTienHd)
                .HasColumnType("decimal(18, 2)")
                .HasColumnName("TongTienHD");
            entity.Property(e => e.TongTienVe).HasColumnType("decimal(18, 2)");

            entity.HasOne(d => d.MaDaNavigation).WithMany(p => p.HoaDons)
                .HasForeignKey(d => d.MaDa)
                .HasConstraintName("FK__HoaDon__MaDA__0A9D95DB");

            entity.HasOne(d => d.MaKhNavigation).WithMany(p => p.HoaDons)
                .HasForeignKey(d => d.MaKh)
                .HasConstraintName("FK__HoaDon__MaKH__0B91BA14");
        });

        modelBuilder.Entity<KhachHang>(entity =>
        {
            entity.HasKey(e => e.MaKh).HasName("PK__KhachHan__2725CF1E2D651623");

            entity.ToTable("KhachHang");

            entity.Property(e => e.MaKh)
                .ValueGeneratedNever()
                .HasColumnName("MaKH");
            entity.Property(e => e.DiaChi).HasMaxLength(255);
            entity.Property(e => e.GioiTinh).HasMaxLength(10);
            entity.Property(e => e.HoTen).HasMaxLength(100);
            entity.Property(e => e.MaTk).HasColumnName("MaTK");
            entity.Property(e => e.Sdt).HasMaxLength(15);

            entity.HasOne(d => d.MaTkNavigation).WithMany(p => p.KhachHangs)
                .HasForeignKey(d => d.MaTk)
                .HasConstraintName("FK__KhachHang__MaTK__0C85DE4D");
        });

        modelBuilder.Entity<KhuyenMai>(entity =>
        {
            entity.HasKey(e => e.MaKm).HasName("PK__KhuyenMa__2725CF15D74AE1DB");

            entity.ToTable("KhuyenMai");

            entity.Property(e => e.MaKm)
                .ValueGeneratedNever()
                .HasColumnName("MaKM");
            entity.Property(e => e.DieuKienKm)
                .HasMaxLength(255)
                .HasColumnName("DieuKienKM");
            entity.Property(e => e.HanKm).HasColumnName("HanKM");
            entity.Property(e => e.MaQl).HasColumnName("MaQL");
            entity.Property(e => e.PhanTramKm)
                .HasColumnType("decimal(5, 2)")
                .HasColumnName("PhanTramKM");
            entity.Property(e => e.TenKm)
                .HasMaxLength(100)
                .HasColumnName("TenKM");

            entity.HasOne(d => d.MaPhimNavigation).WithMany(p => p.KhuyenMais)
                .HasForeignKey(d => d.MaPhim)
                .HasConstraintName("FK__KhuyenMai__MaPhi__0D7A0286");

            entity.HasOne(d => d.MaQlNavigation).WithMany(p => p.KhuyenMais)
                .HasForeignKey(d => d.MaQl)
                .HasConstraintName("FK__KhuyenMai__MaQL__0E6E26BF");
        });

        modelBuilder.Entity<LichChieu>(entity =>
        {
            entity.HasKey(e => e.MaLc).HasName("PK__LichChie__2725C762730CC925");

            entity.ToTable("LichChieu");

            entity.Property(e => e.MaLc)
                .ValueGeneratedNever()
                .HasColumnName("MaLC");
            entity.Property(e => e.MaPc).HasColumnName("MaPC");
            entity.Property(e => e.MaQl).HasColumnName("MaQL");
            entity.Property(e => e.ThoiGianChieu).HasColumnType("datetime");

            entity.HasOne(d => d.MaPcNavigation).WithMany(p => p.LichChieus)
                .HasForeignKey(d => d.MaPc)
                .HasConstraintName("FK__LichChieu__MaPC__0F624AF8");

            entity.HasOne(d => d.MaPhimNavigation).WithMany(p => p.LichChieus)
                .HasForeignKey(d => d.MaPhim)
                .HasConstraintName("FK_LichChieu_Phim");

            entity.HasOne(d => d.MaQlNavigation).WithMany(p => p.LichChieus)
                .HasForeignKey(d => d.MaQl)
                .HasConstraintName("FK__LichChieu__MaQL__10566F31");
        });

        modelBuilder.Entity<Phim>(entity =>
        {
            entity.HasKey(e => e.MaPhim).HasName("PK__Phim__4AC03DE3BEA13414");

            entity.ToTable("Phim");

            entity.Property(e => e.MaPhim).ValueGeneratedNever();
            entity.Property(e => e.DaoDien).HasMaxLength(100);
            entity.Property(e => e.MaTl).HasColumnName("MaTL");
            entity.Property(e => e.MoTa).HasMaxLength(255);
            entity.Property(e => e.NuocSx)
                .HasMaxLength(50)
                .HasColumnName("NuocSX");
            entity.Property(e => e.TenPhim).HasMaxLength(100);

            entity.HasOne(d => d.MaTlNavigation).WithMany(p => p.Phims)
                .HasForeignKey(d => d.MaTl)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__Phim__MaTL__70DDC3D8");
        });

        modelBuilder.Entity<PhongChieu>(entity =>
        {
            entity.HasKey(e => e.MaPc).HasName("PK__PhongChi__2725E7E5F612AE73");

            entity.ToTable("PhongChieu");

            entity.Property(e => e.MaPc)
                .ValueGeneratedNever()
                .HasColumnName("MaPC");
            entity.Property(e => e.MaQl).HasColumnName("MaQL");
            entity.Property(e => e.MaRp).HasColumnName("MaRP");
            entity.Property(e => e.TenPc)
                .HasMaxLength(100)
                .HasColumnName("TenPC");

            entity.HasOne(d => d.MaQlNavigation).WithMany(p => p.PhongChieus)
                .HasForeignKey(d => d.MaQl)
                .HasConstraintName("FK__PhongChieu__MaQL__114A936A");

            entity.HasOne(d => d.MaRpNavigation).WithMany(p => p.PhongChieus)
                .HasForeignKey(d => d.MaRp)
                .HasConstraintName("FK__PhongChieu__MaRP__123EB7A3");
        });

        modelBuilder.Entity<QuanLy>(entity =>
        {
            entity.HasKey(e => e.MaQl).HasName("PK__QuanLy__2725F852B6761808");

            entity.ToTable("QuanLy");

            entity.Property(e => e.MaQl)
                .ValueGeneratedNever()
                .HasColumnName("MaQL");
            entity.Property(e => e.DiaChi).HasMaxLength(255);
            entity.Property(e => e.HoTen).HasMaxLength(100);
            entity.Property(e => e.MaTk).HasColumnName("MaTK");
            entity.Property(e => e.Sdt).HasMaxLength(15);

            entity.HasOne(d => d.MaTkNavigation).WithMany(p => p.QuanLies)
                .HasForeignKey(d => d.MaTk)
                .HasConstraintName("FK__QuanLy__MaTK__1332DBDC");
        });

        modelBuilder.Entity<RapPhim>(entity =>
        {
            entity.HasKey(e => e.MaRp).HasName("PK__RapPhim__2725F7BFD49395CF");

            entity.ToTable("RapPhim");

            entity.Property(e => e.MaRp)
                .ValueGeneratedNever()
                .HasColumnName("MaRP");
            entity.Property(e => e.DiaChi).HasMaxLength(255);
            entity.Property(e => e.MaQl).HasColumnName("MaQL");
            entity.Property(e => e.MoTa).HasMaxLength(255);
            entity.Property(e => e.TenRp)
                .HasMaxLength(100)
                .HasColumnName("TenRP");

            entity.HasOne(d => d.MaQlNavigation).WithMany(p => p.RapPhims)
                .HasForeignKey(d => d.MaQl)
                .HasConstraintName("FK__RapPhim__MaQL__14270015");
        });

        modelBuilder.Entity<TaiKhoan>(entity =>
        {
            entity.HasKey(e => e.MaTk).HasName("PK__TaiKhoan__27250070A3FCAE44");

            entity.ToTable("TaiKhoan");

            entity.Property(e => e.MaTk)
                .ValueGeneratedNever()
                .HasColumnName("MaTK");
            entity.Property(e => e.Email).HasMaxLength(50);
            entity.Property(e => e.Password).HasMaxLength(50);
            entity.Property(e => e.Sdt).HasMaxLength(15);
            entity.Property(e => e.Username).HasMaxLength(50);
        });

        modelBuilder.Entity<ThanhToan>(entity =>
        {
            entity.HasKey(e => e.MaTt).HasName("PK__ThanhToa__2725007941CDF89E");

            entity.ToTable("ThanhToan");

            entity.Property(e => e.MaTt)
                .ValueGeneratedNever()
                .HasColumnName("MaTT");
            entity.Property(e => e.HinhThucTt)
                .HasMaxLength(100)
                .HasColumnName("HinhThucTT");
            entity.Property(e => e.MaHd).HasColumnName("MaHD");
            entity.Property(e => e.NgayTt).HasColumnName("NgayTT");
            entity.Property(e => e.ThanhTien).HasColumnType("decimal(18, 2)");

            entity.HasOne(d => d.MaHdNavigation).WithMany(p => p.ThanhToans)
                .HasForeignKey(d => d.MaHd)
                .HasConstraintName("FK__ThanhToan__MaHD__151B244E");
        });

        modelBuilder.Entity<TheLoai>(entity =>
        {
            entity.HasKey(e => e.MaTl).HasName("PK__TheLoai__272500714041F947");

            entity.ToTable("TheLoai");

            entity.Property(e => e.MaTl)
                .ValueGeneratedNever()
                .HasColumnName("MaTL");
            entity.Property(e => e.MoTa).HasMaxLength(255);
            entity.Property(e => e.TenTheLoai).HasMaxLength(100);
        });

        modelBuilder.Entity<VeXemPhim>(entity =>
        {
            entity.HasKey(e => e.MaVxp).HasName("PK__VeXemPhi__31CE4CB228626F1E");

            entity.ToTable("VeXemPhim");

            entity.Property(e => e.MaVxp)
                .ValueGeneratedNever()
                .HasColumnName("MaVXP");
            entity.Property(e => e.GiaVe).HasColumnType("decimal(18, 2)");
            entity.Property(e => e.MaGxp).HasColumnName("MaGXP");
            entity.Property(e => e.MaHd).HasColumnName("MaHD");
            entity.Property(e => e.MaLc).HasColumnName("MaLC");

            entity.HasOne(d => d.MaGxpNavigation).WithMany(p => p.VeXemPhims)
                .HasForeignKey(d => d.MaGxp)
                .HasConstraintName("FK_VeXemPhim_GheXemPhim");

            entity.HasOne(d => d.MaLcNavigation).WithMany(p => p.VeXemPhims)
                .HasForeignKey(d => d.MaLc)
                .HasConstraintName("FK__VeXemPhim__MaLC__160F4887");

            entity.HasOne(d => d.MaPhimNavigation).WithMany(p => p.VeXemPhims)
                .HasForeignKey(d => d.MaPhim)
                .HasConstraintName("FK__VeXemPhim__MaPhi__17036CC0");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
