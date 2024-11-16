USE [QuanLyRapPhim]
GO
/****** Object:  Table [dbo].[DanhGia]    Script Date: 10/22/2024 12:07:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhGia](
	[MaDG] [int] NOT NULL,
	[TenDG] [nvarchar](100) NULL,
	[NoiDung] [nvarchar](255) NULL,
	[ThoiGianDG] [datetime] NULL,
	[MaTK] [int] NULL,
	[MaPhim] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoAn]    Script Date: 10/22/2024 12:07:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoAn](
	[MaDA] [int] NOT NULL,
	[TenDA] [nvarchar](100) NULL,
	[Gia] [decimal](18, 2) NULL,
	[MoTa] [nvarchar](255) NULL,
	[TrangThai] [nvarchar](50) NULL,
	[MaQL] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GheXemPhim]    Script Date: 10/22/2024 12:07:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GheXemPhim](
	[MaGXP] [int] NOT NULL,
	[LoaiGhe] [nvarchar](50) NULL,
	[TrangThai] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGXP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HinhAnhTrailer]    Script Date: 10/22/2024 12:07:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HinhAnhTrailer](
	[MaHAT] [int] NOT NULL,
	[DuongDanAnh] [nvarchar](255) NULL,
	[DuongDanTrailer] [nvarchar](255) NULL,
	[Loai] [nvarchar](50) NULL,
	[MoTa] [nvarchar](255) NULL,
	[MaPhim] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHAT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 10/22/2024 12:07:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [int] NOT NULL,
	[SoLuongVe] [int] NULL,
	[SoLuongDA] [int] NULL,
	[TongTienVe] [decimal](18, 2) NULL,
	[TongTienDA] [decimal](18, 2) NULL,
	[TongTienHD] [decimal](18, 2) NULL,
	[MaDA] [int] NULL,
	[MaKH] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 10/22/2024 12:07:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] NOT NULL,
	[HoTen] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[Sdt] [nvarchar](15) NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[MaTK] [int] NULL,
	[NgaySinh] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhuyenMai]    Script Date: 10/22/2024 12:07:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuyenMai](
	[MaKM] [int] NOT NULL,
	[TenKM] [nvarchar](100) NULL,
	[DieuKienKM] [nvarchar](255) NULL,
	[HanKM] [date] NULL,
	[MaPhim] [int] NULL,
	[MaQL] [int] NULL,
	[PhanTramKM] [decimal](5, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichChieu]    Script Date: 10/22/2024 12:07:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichChieu](
	[MaLC] [int] NOT NULL,
	[ThoiGianChieu] [datetime] NULL,
	[MaQL] [int] NULL,
	[MaPC] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phim]    Script Date: 10/22/2024 12:07:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phim](
	[MaPhim] [int] NOT NULL,
	[TenPhim] [nvarchar](100) NULL,
	[ThoiLuong] [int] NULL,
	[DaoDien] [nvarchar](100) NULL,
	[DoTuoi] [int] NULL,
	[NuocSX] [nvarchar](50) NULL,
	[MoTa] [nvarchar](255) NULL,
	[MaTL] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhongChieu]    Script Date: 10/22/2024 12:07:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhongChieu](
	[MaPC] [int] NOT NULL,
	[TenPC] [nvarchar](100) NULL,
	[SucChua] [int] NULL,
	[MaQL] [int] NULL,
	[MaRP] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuanLy]    Script Date: 10/22/2024 12:07:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuanLy](
	[MaQL] [int] NOT NULL,
	[HoTen] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[NgaySinh] [date] NULL,
	[Sdt] [nvarchar](15) NULL,
	[MaTK] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaQL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RapPhim]    Script Date: 10/22/2024 12:07:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RapPhim](
	[MaRP] [int] NOT NULL,
	[TenRP] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[MoTa] [nvarchar](255) NULL,
	[MaQL] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaRP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 10/22/2024 12:07:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[MaTK] [int] NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Sdt] [nvarchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThanhToan]    Script Date: 10/22/2024 12:07:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhToan](
	[MaTT] [int] NOT NULL,
	[HinhThucTT] [nvarchar](100) NULL,
	[ThanhTien] [decimal](18, 2) NULL,
	[NgayTT] [date] NULL,
	[MaHD] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheLoai]    Script Date: 10/22/2024 12:07:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoai](
	[MaTL] [int] NOT NULL,
	[TenTheLoai] [nvarchar](100) NULL,
	[MoTa] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VeXemPhim]    Script Date: 10/22/2024 12:07:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VeXemPhim](
	[MaVXP] [int] NOT NULL,
	[GiaVe] [decimal](18, 2) NULL,
	[MaHD] [int] NULL,
	[MaPhim] [int] NULL,
	[MaLC] [int] NULL,
	[MaGXP] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaVXP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaTK], [MaPhim]) VALUES (1, N'Bộ phim thật hay', N'Một bộ phim thực sự cuốn hút và đầy cảm xúc.', CAST(N'2023-10-01T10:00:00.000' AS DateTime), 1, 1)
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaTK], [MaPhim]) VALUES (2, N'Bộ phim rất ấn tượng', N'Bộ phim này để lại ấn tượng sâu sắc trong lòng khán giả.', CAST(N'2023-10-01T11:00:00.000' AS DateTime), 1, 2)
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaTK], [MaPhim]) VALUES (3, N'Bộ phim cảm động', N'Nỗi đau và niềm vui hòa quyện trong bộ phim này.', CAST(N'2023-10-02T09:00:00.000' AS DateTime), 2, 3)
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaTK], [MaPhim]) VALUES (4, N'Bộ phim thật tuyệt vời', N'Một câu chuyện tình yêu đầy cảm xúc.', CAST(N'2023-10-02T10:30:00.000' AS DateTime), 2, 4)
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaTK], [MaPhim]) VALUES (5, N'Bộ phim rùng rợn', N'Một trải nghiệm kinh dị thực sự không thể quên.', CAST(N'2023-10-03T14:00:00.000' AS DateTime), 3, 5)
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaTK], [MaPhim]) VALUES (6, N'Bộ phim hồi hộp', N'Hồi hộp từ đầu đến cuối, không thể rời mắt.', CAST(N'2023-10-03T15:00:00.000' AS DateTime), 3, 6)
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaTK], [MaPhim]) VALUES (7, N'Bộ phim hài hước', N'Cười không ngừng với bộ phim này.', CAST(N'2023-10-04T16:00:00.000' AS DateTime), 4, 7)
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaTK], [MaPhim]) VALUES (8, N'Bộ phim vui nhộn', N'Một bộ phim với nhiều tình huống hài hước.', CAST(N'2023-10-04T17:30:00.000' AS DateTime), 4, 8)
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaTK], [MaPhim]) VALUES (9, N'Bộ phim kỳ ảo', N'Khám phá những thế giới huyền bí.', CAST(N'2023-10-05T12:00:00.000' AS DateTime), 5, 9)
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaTK], [MaPhim]) VALUES (10, N'Bộ phim tuyệt đẹp', N'Hình ảnh tuyệt đẹp và câu chuyện lôi cuốn.', CAST(N'2023-10-05T13:00:00.000' AS DateTime), 5, 10)
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaTK], [MaPhim]) VALUES (11, N'Bộ phim tâm lý', N'Khai thác sâu sắc tâm lý con người.', CAST(N'2023-10-06T18:00:00.000' AS DateTime), 6, 11)
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaTK], [MaPhim]) VALUES (12, N'Bộ phim thú vị', N'Những bài học tâm lý thú vị được rút ra.', CAST(N'2023-10-06T19:00:00.000' AS DateTime), 6, 12)
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaTK], [MaPhim]) VALUES (13, N'Bộ phim hành động', N'Hành động kịch tính không ngừng.', CAST(N'2023-10-07T08:00:00.000' AS DateTime), 7, 1)
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaTK], [MaPhim]) VALUES (14, N'Bộ phim kịch tính', N'Mỗi cảnh phim đều đầy kịch tính và bất ngờ.', CAST(N'2023-10-07T09:30:00.000' AS DateTime), 7, 2)
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaTK], [MaPhim]) VALUES (15, N'Bộ phim bí ẩn', N'Khán giả sẽ bị cuốn vào các tình tiết bí ẩn.', CAST(N'2023-10-08T10:00:00.000' AS DateTime), 8, 3)
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaTK], [MaPhim]) VALUES (16, N'Bộ phim gây cấn', N'Cảm giác hồi hộp không thể tả.', CAST(N'2023-10-08T11:00:00.000' AS DateTime), 8, 4)
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaTK], [MaPhim]) VALUES (17, N'Bộ phim lãng mạn', N'Một câu chuyện tình yêu ngọt ngào và sâu sắc.', CAST(N'2023-10-09T12:00:00.000' AS DateTime), 9, 5)
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaTK], [MaPhim]) VALUES (18, N'Bộ phim ngọt ngào', N'Tình yêu và những khoảnh khắc tuyệt đẹp.', CAST(N'2023-10-09T13:30:00.000' AS DateTime), 9, 6)
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaTK], [MaPhim]) VALUES (19, N'Bộ phim kinh dị', N'Một bộ phim đầy ám ảnh và hồi hộp.', CAST(N'2023-10-10T14:00:00.000' AS DateTime), 10, 7)
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaTK], [MaPhim]) VALUES (20, N'Bộ phim đầy kịch tính', N'Cảm giác sợ hãi và lo âu liên tục.', CAST(N'2023-10-10T15:00:00.000' AS DateTime), 10, 8)
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaTK], [MaPhim]) VALUES (21, N'Bộ phim phiêu lưu', N'Những chuyến phiêu lưu đầy thú vị.', CAST(N'2023-10-11T16:00:00.000' AS DateTime), 11, 9)
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaTK], [MaPhim]) VALUES (22, N'Bộ phim khám phá', N'Khám phá những điều kỳ diệu của thế giới.', CAST(N'2023-10-11T17:30:00.000' AS DateTime), 11, 10)
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaTK], [MaPhim]) VALUES (23, N'Bộ phim siêu anh hùng', N'Cuộc chiến của các siêu anh hùng.', CAST(N'2023-10-12T08:00:00.000' AS DateTime), 12, 1)
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaTK], [MaPhim]) VALUES (24, N'Bộ phim đầy hành động', N'Những pha hành động gay cấn và hấp dẫn.', CAST(N'2023-10-12T09:00:00.000' AS DateTime), 12, 2)
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaTK], [MaPhim]) VALUES (25, N'Bộ phim chiến tranh', N'Những trận chiến ác liệt và bi tráng.', CAST(N'2023-10-13T10:00:00.000' AS DateTime), 13, 3)
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaTK], [MaPhim]) VALUES (26, N'Bộ phim lịch sử', N'Khám phá những trang sử hào hùng.', CAST(N'2023-10-13T11:00:00.000' AS DateTime), 13, 4)
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaTK], [MaPhim]) VALUES (27, N'Bộ phim gia đình', N'Giá trị của tình thân và sự sẻ chia.', CAST(N'2023-10-14T12:00:00.000' AS DateTime), 14, 5)
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaTK], [MaPhim]) VALUES (28, N'Bộ phim về gia đình', N'Câu chuyện về tình cảm gia đình ấm áp.', CAST(N'2023-10-14T13:00:00.000' AS DateTime), 14, 6)
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaTK], [MaPhim]) VALUES (29, N'Bộ phim hoạt hình', N'Thế giới đầy màu sắc dành cho trẻ em.', CAST(N'2023-10-15T14:00:00.000' AS DateTime), 15, 7)
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaTK], [MaPhim]) VALUES (30, N'Bộ phim vui nhộn cho trẻ', N'Hài hước và giải trí cho cả gia đình.', CAST(N'2023-10-15T15:00:00.000' AS DateTime), 15, 8)
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaTK], [MaPhim]) VALUES (31, N'Bộ phim cổ tích', N'Mang lại cảm giác trở về tuổi thơ.', CAST(N'2023-10-16T16:00:00.000' AS DateTime), 16, 9)
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaTK], [MaPhim]) VALUES (32, N'Bộ phim kỳ diệu', N'Câu chuyện cổ tích đầy màu sắc và mơ mộng.', CAST(N'2023-10-16T17:30:00.000' AS DateTime), 16, 10)
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaTK], [MaPhim]) VALUES (33, N'Bộ phim thể thao', N'Câu chuyện về niềm đam mê thể thao.', CAST(N'2023-10-17T08:00:00.000' AS DateTime), 17, 11)
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaTK], [MaPhim]) VALUES (34, N'Bộ phim cảm hứng', N'Truyền cảm hứng và động lực cho mọi người.', CAST(N'2023-10-17T09:00:00.000' AS DateTime), 17, 12)
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaTK], [MaPhim]) VALUES (35, N'Bộ phim tâm linh', N'Khám phá các khía cạnh tâm linh sâu sắc.', CAST(N'2023-10-18T10:00:00.000' AS DateTime), 18, 1)
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaTK], [MaPhim]) VALUES (36, N'Bộ phim huyền bí', N'Mang đến những câu chuyện huyền bí lôi cuốn.', CAST(N'2023-10-18T11:00:00.000' AS DateTime), 18, 2)
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaTK], [MaPhim]) VALUES (37, N'Bộ phim du lịch', N'Khám phá những vùng đất mới.', CAST(N'2023-10-19T12:00:00.000' AS DateTime), 19, 3)
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaTK], [MaPhim]) VALUES (38, N'Bộ phim văn hóa', N'Tìm hiểu về văn hóa của các quốc gia.', CAST(N'2023-10-19T13:00:00.000' AS DateTime), 19, 4)
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaTK], [MaPhim]) VALUES (39, N'Bộ phim khoa học viễn tưởng', N'Những câu chuyện đầy trí tưởng tượng về tương lai.', CAST(N'2023-10-20T14:00:00.000' AS DateTime), 20, 5)
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaTK], [MaPhim]) VALUES (40, N'Bộ phim tương lai', N'Khám phá công nghệ và những điều kỳ diệu của tương lai.', CAST(N'2023-10-20T15:00:00.000' AS DateTime), 20, 6)
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaTK], [MaPhim]) VALUES (41, N'Bộ phim hài hước nhẹ nhàng', N'Mang lại tiếng cười và sự thư giãn.', CAST(N'2023-10-21T16:00:00.000' AS DateTime), 21, 7)
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaTK], [MaPhim]) VALUES (42, N'Bộ phim tâm huyết', N'Một bộ phim mang tâm huyết của cả ekip làm phim.', CAST(N'2023-10-21T17:00:00.000' AS DateTime), 21, 8)
GO
INSERT [dbo].[DoAn] ([MaDA], [TenDA], [Gia], [MoTa], [TrangThai], [MaQL]) VALUES (1, N'Bỏng ngô bơ tỏi', CAST(15000.00 AS Decimal(18, 2)), N'Bỏng ngô thơm phức, phủ lớp bơ và tỏi thơm ngon, chắc chắn sẽ làm bạn mê mẩn.', N'Đầy', 3)
GO
INSERT [dbo].[DoAn] ([MaDA], [TenDA], [Gia], [MoTa], [TrangThai], [MaQL]) VALUES (2, N'Khoai tây chiên', CAST(20000.00 AS Decimal(18, 2)), N'Khoai tây giòn tan, được chiên vàng rộm, chấm với sốt mayonnaise béo ngậy.', N'Ít', 1)
GO
INSERT [dbo].[DoAn] ([MaDA], [TenDA], [Gia], [MoTa], [TrangThai], [MaQL]) VALUES (3, N'Gà rán', CAST(30000.00 AS Decimal(18, 2)), N'Gà rán giòn rụm bên ngoài, mềm mại bên trong, kèm theo nước sốt chua ngọt đặc biệt.', N'Hết', 2)
GO
INSERT [dbo].[DoAn] ([MaDA], [TenDA], [Gia], [MoTa], [TrangThai], [MaQL]) VALUES (4, N'Piza mini', CAST(35000.00 AS Decimal(18, 2)), N'Pizza nhỏ với lớp phô mai kéo sợi, nhân thịt và rau tươi ngon, cực kỳ hấp dẫn.', N'Đầy', 5)
GO
INSERT [dbo].[DoAn] ([MaDA], [TenDA], [Gia], [MoTa], [TrangThai], [MaQL]) VALUES (5, N'Xúc xích nướng', CAST(25000.00 AS Decimal(18, 2)), N'Xúc xích thơm ngon, nướng vàng, ăn kèm với sốt mù tạt và bánh mì nóng.', N'Ít', 4)
GO
INSERT [dbo].[DoAn] ([MaDA], [TenDA], [Gia], [MoTa], [TrangThai], [MaQL]) VALUES (6, N'Bánh mì kẹp thịt', CAST(30000.00 AS Decimal(18, 2)), N'Bánh mì giòn rụm, nhân thịt bò xay với rau sống tươi ngon, ngon không thể cưỡng lại.', N'Đầy', 6)
GO
INSERT [dbo].[DoAn] ([MaDA], [TenDA], [Gia], [MoTa], [TrangThai], [MaQL]) VALUES (7, N'Táo caramel', CAST(15000.00 AS Decimal(18, 2)), N'Táo tươi mát, phủ lớp caramel ngọt ngào, là món ăn vặt không thể thiếu.', N'Hết', 2)
GO
INSERT [dbo].[DoAn] ([MaDA], [TenDA], [Gia], [MoTa], [TrangThai], [MaQL]) VALUES (8, N'Sinh tố trái cây', CAST(25000.00 AS Decimal(18, 2)), N'Sinh tố mát lạnh, bổ dưỡng từ các loại trái cây tươi ngon, làm dịu cơn khát.', N'Đầy', 1)
GO
INSERT [dbo].[DoAn] ([MaDA], [TenDA], [Gia], [MoTa], [TrangThai], [MaQL]) VALUES (9, N'Chả giò', CAST(20000.00 AS Decimal(18, 2)), N'Chả giò giòn rụm, nhân thịt và rau củ tươi ngon, chấm với nước mắm chua ngọt.', N'Ít', 3)
GO
INSERT [dbo].[DoAn] ([MaDA], [TenDA], [Gia], [MoTa], [TrangThai], [MaQL]) VALUES (10, N'Kem que', CAST(12000.00 AS Decimal(18, 2)), N'Kem mát lạnh với hương vị trái cây tự nhiên, giải nhiệt mùa hè tuyệt vời.', N'Đầy', 6)
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [TrangThai]) VALUES (1, N'Sweetbox', N'Còn trống')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [TrangThai]) VALUES (2, N'Sweetbox', N'Còn trống')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [TrangThai]) VALUES (3, N'Sweetbox', N'Dã đặt')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [TrangThai]) VALUES (4, N'Sweetbox', N'Còn trống')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [TrangThai]) VALUES (5, N'Sweetbox', N'Dã đặt')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [TrangThai]) VALUES (6, N'Sweetbox', N'Còn trống')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [TrangThai]) VALUES (7, N'Sweetbox', N'Dã đặt')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [TrangThai]) VALUES (8, N'Sweetbox', N'Còn trống')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [TrangThai]) VALUES (9, N'Sweetbox', N'Còn trống')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [TrangThai]) VALUES (10, N'Sweetbox', N'Dã đặt')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [TrangThai]) VALUES (11, N'VIP', N'Còn trống')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [TrangThai]) VALUES (12, N'VIP', N'Còn trống')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [TrangThai]) VALUES (13, N'VIP', N'Dã đặt')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [TrangThai]) VALUES (14, N'VIP', N'Còn trống')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [TrangThai]) VALUES (15, N'VIP', N'Dã đặt')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [TrangThai]) VALUES (16, N'VIP', N'Còn trống')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [TrangThai]) VALUES (17, N'VIP', N'Dã đặt')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [TrangThai]) VALUES (18, N'VIP', N'Còn trống')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [TrangThai]) VALUES (19, N'VIP', N'Dã đặt')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [TrangThai]) VALUES (20, N'VIP', N'Còn trống')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [TrangThai]) VALUES (21, N'VIP', N'Dã đặt')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [TrangThai]) VALUES (22, N'VIP', N'Còn trống')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [TrangThai]) VALUES (23, N'VIP', N'Dã đặt')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [TrangThai]) VALUES (24, N'VIP', N'Còn trống')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [TrangThai]) VALUES (25, N'Thường', N'Còn trống')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [TrangThai]) VALUES (26, N'Thường', N'Dã đặt')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [TrangThai]) VALUES (27, N'Thường', N'Còn trống')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [TrangThai]) VALUES (28, N'Thường', N'Dã đặt')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [TrangThai]) VALUES (29, N'Thường', N'Còn trống')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [TrangThai]) VALUES (30, N'Thường', N'Dã đặt')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [TrangThai]) VALUES (31, N'Thường', N'Còn trống')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [TrangThai]) VALUES (32, N'Thường', N'Dã đặt')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [TrangThai]) VALUES (33, N'Thường', N'Còn trống')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [TrangThai]) VALUES (34, N'Thường', N'Còn trống')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [TrangThai]) VALUES (35, N'Thường', N'Dã đặt')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [TrangThai]) VALUES (36, N'Thường', N'Còn trống')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [TrangThai]) VALUES (37, N'Thường', N'Dã đặt')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [TrangThai]) VALUES (38, N'Thường', N'Còn trống')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [TrangThai]) VALUES (39, N'Thường', N'Dã đặt')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [TrangThai]) VALUES (40, N'Thường', N'Còn trống')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [TrangThai]) VALUES (41, N'Thường', N'Dã đặt')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [TrangThai]) VALUES (42, N'Thường', N'Còn trống')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [TrangThai]) VALUES (43, N'Thường', N'Dã đặt')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [TrangThai]) VALUES (44, N'Thường', N'Còn trống')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [TrangThai]) VALUES (45, N'Thường', N'Dã đặt')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [TrangThai]) VALUES (46, N'Thường', N'Còn trống')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [TrangThai]) VALUES (47, N'Thường', N'Dã đặt')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [TrangThai]) VALUES (48, N'Thường', N'Còn trống')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [TrangThai]) VALUES (49, N'Thường', N'Dã đặt')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [TrangThai]) VALUES (50, N'Thường', N'Còn trống')
GO
INSERT [dbo].[HinhAnhTrailer] ([MaHAT], [DuongDanAnh], [DuongDanTrailer], [Loai], [MoTa], [MaPhim]) VALUES (1, N'AP1.jpg', N'https://www.youtube.com/watch?v=YoHD9XEInc0', N'Khoa học viễn tưởng', N'Phim khoa học viễn tưởng với các cảnh hành động đỉnh cao.', 1)
GO
INSERT [dbo].[HinhAnhTrailer] ([MaHAT], [DuongDanAnh], [DuongDanTrailer], [Loai], [MoTa], [MaPhim]) VALUES (2, N'AP2.jpg', N'https://www.youtube.com/watch?v=5xH0HfJHsaY', N'Tâm lý', N'Phim tâm lý xã hội về chênh lệch giàu nghèo.', 2)
GO
INSERT [dbo].[HinhAnhTrailer] ([MaHAT], [DuongDanAnh], [DuongDanTrailer], [Loai], [MoTa], [MaPhim]) VALUES (3, N'AP3.jpg', N'https://www.youtube.com/watch?v=ByXuk9QqQkk', N'Hoạt hình', N'Tác phẩm hoạt hình nổi tiếng về cuộc hành trình kỳ diệu.', 3)
GO
INSERT [dbo].[HinhAnhTrailer] ([MaHAT], [DuongDanAnh], [DuongDanTrailer], [Loai], [MoTa], [MaPhim]) VALUES (4, N'AP4.jpg', N'https://www.youtube.com/watch?v=Py7cDXQae2U', N'Hài', N'Phim hài lãng mạn về cuộc sống của cô gái Amélie.', 4)
GO
INSERT [dbo].[HinhAnhTrailer] ([MaHAT], [DuongDanAnh], [DuongDanTrailer], [Loai], [MoTa], [MaPhim]) VALUES (5, N'AP5.jpg', N'https://www.youtube.com/watch?v=whldChqCsYk', N'Tâm lý', N'Phim tâm lý hồi hợp với nhiều tình tiết bất ngờ.', 5)
GO
INSERT [dbo].[HinhAnhTrailer] ([MaHAT], [DuongDanAnh], [DuongDanTrailer], [Loai], [MoTa], [MaPhim]) VALUES (6, N'AP6.jpg', N'https://www.youtube.com/watch?v=gs5GwXOgumc', N'Tình cảm', N'Chuyện tình lãng mạn giữa Jack và Rose trên con tàu Titanic.', 6)
GO
INSERT [dbo].[HinhAnhTrailer] ([MaHAT], [DuongDanAnh], [DuongDanTrailer], [Loai], [MoTa], [MaPhim]) VALUES (7, N'AP7.jpg', N'https://www.youtube.com/watch?v=-jTdOdcMKoY', N'Võ thuật', N'Phim võ thuật với các cảnh quay tuyệt đẹp.', 7)
GO
INSERT [dbo].[HinhAnhTrailer] ([MaHAT], [DuongDanAnh], [DuongDanTrailer], [Loai], [MoTa], [MaPhim]) VALUES (8, N'AP8.jpg', N'https://www.youtube.com/watch?v=jVZRnnVSQ8k', N'Giả tưởng', N'Phim giả tưởng với yếu tố phép thuật trong bối cảnh chiến tranh.', 8)
GO
INSERT [dbo].[HinhAnhTrailer] ([MaHAT], [DuongDanAnh], [DuongDanTrailer], [Loai], [MoTa], [MaPhim]) VALUES (9, N'AP9.jpg', N'https://www.youtube.com/watch?v=EXeTwQWrcwY', N'Siêu anh hùng', N'Phim siêu anh hùng với diễn xuất tuyệt vời của Heath Ledger.', 9)
GO
INSERT [dbo].[HinhAnhTrailer] ([MaHAT], [DuongDanAnh], [DuongDanTrailer], [Loai], [MoTa], [MaPhim]) VALUES (10, N'AP10.jpg', N'https://www.youtube.com/watch?v=hEJnMQG9ev8', N'Hành động', N'Phim hành động hậu tận thế với các pha rượt đuổi kịch tính.', 10)
GO
INSERT [dbo].[HinhAnhTrailer] ([MaHAT], [DuongDanAnh], [DuongDanTrailer], [Loai], [MoTa], [MaPhim]) VALUES (11, N'AP11.jpg', N'https://www.youtube.com/watch?v=UaVTIH8mujA', N'Tội phạm', N'Phim kinh điển về thế giới mafia của M.', 11)
GO
INSERT [dbo].[HinhAnhTrailer] ([MaHAT], [DuongDanAnh], [DuongDanTrailer], [Loai], [MoTa], [MaPhim]) VALUES (12, N'AP12.jpg', N'https://www.youtube.com/watch?v=vKQi3bBA1y8', N'Khoa học viễn tưởng', N'Phim hành động khoa học viễn tưởng về thế giới ảo.', 12)
GO
INSERT [dbo].[HinhAnhTrailer] ([MaHAT], [DuongDanAnh], [DuongDanTrailer], [Loai], [MoTa], [MaPhim]) VALUES (13, N'AP13.jpg', N'https://www.youtube.com/watch?v=wmjiCP6R-7I', N'Tâm lý', N'Phim tâm lý tình cảm về tuổi trẻ và sự trưởng thành.', 13)
GO
INSERT [dbo].[HinhAnhTrailer] ([MaHAT], [DuongDanAnh], [DuongDanTrailer], [Loai], [MoTa], [MaPhim]) VALUES (14, N'AP14.jpg', N'https://www.youtube.com/watch?v=92a7Hj0ijLs', N'Hoạt hình', N'Phim hoạt hình với câu chuyện cảm động về tình bạn và gia đình.', 14)
GO
INSERT [dbo].[HinhAnhTrailer] ([MaHAT], [DuongDanAnh], [DuongDanTrailer], [Loai], [MoTa], [MaPhim]) VALUES (15, N'AP15.jpg', N'https://www.youtube.com/watch?v=AIzbwV7on6Q', N'Tâm lý', N'Phim về hành trình vượt khó và tham gia gameshow của một cậu bé ăn xin.', 15)
GO
INSERT [dbo].[HinhAnhTrailer] ([MaHAT], [DuongDanAnh], [DuongDanTrailer], [Loai], [MoTa], [MaPhim]) VALUES (16, N'AP16.jpg', N'https://www.youtube.com/watch?v=34WIbmXkewU', N'Hài', N'Câu chuyện hài hước và cảm động về tình bạn giữa một quý ông và người chăm sóc.', 16)
GO
INSERT [dbo].[HinhAnhTrailer] ([MaHAT], [DuongDanAnh], [DuongDanTrailer], [Loai], [MoTa], [MaPhim]) VALUES (17, N'AP17.jpg', N'https://www.youtube.com/watch?v=44LdLqgOpjo', N'Hành động', N'Phim phiêu lưu hành động về cuộc chiến của King Kong trên đảo đầu lâu.', 17)
GO
INSERT [dbo].[HinhAnhTrailer] ([MaHAT], [DuongDanAnh], [DuongDanTrailer], [Loai], [MoTa], [MaPhim]) VALUES (18, N'AP18.jpg', N'https://www.youtube.com/watch?v=xrLY0wO06l4', N'Quái vật', N'Phim quái vật với thông điệp về môi trường.', 18)
GO
INSERT [dbo].[HinhAnhTrailer] ([MaHAT], [DuongDanAnh], [DuongDanTrailer], [Loai], [MoTa], [MaPhim]) VALUES (19, N'AP19.jpg', N'https://www.youtube.com/watch?v=Fw3NAveg578', N'Kinh dị hài', N'Phim kinh dị hài về một gia đình và câu chuyện ma quái.', 19)
GO
INSERT [dbo].[HinhAnhTrailer] ([MaHAT], [DuongDanAnh], [DuongDanTrailer], [Loai], [MoTa], [MaPhim]) VALUES (20, N'AP20.jpg', N'https://www.youtube.com/watch?v=-RNI9o06vqo', N'Tiểu sử', N'Phim tiểu sử về hành trình tìm kiếm gia đình của một cậu bé ăn xin.', 20)
GO
INSERT [dbo].[HinhAnhTrailer] ([MaHAT], [DuongDanAnh], [DuongDanTrailer], [Loai], [MoTa], [MaPhim]) VALUES (21, N'AP21.jpg', N'https://www.youtube.com/watch?v=1GT1jFsNnPw', N'Hành động', N'Phim hành động về cuộc trả thù của một người cha.', 21)
GO
INSERT [dbo].[HinhAnhTrailer] ([MaHAT], [DuongDanAnh], [DuongDanTrailer], [Loai], [MoTa], [MaPhim]) VALUES (22, N'AP22.jpg', N'https://www.youtube.com/watch?v=vf3em6Nm05o', N'Tình cảm', N'Câu chuyện tình yêu cảm động giữa hai người trẻ.', 22)
GO
INSERT [dbo].[HinhAnhTrailer] ([MaHAT], [DuongDanAnh], [DuongDanTrailer], [Loai], [MoTa], [MaPhim]) VALUES (23, N'AP23.jpg', N'https://www.youtube.com/watch?v=38A__WT3-o0', N'Tội phạm', N'Trò chơi sinh tử giữa kẻ giết người hàng loạt và một người đàn ông.', 23)
GO
INSERT [dbo].[HinhAnhTrailer] ([MaHAT], [DuongDanAnh], [DuongDanTrailer], [Loai], [MoTa], [MaPhim]) VALUES (24, N'AP24.jpg', N'https://www.youtube.com/watch?v=GAq31U-fOS0', N'Võ thuật', N'Phim võ thuật cổ trang về cuộc chiến giành lại công lý.', 24)
GO
INSERT [dbo].[HinhAnhTrailer] ([MaHAT], [DuongDanAnh], [DuongDanTrailer], [Loai], [MoTa], [MaPhim]) VALUES (25, N'AP25.jpg', N'https://www.youtube.com/watch?v=ZilChxy-PM4', N'Hài hước', N'Câu chuyện về tình bạn cảm động giữa một quý tộc giàu có và người chăm sóc của ông.', 25)
GO
INSERT [dbo].[HinhAnhTrailer] ([MaHAT], [DuongDanAnh], [DuongDanTrailer], [Loai], [MoTa], [MaPhim]) VALUES (26, N'AP26.jpg', N'https://www.youtube.com/watch?v=82t6j056IcA', N'Tâm lý', N'Phim kinh dị tâm lý xoay quanh sự mất tích bí ẩn của một phụ nữ.', 26)
GO
INSERT [dbo].[HinhAnhTrailer] ([MaHAT], [DuongDanAnh], [DuongDanTrailer], [Loai], [MoTa], [MaPhim]) VALUES (27, N'AP27.jpg', N'https://www.youtube.com/watch?v=K0eDlFX9GMc', N'Hài hước', N'Phim hài về ba người bạn và câu chuyện về hệ thống giáo dục.', 27)
GO
INSERT [dbo].[HinhAnhTrailer] ([MaHAT], [DuongDanAnh], [DuongDanTrailer], [Loai], [MoTa], [MaPhim]) VALUES (28, N'AP28.jpg', N'https://www.youtube.com/watch?v=6BS27ngZtxg', N'Tâm lý', N'Phim trắng đen miêu tả cuộc sống của một gia đình trung lưu tại Mexico.', 28)
GO
INSERT [dbo].[HinhAnhTrailer] ([MaHAT], [DuongDanAnh], [DuongDanTrailer], [Loai], [MoTa], [MaPhim]) VALUES (29, N'AP29.jpg', N'https://www.youtube.com/watch?v=Wd5Pz8KJeU4', N'Chiến tranh', N'Tái hiện cuộc chiến giành độc lập của Algeria khỏi thực dân Pháp.', 29)
GO
INSERT [dbo].[HinhAnhTrailer] ([MaHAT], [DuongDanAnh], [DuongDanTrailer], [Loai], [MoTa], [MaPhim]) VALUES (30, N'AP30.jpg', N'https://www.youtube.com/watch?v=wBPBSroi_VE', N'Tâm lý', N'Phim nghệ thuật về cuộc sống và những biến cố của một gia đình trong chiến tranh.', 30)
GO
INSERT [dbo].[HoaDon] ([MaHD], [SoLuongVe], [SoLuongDA], [TongTienVe], [TongTienDA], [TongTienHD], [MaDA], [MaKH]) VALUES (1, 2, 1, CAST(200000.00 AS Decimal(18, 2)), CAST(50000.00 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), 1, 5)
GO
INSERT [dbo].[HoaDon] ([MaHD], [SoLuongVe], [SoLuongDA], [TongTienVe], [TongTienDA], [TongTienHD], [MaDA], [MaKH]) VALUES (2, 4, 2, CAST(800000.00 AS Decimal(18, 2)), CAST(300000.00 AS Decimal(18, 2)), CAST(1100000.00 AS Decimal(18, 2)), 2, 12)
GO
INSERT [dbo].[HoaDon] ([MaHD], [SoLuongVe], [SoLuongDA], [TongTienVe], [TongTienDA], [TongTienHD], [MaDA], [MaKH]) VALUES (3, 1, 1, CAST(100000.00 AS Decimal(18, 2)), CAST(20000.00 AS Decimal(18, 2)), CAST(120000.00 AS Decimal(18, 2)), 3, 7)
GO
INSERT [dbo].[HoaDon] ([MaHD], [SoLuongVe], [SoLuongDA], [TongTienVe], [TongTienDA], [TongTienHD], [MaDA], [MaKH]) VALUES (4, 3, 1, CAST(450000.00 AS Decimal(18, 2)), CAST(100000.00 AS Decimal(18, 2)), CAST(550000.00 AS Decimal(18, 2)), 4, 15)
GO
INSERT [dbo].[HoaDon] ([MaHD], [SoLuongVe], [SoLuongDA], [TongTienVe], [TongTienDA], [TongTienHD], [MaDA], [MaKH]) VALUES (5, 5, 0, CAST(1000000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(1000000.00 AS Decimal(18, 2)), 5, 9)
GO
INSERT [dbo].[HoaDon] ([MaHD], [SoLuongVe], [SoLuongDA], [TongTienVe], [TongTienDA], [TongTienHD], [MaDA], [MaKH]) VALUES (6, 2, 2, CAST(250000.00 AS Decimal(18, 2)), CAST(60000.00 AS Decimal(18, 2)), CAST(310000.00 AS Decimal(18, 2)), 6, 1)
GO
INSERT [dbo].[HoaDon] ([MaHD], [SoLuongVe], [SoLuongDA], [TongTienVe], [TongTienDA], [TongTienHD], [MaDA], [MaKH]) VALUES (7, 6, 0, CAST(1200000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(1200000.00 AS Decimal(18, 2)), 7, 2)
GO
INSERT [dbo].[HoaDon] ([MaHD], [SoLuongVe], [SoLuongDA], [TongTienVe], [TongTienDA], [TongTienHD], [MaDA], [MaKH]) VALUES (8, 3, 1, CAST(600000.00 AS Decimal(18, 2)), CAST(150000.00 AS Decimal(18, 2)), CAST(750000.00 AS Decimal(18, 2)), 8, 4)
GO
INSERT [dbo].[HoaDon] ([MaHD], [SoLuongVe], [SoLuongDA], [TongTienVe], [TongTienDA], [TongTienHD], [MaDA], [MaKH]) VALUES (9, 1, 1, CAST(150000.00 AS Decimal(18, 2)), CAST(30000.00 AS Decimal(18, 2)), CAST(180000.00 AS Decimal(18, 2)), 9, 3)
GO
INSERT [dbo].[HoaDon] ([MaHD], [SoLuongVe], [SoLuongDA], [TongTienVe], [TongTienDA], [TongTienHD], [MaDA], [MaKH]) VALUES (10, 2, 2, CAST(300000.00 AS Decimal(18, 2)), CAST(70000.00 AS Decimal(18, 2)), CAST(370000.00 AS Decimal(18, 2)), 10, 11)
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [Sdt], [GioiTinh], [MaTK], [NgaySinh]) VALUES (1, N'Nguyễn G', N'Hoàn Kiếm - Hà Nội', N'0123456101', N'Nam', 7, CAST(N'1996-11-10' AS Date))
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [Sdt], [GioiTinh], [MaTK], [NgaySinh]) VALUES (2, N'Trần H', N'Long Biên - Hà Nội', N'0123456102', N'Nữ', 8, CAST(N'1991-12-15' AS Date))
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [Sdt], [GioiTinh], [MaTK], [NgaySinh]) VALUES (3, N'Lê I', N'Liên Chiểu - Đà Nẵng', N'0123456103', N'Nam', 9, CAST(N'1989-01-20' AS Date))
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [Sdt], [GioiTinh], [MaTK], [NgaySinh]) VALUES (4, N'Phạm J', N'Thủ Đức - TP.HCM', N'0123456104', N'Nữ', 10, CAST(N'1994-02-25' AS Date))
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [Sdt], [GioiTinh], [MaTK], [NgaySinh]) VALUES (5, N'Hoàng K', N'Bắc Từ Liêm - Hà Nội', N'0123456105', N'Nam', 11, CAST(N'1990-03-01' AS Date))
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [Sdt], [GioiTinh], [MaTK], [NgaySinh]) VALUES (6, N'Nguyễn L', N'Quận 1 - TP.HCM', N'0123456106', N'Nữ', 12, CAST(N'1988-04-07' AS Date))
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [Sdt], [GioiTinh], [MaTK], [NgaySinh]) VALUES (7, N'Trần M', N'Hải Dương - Hải Dương', N'0123456107', N'Nam', 13, CAST(N'1992-05-12' AS Date))
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [Sdt], [GioiTinh], [MaTK], [NgaySinh]) VALUES (8, N'Lê N', N'Đống Đa - Hà Nội', N'0123456108', N'Nữ', 14, CAST(N'1993-06-18' AS Date))
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [Sdt], [GioiTinh], [MaTK], [NgaySinh]) VALUES (9, N'Phạm O', N'Đà Lạt - Lâm Đồng', N'0123456109', N'Nam', 15, CAST(N'1987-07-22' AS Date))
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [Sdt], [GioiTinh], [MaTK], [NgaySinh]) VALUES (10, N'Hoàng P', N'Nha Trang - Khánh Hòa', N'0123456110', N'Nữ', 16, CAST(N'1991-08-28' AS Date))
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [Sdt], [GioiTinh], [MaTK], [NgaySinh]) VALUES (11, N'Nguyễn Q', N'Vĩnh Yên - Vĩnh Phúc', N'0123456111', N'Nam', 17, CAST(N'1994-09-15' AS Date))
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [Sdt], [GioiTinh], [MaTK], [NgaySinh]) VALUES (12, N'Trần R', N'Thái Nguyên - Thái Nguyên', N'0123456112', N'Nữ', 18, CAST(N'1986-10-20' AS Date))
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [Sdt], [GioiTinh], [MaTK], [NgaySinh]) VALUES (13, N'Lê S', N'Đà Nẵng - Đà Nẵng', N'0123456113', N'Nam', 19, CAST(N'1990-11-05' AS Date))
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [Sdt], [GioiTinh], [MaTK], [NgaySinh]) VALUES (14, N'Phạm T', N'Nha Trang - Khánh Hòa', N'0123456114', N'Nữ', 20, CAST(N'1992-12-30' AS Date))
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [Sdt], [GioiTinh], [MaTK], [NgaySinh]) VALUES (15, N'Hoàng U', N'Phú Nhuận - TP.HCM', N'0123456115', N'Nam', 21, CAST(N'1985-01-14' AS Date))
GO
INSERT [dbo].[KhuyenMai] ([MaKM], [TenKM], [DieuKienKM], [HanKM], [MaPhim], [MaQL], [PhanTramKM]) VALUES (1, N'Giảm giá 10% cho nhóm', N'Hóa đơn trên 500000, số lượng vé >= 2', CAST(N'2024-12-31' AS Date), 1, 1, CAST(30.00 AS Decimal(5, 2)))
GO
INSERT [dbo].[KhuyenMai] ([MaKM], [TenKM], [DieuKienKM], [HanKM], [MaPhim], [MaQL], [PhanTramKM]) VALUES (2, N'Mua 1 tặng 1', N'Hóa đơn trên 300000', CAST(N'2024-11-30' AS Date), 2, 1, CAST(50.00 AS Decimal(5, 2)))
GO
INSERT [dbo].[KhuyenMai] ([MaKM], [TenKM], [DieuKienKM], [HanKM], [MaPhim], [MaQL], [PhanTramKM]) VALUES (3, N'Giảm giá 15% cho ngày thứ 3', N'Hóa đơn trên 400000', CAST(N'2024-11-01' AS Date), 4, 2, CAST(15.00 AS Decimal(5, 2)))
GO
INSERT [dbo].[KhuyenMai] ([MaKM], [TenKM], [DieuKienKM], [HanKM], [MaPhim], [MaQL], [PhanTramKM]) VALUES (4, N'Khuyến mãi cuối tuần', N'Hóa đơn trên 250000', CAST(N'2024-11-15' AS Date), 7, 4, CAST(10.00 AS Decimal(5, 2)))
GO
INSERT [dbo].[KhuyenMai] ([MaKM], [TenKM], [DieuKienKM], [HanKM], [MaPhim], [MaQL], [PhanTramKM]) VALUES (5, N'Giảm giá 30% cho nhóm bạn', N'Số lượng vé >= 4', CAST(N'2024-11-10' AS Date), 8, 4, CAST(10.00 AS Decimal(5, 2)))
GO
INSERT [dbo].[KhuyenMai] ([MaKM], [TenKM], [DieuKienKM], [HanKM], [MaPhim], [MaQL], [PhanTramKM]) VALUES (6, N'Khuyến mãi sinh nhật', N'Giảm giá 50% cho người có sinh nhật trong tháng', CAST(N'2024-12-31' AS Date), 9, 5, CAST(50.00 AS Decimal(5, 2)))
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (1, CAST(N'2024-10-31T19:00:00.000' AS DateTime), 1, 1)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (2, CAST(N'2024-10-31T20:30:00.000' AS DateTime), 1, 1)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (3, CAST(N'2024-10-31T22:00:00.000' AS DateTime), 1, 1)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (4, CAST(N'2024-10-30T19:15:00.000' AS DateTime), 1, 2)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (5, CAST(N'2024-10-30T20:00:00.000' AS DateTime), 1, 2)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (6, CAST(N'2024-10-30T21:10:00.000' AS DateTime), 1, 2)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (7, CAST(N'2024-10-20T19:30:00.000' AS DateTime), 1, 3)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (8, CAST(N'2024-10-20T20:45:00.000' AS DateTime), 1, 3)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (9, CAST(N'2024-10-20T22:00:00.000' AS DateTime), 1, 3)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (10, CAST(N'2024-10-21T19:00:00.000' AS DateTime), 1, 4)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (11, CAST(N'2024-10-21T20:15:00.000' AS DateTime), 1, 4)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (12, CAST(N'2024-10-21T22:00:00.000' AS DateTime), 1, 4)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (13, CAST(N'2024-10-31T19:00:00.000' AS DateTime), 1, 5)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (14, CAST(N'2024-10-31T20:30:00.000' AS DateTime), 1, 5)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (15, CAST(N'2024-10-31T22:00:00.000' AS DateTime), 1, 5)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (16, CAST(N'2024-10-30T19:00:00.000' AS DateTime), 1, 6)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (17, CAST(N'2024-10-30T20:30:00.000' AS DateTime), 1, 6)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (18, CAST(N'2024-10-30T22:00:00.000' AS DateTime), 1, 6)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (19, CAST(N'2024-10-21T19:00:00.000' AS DateTime), 1, 7)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (20, CAST(N'2024-10-21T20:30:00.000' AS DateTime), 1, 7)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (21, CAST(N'2024-10-21T22:00:00.000' AS DateTime), 1, 7)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (22, CAST(N'2024-10-20T19:00:00.000' AS DateTime), 1, 8)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (23, CAST(N'2024-10-20T20:30:00.000' AS DateTime), 1, 8)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (24, CAST(N'2024-10-20T22:00:00.000' AS DateTime), 1, 8)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (25, CAST(N'2024-10-25T19:00:00.000' AS DateTime), 1, 9)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (26, CAST(N'2024-10-25T20:30:00.000' AS DateTime), 1, 9)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (27, CAST(N'2024-10-25T22:00:00.000' AS DateTime), 1, 9)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (28, CAST(N'2024-10-26T19:00:00.000' AS DateTime), 1, 10)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (29, CAST(N'2024-10-26T20:30:00.000' AS DateTime), 1, 10)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (30, CAST(N'2024-10-26T22:00:00.000' AS DateTime), 1, 10)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (31, CAST(N'2024-10-25T19:00:00.000' AS DateTime), 2, 11)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (32, CAST(N'2024-10-25T20:30:00.000' AS DateTime), 2, 11)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (33, CAST(N'2024-10-25T22:15:00.000' AS DateTime), 2, 11)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (34, CAST(N'2024-10-26T19:00:00.000' AS DateTime), 2, 12)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (35, CAST(N'2024-10-26T20:30:00.000' AS DateTime), 2, 12)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (36, CAST(N'2024-10-26T22:00:00.000' AS DateTime), 2, 12)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (37, CAST(N'2024-10-22T19:00:00.000' AS DateTime), 2, 13)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (38, CAST(N'2024-10-22T20:30:00.000' AS DateTime), 2, 13)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (39, CAST(N'2024-10-22T22:00:00.000' AS DateTime), 2, 13)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (40, CAST(N'2024-10-23T19:00:00.000' AS DateTime), 2, 14)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (41, CAST(N'2024-10-23T20:30:00.000' AS DateTime), 2, 14)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (42, CAST(N'2024-10-23T22:00:00.000' AS DateTime), 2, 14)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (43, CAST(N'2024-10-23T19:45:00.000' AS DateTime), 2, 15)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (44, CAST(N'2024-10-23T20:50:00.000' AS DateTime), 2, 15)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (45, CAST(N'2024-10-23T22:00:00.000' AS DateTime), 2, 15)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (46, CAST(N'2024-10-24T19:30:00.000' AS DateTime), 3, 16)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (47, CAST(N'2024-10-24T20:30:00.000' AS DateTime), 3, 16)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (48, CAST(N'2024-10-24T22:00:00.000' AS DateTime), 3, 16)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (49, CAST(N'2024-10-26T19:30:00.000' AS DateTime), 3, 17)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (50, CAST(N'2024-10-26T20:30:00.000' AS DateTime), 3, 17)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (51, CAST(N'2024-10-26T22:00:00.000' AS DateTime), 3, 17)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (52, CAST(N'2024-10-27T19:00:00.000' AS DateTime), 3, 18)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (53, CAST(N'2024-10-27T20:30:00.000' AS DateTime), 3, 18)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (54, CAST(N'2024-10-27T22:00:00.000' AS DateTime), 3, 18)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (55, CAST(N'2024-10-28T19:00:00.000' AS DateTime), 3, 19)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (56, CAST(N'2024-10-29T20:30:00.000' AS DateTime), 3, 19)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (57, CAST(N'2024-10-29T22:00:00.000' AS DateTime), 3, 19)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (58, CAST(N'2024-10-28T19:00:00.000' AS DateTime), 3, 20)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (59, CAST(N'2024-10-28T20:30:00.000' AS DateTime), 3, 20)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (60, CAST(N'2024-10-26T22:00:00.000' AS DateTime), 3, 20)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (61, CAST(N'2024-10-26T22:00:00.000' AS DateTime), 4, 21)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (62, CAST(N'2024-10-26T22:00:00.000' AS DateTime), 4, 21)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (63, CAST(N'2024-10-26T22:00:00.000' AS DateTime), 4, 21)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (64, CAST(N'2024-10-26T22:00:00.000' AS DateTime), 4, 22)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (65, CAST(N'2024-10-26T22:00:00.000' AS DateTime), 4, 22)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (66, CAST(N'2024-10-26T22:00:00.000' AS DateTime), 4, 22)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (67, CAST(N'2024-10-26T22:00:00.000' AS DateTime), 4, 23)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (68, CAST(N'2024-10-26T22:00:00.000' AS DateTime), 4, 23)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (69, CAST(N'2024-10-26T22:00:00.000' AS DateTime), 4, 23)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (70, CAST(N'2024-10-26T22:00:00.000' AS DateTime), 4, 24)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (71, CAST(N'2024-10-26T22:00:00.000' AS DateTime), 4, 24)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (72, CAST(N'2024-10-26T22:00:00.000' AS DateTime), 4, 24)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (73, CAST(N'2024-10-20T22:00:00.000' AS DateTime), 4, 25)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (74, CAST(N'2024-10-20T22:00:00.000' AS DateTime), 4, 25)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (75, CAST(N'2024-10-20T22:00:00.000' AS DateTime), 4, 25)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (76, CAST(N'2024-10-20T22:00:00.000' AS DateTime), 4, 26)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (77, CAST(N'2024-10-20T22:00:00.000' AS DateTime), 4, 26)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (78, CAST(N'2024-10-20T22:00:00.000' AS DateTime), 4, 26)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (79, CAST(N'2024-10-20T22:00:00.000' AS DateTime), 4, 27)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (80, CAST(N'2024-10-20T22:00:00.000' AS DateTime), 4, 27)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (81, CAST(N'2024-10-20T22:00:00.000' AS DateTime), 4, 27)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (82, CAST(N'2024-10-26T22:00:00.000' AS DateTime), 4, 28)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (83, CAST(N'2024-10-26T22:00:00.000' AS DateTime), 4, 28)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (84, CAST(N'2024-10-26T22:00:00.000' AS DateTime), 4, 28)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (85, CAST(N'2024-10-26T22:00:00.000' AS DateTime), 4, 29)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (86, CAST(N'2024-10-26T22:00:00.000' AS DateTime), 4, 29)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (87, CAST(N'2024-10-26T22:00:00.000' AS DateTime), 4, 29)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (88, CAST(N'2024-10-26T22:00:00.000' AS DateTime), 4, 30)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (89, CAST(N'2024-10-26T22:00:00.000' AS DateTime), 4, 30)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaQL], [MaPC]) VALUES (90, CAST(N'2024-10-26T22:00:00.000' AS DateTime), 4, 30)
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [ThoiLuong], [DaoDien], [DoTuoi], [NuocSX], [MoTa], [MaTL]) VALUES (1, N'Inception', 148, N'Christopher Nolan', 13, N'Mỹ', N'Phim khoa học viễn tưởng với các cảnh hành động đỉnh cao.', 1)
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [ThoiLuong], [DaoDien], [DoTuoi], [NuocSX], [MoTa], [MaTL]) VALUES (2, N'Parasite', 132, N'Bong Joon Ho', 18, N'Hàn Quốc', N'Phim tâm lý xã hội về chênh lệch giàu nghèo.', 3)
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [ThoiLuong], [DaoDien], [DoTuoi], [NuocSX], [MoTa], [MaTL]) VALUES (3, N'Spirited Away', 125, N'Hayao Miyazaki', 13, N'Nhật Bản', N'Tác phẩm hoạt hình nổi tiếng về cuộc hành trình đầy phép thuật.', 5)
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [ThoiLuong], [DaoDien], [DoTuoi], [NuocSX], [MoTa], [MaTL]) VALUES (4, N'Amélie', 122, N'Jean-Pierre Jeunet', 12, N'Pháp', N'Phim hài lãng mạn về cuộc sống của cô gái Amélie.', 7)
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [ThoiLuong], [DaoDien], [DoTuoi], [NuocSX], [MoTa], [MaTL]) VALUES (5, N'The Handmaiden', 144, N'Park Chan Wook', 18, N'Hàn Quốc', N'Phim tâm lý hồi hộp với nhiều tình tiết bất ngờ.', 4)
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [ThoiLuong], [DaoDien], [DoTuoi], [NuocSX], [MoTa], [MaTL]) VALUES (6, N'Titanic', 195, N'James Cameron', 13, N'Mỹ', N'Chuyện tình lãng mạn giữa Jack và Rose trên con tàu Titanic.', 12)
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [ThoiLuong], [DaoDien], [DoTuoi], [NuocSX], [MoTa], [MaTL]) VALUES (7, N'Crouching Tiger, Hidden Dragon', 120, N'Ang Lee', 13, N'Trung Quốc', N'Phim võ thuật với các cảnh quay tuyệt đẹp.', 9)
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [ThoiLuong], [DaoDien], [DoTuoi], [NuocSX], [MoTa], [MaTL]) VALUES (8, N'Pans Labyrinth', 118, N'Guillermo del Toro', 16, N'Tây Ban Nha', N'Phim giả tưởng với yếu tố phép thuật trong bối cảnh chiến tranh.', 6)
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [ThoiLuong], [DaoDien], [DoTuoi], [NuocSX], [MoTa], [MaTL]) VALUES (9, N'The Dark Knight', 152, N'Christopher Nolan', 16, N'Mỹ', N'Phim siêu anh hùng với diễn xuất tuyệt vời của Heath Ledger.', 11)
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [ThoiLuong], [DaoDien], [DoTuoi], [NuocSX], [MoTa], [MaTL]) VALUES (10, N'Mad Max: Fury Road', 120, N'George Miller', 16, N'Úc', N'Phim hành động hậu tận thế với các pha rượt đuổi kịch tính.', 2)
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [ThoiLuong], [DaoDien], [DoTuoi], [NuocSX], [MoTa], [MaTL]) VALUES (11, N'The Godfather', 175, N'Francis Ford Coppola', 18, N'Mỹ', N'Phim kinh điển về thế giới mafia của Mỹ.', 11)
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [ThoiLuong], [DaoDien], [DoTuoi], [NuocSX], [MoTa], [MaTL]) VALUES (12, N'The Matrix', 136, N'Lana Wachowski', 16, N'Mỹ', N'Phim hành động khoa học viễn tưởng về thế giới ảo.', 1)
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [ThoiLuong], [DaoDien], [DoTuoi], [NuocSX], [MoTa], [MaTL]) VALUES (13, N'Tôi Thấy Hoa Vàng Trên Cỏ Xanh', 102, N'Victor Vũ', 13, N'Việt Nam', N'Phim tâm lý tình cảm về tuổi thơ và sự trưởng thành.', 3)
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [ThoiLuong], [DaoDien], [DoTuoi], [NuocSX], [MoTa], [MaTL]) VALUES (14, N'My Neighbor Totoro', 86, N'Hayao Miyazaki', 12, N'Nhật Bản', N'Phim hoạt hình với câu chuyện cảm động về tình bạn và gia đình.', 5)
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [ThoiLuong], [DaoDien], [DoTuoi], [NuocSX], [MoTa], [MaTL]) VALUES (15, N'Slumdog Millionaire', 120, N'Danny Boyle', 13, N'Anh', N'Phim về hành trình vượt khó và tham gia gameshow của một cậu bé Ấn Độ.', 13)
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [ThoiLuong], [DaoDien], [DoTuoi], [NuocSX], [MoTa], [MaTL]) VALUES (16, N'Intouchables', 112, N'Olivier Nakache', 13, N'Pháp', N'Câu chuyện hài hước và cảm động về tình bạn giữa một quý ông và người chăm sóc.', 8)
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [ThoiLuong], [DaoDien], [DoTuoi], [NuocSX], [MoTa], [MaTL]) VALUES (17, N'Kong: Skull Island', 118, N'Jordan Vogt-Roberts', 13, N'Mỹ', N'Phim phiêu lưu hành động về cuộc chiến của King Kong trên đảo đầu lâu.', 12)
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [ThoiLuong], [DaoDien], [DoTuoi], [NuocSX], [MoTa], [MaTL]) VALUES (18, N'The Host', 120, N'Bong Joon Ho', 16, N'Hàn Quốc', N'Phim quái vật với thông điệp về môi trường.', 4)
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [ThoiLuong], [DaoDien], [DoTuoi], [NuocSX], [MoTa], [MaTL]) VALUES (19, N'Lật Mặt 4: Nhà Có Khách', 90, N'Lý Hải', 13, N'Việt Nam', N'Phim kinh dị hài về một gia đình và câu chuyện ma quái.', 4)
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [ThoiLuong], [DaoDien], [DoTuoi], [NuocSX], [MoTa], [MaTL]) VALUES (20, N'Lion', 118, N'Garth Davis', 13, N'Úc', N'Phim tiểu sử về hành trình tìm kiếm gia đình của một cậu bé Ấn Độ.', 13)
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [ThoiLuong], [DaoDien], [DoTuoi], [NuocSX], [MoTa], [MaTL]) VALUES (21, N'Vengeance', 108, N'Johnnie To', 16, N'Hồng Kông', N'Phim hành động về cuộc trả thù của một người cha.', 2)
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [ThoiLuong], [DaoDien], [DoTuoi], [NuocSX], [MoTa], [MaTL]) VALUES (22, N'Thị xã trong tầm tay', 90, N'Đặng Nhật Minh', 13, N'Việt Nam', N'Phim tâm lý tình cảm của 2 bạn trẻ trong thời chiến.', 3)
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [ThoiLuong], [DaoDien], [DoTuoi], [NuocSX], [MoTa], [MaTL]) VALUES (23, N'No Country for Old Men', 122, N'Coen Brothers', 16, N'Mỹ', N'Trò chơi sinh tử giữa kẻ giết người hàng loạt và một người đàn ông.', 11)
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [ThoiLuong], [DaoDien], [DoTuoi], [NuocSX], [MoTa], [MaTL]) VALUES (24, N'Dragon Inn', 111, N'King Hu', 13, N'Trung Quốc', N'Phim võ thuật cổ trang về cuộc chiến giành lại công lý.', 9)
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [ThoiLuong], [DaoDien], [DoTuoi], [NuocSX], [MoTa], [MaTL]) VALUES (25, N'The Intouchables', 112, N'Olivier Nakache', 13, N'Pháp', N'Câu chuyện về tình bạn cảm động giữa một quý tộc giàu có và người chăm sóc của ông.', 8)
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [ThoiLuong], [DaoDien], [DoTuoi], [NuocSX], [MoTa], [MaTL]) VALUES (26, N'Gone Girl', 149, N'David Fincher', 18, N'Mỹ', N'Phim kinh dị tâm lý xoay quanh sự mất tích bí ẩn của một phụ nữ.', 3)
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [ThoiLuong], [DaoDien], [DoTuoi], [NuocSX], [MoTa], [MaTL]) VALUES (27, N'Three Idiots', 170, N'Rajkumar Hirani', 13, N'Ấn Độ', N'Phim hài về ba người bạn và câu chuyện về hệ thống giáo dục.', 8)
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [ThoiLuong], [DaoDien], [DoTuoi], [NuocSX], [MoTa], [MaTL]) VALUES (28, N'Roma', 135, N'Alfonso Cuarón', 16, N'Mexico', N'Phim trắng đen miêu tả cuộc sống của một gia đình trung lưu tại Mexico.', 3)
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [ThoiLuong], [DaoDien], [DoTuoi], [NuocSX], [MoTa], [MaTL]) VALUES (29, N'The Battle of Algiers', 121, N'Gillo Pontecorvo', 16, N'Ý', N'Tái hiện cuộc chiến giành độc lập của Algeria khỏi thực dân Pháp.', 10)
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [ThoiLuong], [DaoDien], [DoTuoi], [NuocSX], [MoTa], [MaTL]) VALUES (30, N'Sandy Lives', 95, N'Phan Đăng Di', 16, N'Việt Nam', N'Phim nghệ thuật về cuộc sống và những biến cố của một gia đình trong chiến tranh.', 3)
GO
INSERT [dbo].[PhongChieu] ([MaPC], [TenPC], [SucChua], [MaQL], [MaRP]) VALUES (1, N'Phòng 1', 100, 1, 1)
GO
INSERT [dbo].[PhongChieu] ([MaPC], [TenPC], [SucChua], [MaQL], [MaRP]) VALUES (2, N'Phòng 2', 120, 1, 1)
GO
INSERT [dbo].[PhongChieu] ([MaPC], [TenPC], [SucChua], [MaQL], [MaRP]) VALUES (3, N'Phòng 3', 150, 1, 1)
GO
INSERT [dbo].[PhongChieu] ([MaPC], [TenPC], [SucChua], [MaQL], [MaRP]) VALUES (4, N'Phòng 4', 200, 1, 1)
GO
INSERT [dbo].[PhongChieu] ([MaPC], [TenPC], [SucChua], [MaQL], [MaRP]) VALUES (5, N'Phòng 5', 180, 1, 1)
GO
INSERT [dbo].[PhongChieu] ([MaPC], [TenPC], [SucChua], [MaQL], [MaRP]) VALUES (6, N'Phòng 1', 100, 1, 2)
GO
INSERT [dbo].[PhongChieu] ([MaPC], [TenPC], [SucChua], [MaQL], [MaRP]) VALUES (7, N'Phòng 2', 120, 1, 2)
GO
INSERT [dbo].[PhongChieu] ([MaPC], [TenPC], [SucChua], [MaQL], [MaRP]) VALUES (8, N'Phòng 3', 150, 1, 2)
GO
INSERT [dbo].[PhongChieu] ([MaPC], [TenPC], [SucChua], [MaQL], [MaRP]) VALUES (9, N'Phòng 4', 200, 1, 2)
GO
INSERT [dbo].[PhongChieu] ([MaPC], [TenPC], [SucChua], [MaQL], [MaRP]) VALUES (10, N'Phòng 5', 180, 1, 2)
GO
INSERT [dbo].[PhongChieu] ([MaPC], [TenPC], [SucChua], [MaQL], [MaRP]) VALUES (11, N'Phòng 1', 100, 2, 3)
GO
INSERT [dbo].[PhongChieu] ([MaPC], [TenPC], [SucChua], [MaQL], [MaRP]) VALUES (12, N'Phòng 2', 120, 2, 3)
GO
INSERT [dbo].[PhongChieu] ([MaPC], [TenPC], [SucChua], [MaQL], [MaRP]) VALUES (13, N'Phòng 3', 150, 2, 3)
GO
INSERT [dbo].[PhongChieu] ([MaPC], [TenPC], [SucChua], [MaQL], [MaRP]) VALUES (14, N'Phòng 4', 200, 2, 3)
GO
INSERT [dbo].[PhongChieu] ([MaPC], [TenPC], [SucChua], [MaQL], [MaRP]) VALUES (15, N'Phòng 5', 180, 2, 3)
GO
INSERT [dbo].[PhongChieu] ([MaPC], [TenPC], [SucChua], [MaQL], [MaRP]) VALUES (16, N'Phòng 1', 100, 3, 4)
GO
INSERT [dbo].[PhongChieu] ([MaPC], [TenPC], [SucChua], [MaQL], [MaRP]) VALUES (17, N'Phòng 2', 120, 3, 4)
GO
INSERT [dbo].[PhongChieu] ([MaPC], [TenPC], [SucChua], [MaQL], [MaRP]) VALUES (18, N'Phòng 3', 150, 3, 4)
GO
INSERT [dbo].[PhongChieu] ([MaPC], [TenPC], [SucChua], [MaQL], [MaRP]) VALUES (19, N'Phòng 4', 200, 3, 4)
GO
INSERT [dbo].[PhongChieu] ([MaPC], [TenPC], [SucChua], [MaQL], [MaRP]) VALUES (20, N'Phòng 5', 180, 3, 4)
GO
INSERT [dbo].[PhongChieu] ([MaPC], [TenPC], [SucChua], [MaQL], [MaRP]) VALUES (21, N'Phòng 1', 100, 4, 5)
GO
INSERT [dbo].[PhongChieu] ([MaPC], [TenPC], [SucChua], [MaQL], [MaRP]) VALUES (22, N'Phòng 2', 120, 4, 5)
GO
INSERT [dbo].[PhongChieu] ([MaPC], [TenPC], [SucChua], [MaQL], [MaRP]) VALUES (23, N'Phòng 3', 150, 4, 5)
GO
INSERT [dbo].[PhongChieu] ([MaPC], [TenPC], [SucChua], [MaQL], [MaRP]) VALUES (24, N'Phòng 4', 200, 4, 5)
GO
INSERT [dbo].[PhongChieu] ([MaPC], [TenPC], [SucChua], [MaQL], [MaRP]) VALUES (25, N'Phòng 5', 180, 4, 5)
GO
INSERT [dbo].[PhongChieu] ([MaPC], [TenPC], [SucChua], [MaQL], [MaRP]) VALUES (26, N'Phòng 1', 100, 4, 6)
GO
INSERT [dbo].[PhongChieu] ([MaPC], [TenPC], [SucChua], [MaQL], [MaRP]) VALUES (27, N'Phòng 2', 120, 4, 6)
GO
INSERT [dbo].[PhongChieu] ([MaPC], [TenPC], [SucChua], [MaQL], [MaRP]) VALUES (28, N'Phòng 3', 150, 4, 6)
GO
INSERT [dbo].[PhongChieu] ([MaPC], [TenPC], [SucChua], [MaQL], [MaRP]) VALUES (29, N'Phòng 4', 200, 4, 6)
GO
INSERT [dbo].[PhongChieu] ([MaPC], [TenPC], [SucChua], [MaQL], [MaRP]) VALUES (30, N'Phòng 5', 180, 4, 6)
GO
INSERT [dbo].[PhongChieu] ([MaPC], [TenPC], [SucChua], [MaQL], [MaRP]) VALUES (31, N'Phòng 1', 100, 5, 7)
GO
INSERT [dbo].[PhongChieu] ([MaPC], [TenPC], [SucChua], [MaQL], [MaRP]) VALUES (32, N'Phòng 2', 120, 5, 7)
GO
INSERT [dbo].[PhongChieu] ([MaPC], [TenPC], [SucChua], [MaQL], [MaRP]) VALUES (33, N'Phòng 3', 150, 5, 7)
GO
INSERT [dbo].[PhongChieu] ([MaPC], [TenPC], [SucChua], [MaQL], [MaRP]) VALUES (34, N'Phòng 4', 200, 5, 7)
GO
INSERT [dbo].[PhongChieu] ([MaPC], [TenPC], [SucChua], [MaQL], [MaRP]) VALUES (35, N'Phòng 5', 180, 5, 7)
GO
INSERT [dbo].[PhongChieu] ([MaPC], [TenPC], [SucChua], [MaQL], [MaRP]) VALUES (36, N'Phòng 1', 100, 6, 8)
GO
INSERT [dbo].[PhongChieu] ([MaPC], [TenPC], [SucChua], [MaQL], [MaRP]) VALUES (37, N'Phòng 2', 120, 6, 8)
GO
INSERT [dbo].[PhongChieu] ([MaPC], [TenPC], [SucChua], [MaQL], [MaRP]) VALUES (38, N'Phòng 3', 150, 6, 8)
GO
INSERT [dbo].[PhongChieu] ([MaPC], [TenPC], [SucChua], [MaQL], [MaRP]) VALUES (39, N'Phòng 4', 200, 6, 8)
GO
INSERT [dbo].[PhongChieu] ([MaPC], [TenPC], [SucChua], [MaQL], [MaRP]) VALUES (40, N'Phòng 5', 180, 6, 8)
GO
INSERT [dbo].[QuanLy] ([MaQL], [HoTen], [DiaChi], [NgaySinh], [Sdt], [MaTK]) VALUES (1, N'Nguyễn Vân Anh', N'Cầu Giấy', CAST(N'1989-10-10' AS Date), N'0123456001', 1)
GO
INSERT [dbo].[QuanLy] ([MaQL], [HoTen], [DiaChi], [NgaySinh], [Sdt], [MaTK]) VALUES (2, N'Trần Thị Bình', N'Đương Láng', CAST(N'1991-12-05' AS Date), N'0123456002', 2)
GO
INSERT [dbo].[QuanLy] ([MaQL], [HoTen], [DiaChi], [NgaySinh], [Sdt], [MaTK]) VALUES (3, N'Lê Văn Công', N'Cầu Giấy', CAST(N'1994-02-25' AS Date), N'0123456003', 3)
GO
INSERT [dbo].[QuanLy] ([MaQL], [HoTen], [DiaChi], [NgaySinh], [Sdt], [MaTK]) VALUES (4, N'Phạm Thị Duyên', N'Phú Diễn', CAST(N'1996-12-30' AS Date), N'0123456004', 4)
GO
INSERT [dbo].[QuanLy] ([MaQL], [HoTen], [DiaChi], [NgaySinh], [Sdt], [MaTK]) VALUES (5, N'Hoàng Văn Em', N'Thanh Xuân', CAST(N'1991-11-09' AS Date), N'0123456005', 5)
GO
INSERT [dbo].[QuanLy] ([MaQL], [HoTen], [DiaChi], [NgaySinh], [Sdt], [MaTK]) VALUES (6, N'Nguyễn Thị Phương', N'Quan Hoa', CAST(N'1990-08-15' AS Date), N'0123456006', 6)
GO
INSERT [dbo].[RapPhim] ([MaRP], [TenRP], [DiaChi], [MoTa], [MaQL]) VALUES (1, N'CineStar Hòa Bình', N'182A Lê Thánh Tông, Quận Hai Bà Trưng, Hà Nội', N'Rạp chiếu phim hiện đại với nhiều phòng chiếu.', 1)
GO
INSERT [dbo].[RapPhim] ([MaRP], [TenRP], [DiaChi], [MoTa], [MaQL]) VALUES (2, N'Galaxy Nguyễn Du', N'116 Nguyễn Du, Quận Hai Bà Trưng, Hà Nội', N'Nơi tổ chức các buổi công chiếu phim lớn.', 1)
GO
INSERT [dbo].[RapPhim] ([MaRP], [TenRP], [DiaChi], [MoTa], [MaQL]) VALUES (3, N'Lotte Cinema Nguyễn Trãi', N'29 Nguyễn Trãi, Quận Thanh Xuân, Hà Nội', N'Rạp chiếu phim với ghế ngồi thoải mái.', 2)
GO
INSERT [dbo].[RapPhim] ([MaRP], [TenRP], [DiaChi], [MoTa], [MaQL]) VALUES (4, N'CGV Cinemas Vincom Mega Mall', N'234 Phạm Hùng, Quận Nam Từ Liêm, Hà Nội', N'Rạp chiếu phim với công nghệ âm thanh 3D.', 3)
GO
INSERT [dbo].[RapPhim] ([MaRP], [TenRP], [DiaChi], [MoTa], [MaQL]) VALUES (5, N'BHD Star Hà Nội', N'205 Trần Duy Hưng, Quận Cầu Giấy, Hà Nội', N'Rạp chiếu phim nổi tiếng với nhiều bộ phim hấp dẫn.', 4)
GO
INSERT [dbo].[RapPhim] ([MaRP], [TenRP], [DiaChi], [MoTa], [MaQL]) VALUES (6, N'Thang Long Cinema', N'1B Đinh Tiên Hoàng, Quận Hoàn Kiếm, Hà Nội', N'Rạp chiếu phim cổ điển với không gian ấm cúng.', 4)
GO
INSERT [dbo].[RapPhim] ([MaRP], [TenRP], [DiaChi], [MoTa], [MaQL]) VALUES (7, N'Mega GS Hà Nội', N'168 Trần Duy Hưng, Quận Cầu Giấy, Hà Nội', N'Rạp chiếu phim lớn với nhiều lựa chọn phim.', 5)
GO
INSERT [dbo].[RapPhim] ([MaRP], [TenRP], [DiaChi], [MoTa], [MaQL]) VALUES (8, N'Lotte Cinema 109', N'1 Trần Hưng Đạo, Quận Hoàn Kiếm, Hà Nội', N'Rạp chiếu phim sang trọng với dịch vụ tốt.', 6)
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [Username], [Password], [Email], [Sdt]) VALUES (1, N'nguyen.vana', N'managerPass1', N'nguyen.vana@example.com', N'0123456001')
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [Username], [Password], [Email], [Sdt]) VALUES (2, N'tran.thib', N'managerPass2', N'tran.thib@example.com', N'0123456002')
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [Username], [Password], [Email], [Sdt]) VALUES (3, N'le.vanc', N'managerPass3', N'le.vanc@example.com', N'0123456003')
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [Username], [Password], [Email], [Sdt]) VALUES (4, N'pham.thid', N'managerPass4', N'pham.thid@example.com', N'0123456004')
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [Username], [Password], [Email], [Sdt]) VALUES (5, N'hoang.vane', N'managerPass5', N'hoang.vane@example.com', N'0123456005')
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [Username], [Password], [Email], [Sdt]) VALUES (6, N'nguyen.thif', N'managerPass6', N'nguyen.thif@example.com', N'0123456006')
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [Username], [Password], [Email], [Sdt]) VALUES (7, N'nguyen.g', N'customerPass1', N'nguyen.g@example.com', N'0123456101')
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [Username], [Password], [Email], [Sdt]) VALUES (8, N'tran.h', N'customerPass2', N'tran.h@example.com', N'0123456102')
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [Username], [Password], [Email], [Sdt]) VALUES (9, N'le.i', N'customerPass3', N'le.i@example.com', N'0123456103')
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [Username], [Password], [Email], [Sdt]) VALUES (10, N'pham.j', N'customerPass4', N'pham.j@example.com', N'0123456104')
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [Username], [Password], [Email], [Sdt]) VALUES (11, N'hoang.k', N'customerPass5', N'hoang.k@example.com', N'0123456105')
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [Username], [Password], [Email], [Sdt]) VALUES (12, N'nguyen.l', N'customerPass6', N'nguyen.l@example.com', N'0123456106')
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [Username], [Password], [Email], [Sdt]) VALUES (13, N'tran.m', N'customerPass7', N'tran.m@example.com', N'0123456107')
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [Username], [Password], [Email], [Sdt]) VALUES (14, N'le.n', N'customerPass8', N'le.n@example.com', N'0123456108')
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [Username], [Password], [Email], [Sdt]) VALUES (15, N'pham.o', N'customerPass9', N'pham.o@example.com', N'0123456109')
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [Username], [Password], [Email], [Sdt]) VALUES (16, N'hoang.p', N'customerPass10', N'hoang.p@example.com', N'0123456110')
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [Username], [Password], [Email], [Sdt]) VALUES (17, N'nguyen.q', N'customerPass11', N'nguyen.q@example.com', N'0123456111')
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [Username], [Password], [Email], [Sdt]) VALUES (18, N'tran.r', N'customerPass12', N'tran.r@example.com', N'0123456112')
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [Username], [Password], [Email], [Sdt]) VALUES (19, N'le.s', N'customerPass13', N'le.s@example.com', N'0123456113')
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [Username], [Password], [Email], [Sdt]) VALUES (20, N'pham.t', N'customerPass14', N'pham.t@example.com', N'0123456114')
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [Username], [Password], [Email], [Sdt]) VALUES (21, N'hoang.u', N'customerPass15', N'hoang.u@example.com', N'0123456115')
GO
INSERT [dbo].[ThanhToan] ([MaTT], [HinhThucTT], [ThanhTien], [NgayTT], [MaHD]) VALUES (1, N'Tiền mặt', CAST(250000.00 AS Decimal(18, 2)), CAST(N'2024-10-31' AS Date), 1)
GO
INSERT [dbo].[ThanhToan] ([MaTT], [HinhThucTT], [ThanhTien], [NgayTT], [MaHD]) VALUES (2, N'Quẹt thẻ', CAST(1100000.00 AS Decimal(18, 2)), CAST(N'2024-10-31' AS Date), 2)
GO
INSERT [dbo].[ThanhToan] ([MaTT], [HinhThucTT], [ThanhTien], [NgayTT], [MaHD]) VALUES (3, N'Tiền mặt', CAST(120000.00 AS Decimal(18, 2)), CAST(N'2024-10-31' AS Date), 3)
GO
INSERT [dbo].[ThanhToan] ([MaTT], [HinhThucTT], [ThanhTien], [NgayTT], [MaHD]) VALUES (4, N'Chuyển khoản', CAST(550000.00 AS Decimal(18, 2)), CAST(N'2024-10-31' AS Date), 4)
GO
INSERT [dbo].[ThanhToan] ([MaTT], [HinhThucTT], [ThanhTien], [NgayTT], [MaHD]) VALUES (5, N'Quẹt thẻ', CAST(1000000.00 AS Decimal(18, 2)), CAST(N'2024-10-31' AS Date), 5)
GO
INSERT [dbo].[ThanhToan] ([MaTT], [HinhThucTT], [ThanhTien], [NgayTT], [MaHD]) VALUES (6, N'Chuyển khoản', CAST(310000.00 AS Decimal(18, 2)), CAST(N'2024-10-31' AS Date), 6)
GO
INSERT [dbo].[ThanhToan] ([MaTT], [HinhThucTT], [ThanhTien], [NgayTT], [MaHD]) VALUES (7, N'Tiền mặt', CAST(1200000.00 AS Decimal(18, 2)), CAST(N'2024-10-31' AS Date), 7)
GO
INSERT [dbo].[ThanhToan] ([MaTT], [HinhThucTT], [ThanhTien], [NgayTT], [MaHD]) VALUES (8, N'Tiền mặt', CAST(750000.00 AS Decimal(18, 2)), CAST(N'2024-10-31' AS Date), 8)
GO
INSERT [dbo].[ThanhToan] ([MaTT], [HinhThucTT], [ThanhTien], [NgayTT], [MaHD]) VALUES (9, N'Quẹt thẻ', CAST(180000.00 AS Decimal(18, 2)), CAST(N'2024-10-31' AS Date), 9)
GO
INSERT [dbo].[ThanhToan] ([MaTT], [HinhThucTT], [ThanhTien], [NgayTT], [MaHD]) VALUES (10, N'Chuyển khoản', CAST(370000.00 AS Decimal(18, 2)), CAST(N'2024-10-31' AS Date), 10)
GO
INSERT [dbo].[TheLoai] ([MaTL], [TenTheLoai], [MoTa]) VALUES (1, N'Khoa học viễn tưởng', N'Phim với các yếu tố viễn tưởng và công nghệ tương lai.')
GO
INSERT [dbo].[TheLoai] ([MaTL], [TenTheLoai], [MoTa]) VALUES (2, N'Hành động', N'Phim với nhiều cảnh hành động mãn nhãn.')
GO
INSERT [dbo].[TheLoai] ([MaTL], [TenTheLoai], [MoTa]) VALUES (3, N'Tâm lý', N'Phim tâm lý phức tạp với nhiều tình tiết gây bất ngờ.')
GO
INSERT [dbo].[TheLoai] ([MaTL], [TenTheLoai], [MoTa]) VALUES (4, N'Kinh dị', N'Phim mang yếu tố hồi hộp và căng thẳng.')
GO
INSERT [dbo].[TheLoai] ([MaTL], [TenTheLoai], [MoTa]) VALUES (5, N'Hoạt hình', N'Phim hoạt hình nổi tiếng với các yếu tố phép thuật.')
GO
INSERT [dbo].[TheLoai] ([MaTL], [TenTheLoai], [MoTa]) VALUES (6, N'Giả tưởng', N'Phim với yếu tố thần bí và kỳ ảo.')
GO
INSERT [dbo].[TheLoai] ([MaTL], [TenTheLoai], [MoTa]) VALUES (7, N'Lãng mạn', N'Phim về câu chuyện tình yêu nhẹ nhàng và kỳ lạ.')
GO
INSERT [dbo].[TheLoai] ([MaTL], [TenTheLoai], [MoTa]) VALUES (8, N'Hài hước', N'Phim mang yếu tố hài hước và nhẹ nhàng.')
GO
INSERT [dbo].[TheLoai] ([MaTL], [TenTheLoai], [MoTa]) VALUES (9, N'Võ thuật', N'Phim võ thuật với các cảnh chiến đấu đẹp mắt.')
GO
INSERT [dbo].[TheLoai] ([MaTL], [TenTheLoai], [MoTa]) VALUES (10, N'Chiến tranh', N'Phim về sự tác động của chiến tranh lên cuộc sống con người.')
GO
INSERT [dbo].[TheLoai] ([MaTL], [TenTheLoai], [MoTa]) VALUES (11, N'Tội phạm', N'Phim xoay quanh cuộc chiến chống tội phạm.')
GO
INSERT [dbo].[TheLoai] ([MaTL], [TenTheLoai], [MoTa]) VALUES (12, N'Phiêu lưu', N'Phim với yếu tố thần bí và phiêu lưu.')
GO
INSERT [dbo].[TheLoai] ([MaTL], [TenTheLoai], [MoTa]) VALUES (13, N'Tiểu sử', N'Phim dựa trên câu chuyện có thật.')
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaPhim], [MaLC], [MaGXP]) VALUES (1, CAST(100000.00 AS Decimal(18, 2)), 1, 10, 1, 11)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaPhim], [MaLC], [MaGXP]) VALUES (2, CAST(200000.00 AS Decimal(18, 2)), 2, 10, 34, 12)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaPhim], [MaLC], [MaGXP]) VALUES (3, CAST(100000.00 AS Decimal(18, 2)), 3, 15, 20, 14)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaPhim], [MaLC], [MaGXP]) VALUES (4, CAST(150000.00 AS Decimal(18, 2)), 4, 22, 10, 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaPhim], [MaLC], [MaGXP]) VALUES (5, CAST(200000.00 AS Decimal(18, 2)), 5, 4, 4, 2)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaPhim], [MaLC], [MaGXP]) VALUES (6, CAST(125000.00 AS Decimal(18, 2)), 6, 21, 40, 2)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaPhim], [MaLC], [MaGXP]) VALUES (7, CAST(200000.00 AS Decimal(18, 2)), 7, 30, 2, 43)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaPhim], [MaLC], [MaGXP]) VALUES (8, CAST(200000.00 AS Decimal(18, 2)), 8, 17, 66, 10)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaPhim], [MaLC], [MaGXP]) VALUES (9, CAST(150000.00 AS Decimal(18, 2)), 9, 17, 36, 20)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaPhim], [MaLC], [MaGXP]) VALUES (10, CAST(150000.00 AS Decimal(18, 2)), 10, 7, 6, 19)
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD FOREIGN KEY([MaPhim])
REFERENCES [dbo].[Phim] ([MaPhim])
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD FOREIGN KEY([MaTK])
REFERENCES [dbo].[TaiKhoan] ([MaTK])
GO
ALTER TABLE [dbo].[HinhAnhTrailer]  WITH CHECK ADD FOREIGN KEY([MaPhim])
REFERENCES [dbo].[Phim] ([MaPhim])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([MaDA])
REFERENCES [dbo].[DoAn] ([MaDA])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD FOREIGN KEY([MaTK])
REFERENCES [dbo].[TaiKhoan] ([MaTK])
GO
ALTER TABLE [dbo].[KhuyenMai]  WITH CHECK ADD FOREIGN KEY([MaPhim])
REFERENCES [dbo].[Phim] ([MaPhim])
GO
ALTER TABLE [dbo].[KhuyenMai]  WITH CHECK ADD FOREIGN KEY([MaQL])
REFERENCES [dbo].[QuanLy] ([MaQL])
GO
ALTER TABLE [dbo].[LichChieu]  WITH CHECK ADD FOREIGN KEY([MaPC])
REFERENCES [dbo].[PhongChieu] ([MaPC])
GO
ALTER TABLE [dbo].[LichChieu]  WITH CHECK ADD FOREIGN KEY([MaQL])
REFERENCES [dbo].[QuanLy] ([MaQL])
GO
ALTER TABLE [dbo].[Phim]  WITH CHECK ADD FOREIGN KEY([MaTL])
REFERENCES [dbo].[TheLoai] ([MaTL])
GO
ALTER TABLE [dbo].[PhongChieu]  WITH CHECK ADD FOREIGN KEY([MaQL])
REFERENCES [dbo].[QuanLy] ([MaQL])
GO
ALTER TABLE [dbo].[PhongChieu]  WITH CHECK ADD FOREIGN KEY([MaRP])
REFERENCES [dbo].[RapPhim] ([MaRP])
GO
ALTER TABLE [dbo].[QuanLy]  WITH CHECK ADD FOREIGN KEY([MaTK])
REFERENCES [dbo].[TaiKhoan] ([MaTK])
GO
ALTER TABLE [dbo].[RapPhim]  WITH CHECK ADD FOREIGN KEY([MaQL])
REFERENCES [dbo].[QuanLy] ([MaQL])
GO
ALTER TABLE [dbo].[ThanhToan]  WITH CHECK ADD FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[VeXemPhim]  WITH CHECK ADD FOREIGN KEY([MaLC])
REFERENCES [dbo].[LichChieu] ([MaLC])
GO
ALTER TABLE [dbo].[VeXemPhim]  WITH CHECK ADD FOREIGN KEY([MaPhim])
REFERENCES [dbo].[Phim] ([MaPhim])
GO
ALTER TABLE [dbo].[VeXemPhim]  WITH CHECK ADD  CONSTRAINT [FK_VeXemPhim_GheXemPhim] FOREIGN KEY([MaGXP])
REFERENCES [dbo].[GheXemPhim] ([MaGXP])
GO
ALTER TABLE [dbo].[VeXemPhim] CHECK CONSTRAINT [FK_VeXemPhim_GheXemPhim]
GO
