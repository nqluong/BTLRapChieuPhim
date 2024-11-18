USE [QuanLyRapPhim]
GO
/****** Object:  Table [dbo].[DanhGia]    Script Date: 11/18/2024 10:22:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhGia](
	[MaDG] [nvarchar](50) NOT NULL,
	[TenDG] [nvarchar](max) NULL,
	[NoiDung] [nvarchar](max) NULL,
	[ThoiGianDG] [datetime] NULL,
	[MaPhim] [nvarchar](50) NULL,
	[MaTK] [nvarchar](50) NULL,
 CONSTRAINT [PK_DanhGia] PRIMARY KEY CLUSTERED 
(
	[MaDG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GheXemPhim]    Script Date: 11/18/2024 10:22:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GheXemPhim](
	[MaGXP] [nvarchar](50) NOT NULL,
	[LoaiGhe] [nvarchar](max) NULL,
	[MaPC] [nvarchar](50) NULL,
	[Ghe] [int] NULL,
 CONSTRAINT [PK_GheXemPhim] PRIMARY KEY CLUSTERED 
(
	[MaGXP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HinhAnhTrailer]    Script Date: 11/18/2024 10:22:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HinhAnhTrailer](
	[MaHAT] [nvarchar](50) NOT NULL,
	[DuongDanAnh] [nvarchar](max) NULL,
	[DuongDanTrailer] [nvarchar](max) NULL,
	[MaPhim] [nvarchar](50) NULL,
 CONSTRAINT [PK_HinhAnhTrailer] PRIMARY KEY CLUSTERED 
(
	[MaHAT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 11/18/2024 10:22:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [nvarchar](50) NOT NULL,
	[TienTT] [decimal](18, 0) NULL,
	[NgayTT] [datetime] NULL,
	[MaGD] [nvarchar](max) NULL,
	[MaKH] [nvarchar](50) NULL,
	[HoTen] [nvarchar](max) NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 11/18/2024 10:22:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [nvarchar](50) NOT NULL,
	[HoTen] [nvarchar](max) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[MaTK] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhuyenMai]    Script Date: 11/18/2024 10:22:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuyenMai](
	[MaKM] [nvarchar](50) NOT NULL,
	[TenKM] [nvarchar](50) NULL,
	[DieuKienKM] [nvarchar](max) NULL,
	[HanKM] [date] NULL,
	[MaPhim] [nvarchar](50) NULL,
	[MaQL] [nvarchar](50) NULL,
	[PhanTramKM] [int] NULL,
 CONSTRAINT [PK_KhuyenMai] PRIMARY KEY CLUSTERED 
(
	[MaKM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichChieu]    Script Date: 11/18/2024 10:22:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichChieu](
	[MaLC] [nvarchar](50) NOT NULL,
	[ThoiGianChieu] [datetime] NULL,
	[MaPC] [nvarchar](50) NULL,
	[MaPhim] [nvarchar](50) NULL,
 CONSTRAINT [PK_LichChieu] PRIMARY KEY CLUSTERED 
(
	[MaLC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phim]    Script Date: 11/18/2024 10:22:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phim](
	[MaPhim] [nvarchar](50) NOT NULL,
	[TenPhim] [nvarchar](max) NULL,
	[ThoiLuong] [int] NULL,
	[DaoDien] [nvarchar](50) NULL,
	[DoTuoi] [int] NULL,
	[NuocSX] [nvarchar](50) NULL,
	[MoTa] [nvarchar](max) NULL,
	[MaTL] [nvarchar](50) NULL,
 CONSTRAINT [PK_Phim] PRIMARY KEY CLUSTERED 
(
	[MaPhim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhongChieu]    Script Date: 11/18/2024 10:22:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhongChieu](
	[MaPC] [nvarchar](50) NOT NULL,
	[TenPC] [nvarchar](50) NULL,
	[SucChua] [int] NULL,
	[MaRP] [nvarchar](50) NULL,
 CONSTRAINT [PK_PhongChieu] PRIMARY KEY CLUSTERED 
(
	[MaPC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuanLy]    Script Date: 11/18/2024 10:22:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuanLy](
	[MaQL] [nvarchar](50) NOT NULL,
	[HoTen] [nvarchar](max) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[SDT] [nvarchar](50) NULL,
	[MaTK] [nvarchar](50) NULL,
 CONSTRAINT [PK_QuanLY] PRIMARY KEY CLUSTERED 
(
	[MaQL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RapPhim]    Script Date: 11/18/2024 10:22:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RapPhim](
	[MaRP] [nvarchar](50) NOT NULL,
	[TenRP] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[MoTa] [nvarchar](max) NULL,
	[MaQL] [nvarchar](50) NULL,
 CONSTRAINT [PK_RapPhim] PRIMARY KEY CLUSTERED 
(
	[MaRP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 11/18/2024 10:22:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[MaTK] [nvarchar](50) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[SDT] [nvarchar](50) NULL,
	[LoaiTK] [int] NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[MaTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheLoai]    Script Date: 11/18/2024 10:22:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoai](
	[MaTL] [nvarchar](50) NOT NULL,
	[TenTheLoai] [nvarchar](50) NULL,
	[MoTa] [nvarchar](max) NULL,
 CONSTRAINT [PK_TheLoai] PRIMARY KEY CLUSTERED 
(
	[MaTL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VeXemPhim]    Script Date: 11/18/2024 10:22:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VeXemPhim](
	[MaVXP] [nvarchar](50) NOT NULL,
	[GiaVe] [decimal](18, 0) NULL,
	[MaHD] [nvarchar](50) NULL,
	[MaLC] [nvarchar](50) NULL,
	[MaGXP] [nvarchar](50) NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_VeXemPhim] PRIMARY KEY CLUSTERED 
(
	[MaVXP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaPhim], [MaTK]) VALUES (N'DG1', N'Bộ phim thật hay', N'Một bộ phim thực sự cuốn hút và đầy cảm xúc.', CAST(N'2023-10-01T10:00:00.000' AS DateTime), N'MP8', N'TK8')
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaPhim], [MaTK]) VALUES (N'DG10', N'Bộ phim tuyệt đẹp', N'Hình ảnh tuyệt đẹp và câu chuyện lôi cuốn.', CAST(N'2023-10-05T13:00:00.000' AS DateTime), N'MP14', N'TK14')
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaPhim], [MaTK]) VALUES (N'DG11', N'Bộ phim tâm lý', N'Khai thác sâu sắc tâm lý con người.', CAST(N'2023-10-06T18:00:00.000' AS DateTime), N'MP15', N'TK15')
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaPhim], [MaTK]) VALUES (N'DG12', N'Bộ phim thú vị', N'Những bài học tâm lý thú vị được rút ra.', CAST(N'2023-10-06T19:00:00.000' AS DateTime), N'MP16', N'TK16')
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaPhim], [MaTK]) VALUES (N'DG13', N'Bộ phim hành động', N'Hành động kịch tính không ngừng.', CAST(N'2023-10-07T08:00:00.000' AS DateTime), N'MP17', N'TK17')
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaPhim], [MaTK]) VALUES (N'DG14', N'Bộ phim kịch tính', N'Mỗi cảnh phim đều đầy kịch tính và bất ngờ.', CAST(N'2023-10-07T09:30:00.000' AS DateTime), N'MP18', N'TK18')
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaPhim], [MaTK]) VALUES (N'DG15', N'Bộ phim bí ẩn', N'Khán giả sẽ bị cuốn vào các tình tiết bí ẩn.', CAST(N'2023-10-08T10:00:00.000' AS DateTime), N'MP8', N'TK8')
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaPhim], [MaTK]) VALUES (N'DG16', N'Bộ phim gây cấn', N'Cảm giác hồi hộp không thể tả.', CAST(N'2023-10-08T11:00:00.000' AS DateTime), N'MP8', N'TK8')
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaPhim], [MaTK]) VALUES (N'DG17', N'Bộ phim lãng mạn', N'Một câu chuyện tình yêu ngọt ngào và sâu sắc.', CAST(N'2023-10-09T12:00:00.000' AS DateTime), N'MP9', N'TK9')
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaPhim], [MaTK]) VALUES (N'DG18', N'Bộ phim ngọt ngào', N'Tình yêu và những khoảnh khắc tuyệt đẹp.', CAST(N'2023-10-09T13:30:00.000' AS DateTime), N'MP9', N'TK9')
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaPhim], [MaTK]) VALUES (N'DG19', N'Bộ phim kinh dị', N'Một bộ phim đầy ám ảnh và hồi hộp.', CAST(N'2023-10-10T14:00:00.000' AS DateTime), N'MP10', N'TK10')
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaPhim], [MaTK]) VALUES (N'DG2', N'Bộ phim rất ấn tượng', N'Bộ phim này để lại ấn tượng sâu sắc trong lòng khán giả.', CAST(N'2023-10-01T11:00:00.000' AS DateTime), N'MP8', N'TK8')
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaPhim], [MaTK]) VALUES (N'DG20', N'Bộ phim đầy kịch tính', N'Cảm giác sợ hãi và lo âu liên tục.', CAST(N'2023-10-10T15:00:00.000' AS DateTime), N'MP10', N'TK10')
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaPhim], [MaTK]) VALUES (N'DG21', N'Bộ phim phiêu lưu', N'Những chuyến phiêu lưu đầy thú vị.', CAST(N'2023-10-11T16:00:00.000' AS DateTime), N'MP11', N'TK11')
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaPhim], [MaTK]) VALUES (N'DG22', N'Bộ phim khám phá', N'Khám phá những điều kỳ diệu của thế giới.', CAST(N'2023-10-11T17:30:00.000' AS DateTime), N'MP11', N'TK11')
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaPhim], [MaTK]) VALUES (N'DG23', N'Bộ phim siêu anh hùng', N'Cuộc chiến của các siêu anh hùng.', CAST(N'2023-10-12T08:00:00.000' AS DateTime), N'MP12', N'TK12')
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaPhim], [MaTK]) VALUES (N'DG24', N'Bộ phim đầy hành động', N'Những pha hành động gay cấn và hấp dẫn.', CAST(N'2023-10-12T09:00:00.000' AS DateTime), N'MP12', N'TK12')
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaPhim], [MaTK]) VALUES (N'DG25', N'Bộ phim chiến tranh', N'Những trận chiến ác liệt và bi tráng.', CAST(N'2023-10-13T10:00:00.000' AS DateTime), N'MP13', N'TK13')
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaPhim], [MaTK]) VALUES (N'DG26', N'Bộ phim lịch sử', N'Khám phá những trang sử hào hùng.', CAST(N'2023-10-13T11:00:00.000' AS DateTime), N'MP13', N'TK13')
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaPhim], [MaTK]) VALUES (N'DG27', N'Bộ phim gia đình', N'Giá trị của tình thân và sự sẻ chia.', CAST(N'2023-10-14T12:00:00.000' AS DateTime), N'MP14', N'TK14')
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaPhim], [MaTK]) VALUES (N'DG28', N'Bộ phim về gia đình', N'Câu chuyện về tình cảm gia đình ấm áp.', CAST(N'2023-10-14T13:00:00.000' AS DateTime), N'MP14', N'TK14')
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaPhim], [MaTK]) VALUES (N'DG29', N'Bộ phim hoạt hình', N'Thế giới đầy màu sắc dành cho trẻ em.', CAST(N'2023-10-15T14:00:00.000' AS DateTime), N'MP15', N'TK15')
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaPhim], [MaTK]) VALUES (N'DG3', N'Bộ phim cảm động', N'Nỗi đau và niềm vui hòa quyện trong bộ phim này.', CAST(N'2023-10-02T09:00:00.000' AS DateTime), N'MP9', N'TK9')
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaPhim], [MaTK]) VALUES (N'DG30', N'Bộ phim vui nhộn cho trẻ', N'Hài hước và giải trí cho cả gia đình.', CAST(N'2023-10-15T15:00:00.000' AS DateTime), N'MP15', N'TK15')
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaPhim], [MaTK]) VALUES (N'DG31', N'Bộ phim cổ tích', N'Mang lại cảm giác trở về tuổi thơ.', CAST(N'2023-10-16T16:00:00.000' AS DateTime), N'MP16', N'TK16')
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaPhim], [MaTK]) VALUES (N'DG32', N'Bộ phim kỳ diệu', N'Câu chuyện cổ tích đầy màu sắc và mơ mộng.', CAST(N'2023-10-16T17:30:00.000' AS DateTime), N'MP16', N'TK16')
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaPhim], [MaTK]) VALUES (N'DG33', N'Bộ phim thể thao', N'Câu chuyện về niềm đam mê thể thao.', CAST(N'2023-10-17T08:00:00.000' AS DateTime), N'MP17', N'TK17')
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaPhim], [MaTK]) VALUES (N'DG34', N'Bộ phim cảm hứng', N'Truyền cảm hứng và động lực cho mọi người.', CAST(N'2023-10-17T09:00:00.000' AS DateTime), N'MP17', N'TK17')
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaPhim], [MaTK]) VALUES (N'DG35', N'Bộ phim tâm linh', N'Khám phá các khía cạnh tâm linh sâu sắc.', CAST(N'2023-10-18T10:00:00.000' AS DateTime), N'MP18', N'TK18')
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaPhim], [MaTK]) VALUES (N'DG36', N'Bộ phim huyền bí', N'Mang đến những câu chuyện huyền bí lôi cuốn.', CAST(N'2023-10-18T11:00:00.000' AS DateTime), N'MP18', N'TK18')
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaPhim], [MaTK]) VALUES (N'DG37', N'Bộ phim du lịch', N'Khám phá những vùng đất mới.', CAST(N'2023-10-19T12:00:00.000' AS DateTime), N'MP19', N'TK19')
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaPhim], [MaTK]) VALUES (N'DG38', N'Bộ phim văn hóa', N'Tìm hiểu về văn hóa của các quốc gia.', CAST(N'2023-10-19T13:00:00.000' AS DateTime), N'MP19', N'TK19')
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaPhim], [MaTK]) VALUES (N'DG39', N'Bộ phim khoa học viễn tưởng', N'Những câu chuyện đầy trí tưởng tượng về tương lai.', CAST(N'2023-10-20T14:00:00.000' AS DateTime), N'MP20', N'TK20')
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaPhim], [MaTK]) VALUES (N'DG4', N'Bộ phim thật tuyệt vời', N'Một câu chuyện tình yêu đầy cảm xúc.', CAST(N'2023-10-02T10:30:00.000' AS DateTime), N'MP8', N'TK8')
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaPhim], [MaTK]) VALUES (N'DG40', N'Bộ phim tương lai', N'Khám phá công nghệ và những điều kỳ diệu của tương lai.', CAST(N'2023-10-20T15:00:00.000' AS DateTime), N'MP20', N'TK20')
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaPhim], [MaTK]) VALUES (N'DG5', N'Bộ phim rùng rợn', N'Một trải nghiệm kinh dị thực sự không thể quên.', CAST(N'2023-10-03T14:00:00.000' AS DateTime), N'MP9', N'TK9')
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaPhim], [MaTK]) VALUES (N'DG6', N'Bộ phim hồi hộp', N'Hồi hộp từ đầu đến cuối, không thể rời mắt.', CAST(N'2023-10-03T15:00:00.000' AS DateTime), N'MP10', N'TK10')
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaPhim], [MaTK]) VALUES (N'DG7', N'Bộ phim hài hước', N'Cười không ngừng với bộ phim này.', CAST(N'2023-10-04T16:00:00.000' AS DateTime), N'MP11', N'TK11')
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaPhim], [MaTK]) VALUES (N'DG8', N'Bộ phim vui nhộn', N'Một bộ phim với nhiều tình huống hài hước.', CAST(N'2023-10-04T17:30:00.000' AS DateTime), N'MP12', N'TK12')
GO
INSERT [dbo].[DanhGia] ([MaDG], [TenDG], [NoiDung], [ThoiGianDG], [MaPhim], [MaTK]) VALUES (N'DG9', N'Bộ phim kỳ ảo', N'Khám phá những thế giới huyền bí.', CAST(N'2023-10-05T12:00:00.000' AS DateTime), N'MP13', N'TK13')
GO
INSERT [dbo].[HinhAnhTrailer] ([MaHAT], [DuongDanAnh], [DuongDanTrailer], [MaPhim]) VALUES (N'HAT1', N'AP1.jpg', N'Trailer 1.mp4', N'MP1')
GO
INSERT [dbo].[HinhAnhTrailer] ([MaHAT], [DuongDanAnh], [DuongDanTrailer], [MaPhim]) VALUES (N'HAT10', N'AP10.jpg', N'Trailer 10.mp4', N'MP10')
GO
INSERT [dbo].[HinhAnhTrailer] ([MaHAT], [DuongDanAnh], [DuongDanTrailer], [MaPhim]) VALUES (N'HAT11', N'AP11.jpg', N'Trailer 11.mp4', N'MP11')
GO
INSERT [dbo].[HinhAnhTrailer] ([MaHAT], [DuongDanAnh], [DuongDanTrailer], [MaPhim]) VALUES (N'HAT12', N'AP12.jpg', N'Trailer 12.mp4', N'MP12')
GO
INSERT [dbo].[HinhAnhTrailer] ([MaHAT], [DuongDanAnh], [DuongDanTrailer], [MaPhim]) VALUES (N'HAT13', N'AP13.jpg', N'Trailer 13.mp4', N'MP13')
GO
INSERT [dbo].[HinhAnhTrailer] ([MaHAT], [DuongDanAnh], [DuongDanTrailer], [MaPhim]) VALUES (N'HAT14', N'AP14.jpg', N'Trailer 14.mp4', N'MP14')
GO
INSERT [dbo].[HinhAnhTrailer] ([MaHAT], [DuongDanAnh], [DuongDanTrailer], [MaPhim]) VALUES (N'HAT15', N'AP15.jpg', N'Trailer 15.mp4', N'MP15')
GO
INSERT [dbo].[HinhAnhTrailer] ([MaHAT], [DuongDanAnh], [DuongDanTrailer], [MaPhim]) VALUES (N'HAT16', N'AP16.jpg', N'Trailer 16.mp4', N'MP16')
GO
INSERT [dbo].[HinhAnhTrailer] ([MaHAT], [DuongDanAnh], [DuongDanTrailer], [MaPhim]) VALUES (N'HAT17', N'AP17.jpg', N'Trailer 17.mp4', N'MP17')
GO
INSERT [dbo].[HinhAnhTrailer] ([MaHAT], [DuongDanAnh], [DuongDanTrailer], [MaPhim]) VALUES (N'HAT18', N'AP18.jpg', N'Trailer 18.mp4', N'MP18')
GO
INSERT [dbo].[HinhAnhTrailer] ([MaHAT], [DuongDanAnh], [DuongDanTrailer], [MaPhim]) VALUES (N'HAT19', N'AP19.jpg', N'Trailer 19.mp4', N'MP19')
GO
INSERT [dbo].[HinhAnhTrailer] ([MaHAT], [DuongDanAnh], [DuongDanTrailer], [MaPhim]) VALUES (N'HAT2', N'AP2.jpg', N'Trailer 2.mp4', N'MP2')
GO
INSERT [dbo].[HinhAnhTrailer] ([MaHAT], [DuongDanAnh], [DuongDanTrailer], [MaPhim]) VALUES (N'HAT20', N'AP20.jpg', N'Trailer 10.mp4', N'MP20')
GO
INSERT [dbo].[HinhAnhTrailer] ([MaHAT], [DuongDanAnh], [DuongDanTrailer], [MaPhim]) VALUES (N'HAT3', N'AP3.jpg', N'Trailer 3.mp4', N'MP3')
GO
INSERT [dbo].[HinhAnhTrailer] ([MaHAT], [DuongDanAnh], [DuongDanTrailer], [MaPhim]) VALUES (N'HAT4', N'AP4.jpg', N'Trailer 4.mp4', N'MP4')
GO
INSERT [dbo].[HinhAnhTrailer] ([MaHAT], [DuongDanAnh], [DuongDanTrailer], [MaPhim]) VALUES (N'HAT5', N'AP5.jpg', N'Trailer 5.mp4', N'MP5')
GO
INSERT [dbo].[HinhAnhTrailer] ([MaHAT], [DuongDanAnh], [DuongDanTrailer], [MaPhim]) VALUES (N'HAT6', N'AP6.jpg', N'Trailer 6.mp4', N'MP6')
GO
INSERT [dbo].[HinhAnhTrailer] ([MaHAT], [DuongDanAnh], [DuongDanTrailer], [MaPhim]) VALUES (N'HAT7', N'AP7.jpg', N'Trailer 7.mp4', N'MP7')
GO
INSERT [dbo].[HinhAnhTrailer] ([MaHAT], [DuongDanAnh], [DuongDanTrailer], [MaPhim]) VALUES (N'HAT8', N'AP8.jpg', N'Trailer 8.mp4', N'MP8')
GO
INSERT [dbo].[HinhAnhTrailer] ([MaHAT], [DuongDanAnh], [DuongDanTrailer], [MaPhim]) VALUES (N'HAT9', N'AP9.jpg', N'Trailer 9.mp4', N'MP9')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD1       ', CAST(400000 AS Decimal(18, 0)), CAST(N'2024-11-11T00:00:00.000' AS DateTime), N'GD1       ', N'KH1       ', N'Nguyễn G  ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD10      ', CAST(100000 AS Decimal(18, 0)), CAST(N'2024-11-11T00:00:00.000' AS DateTime), N'GD10      ', N'KH10      ', N'Hoàng P   ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD11      ', CAST(100000 AS Decimal(18, 0)), CAST(N'2024-11-11T00:00:00.000' AS DateTime), N'GD11      ', N'KH11      ', N'Nguyễn Q  ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD12      ', CAST(100000 AS Decimal(18, 0)), CAST(N'2024-11-11T00:00:00.000' AS DateTime), N'GD12      ', N'KH12      ', N'Trần R    ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD13      ', CAST(1000000 AS Decimal(18, 0)), CAST(N'2024-11-11T00:00:00.000' AS DateTime), N'GD13      ', N'KH13      ', N'Lê S      ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD14      ', CAST(400000 AS Decimal(18, 0)), CAST(N'2024-11-11T00:00:00.000' AS DateTime), N'GD14      ', N'KH14      ', N'Phạm T    ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD15      ', CAST(200000 AS Decimal(18, 0)), CAST(N'2024-11-11T00:00:00.000' AS DateTime), N'GD15      ', N'KH15      ', N'Hoàng U   ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD16      ', CAST(1000000 AS Decimal(18, 0)), CAST(N'2024-11-12T00:00:00.000' AS DateTime), N'GD16      ', N'KH1       ', N'Nguyễn G  ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD17      ', CAST(300000 AS Decimal(18, 0)), CAST(N'2024-11-12T00:00:00.000' AS DateTime), N'GD17      ', N'KH2       ', N'Trần H    ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD18      ', CAST(800000 AS Decimal(18, 0)), CAST(N'2024-11-12T00:00:00.000' AS DateTime), N'GD18      ', N'KH3       ', N'Lê I      ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD19      ', CAST(600000 AS Decimal(18, 0)), CAST(N'2024-11-12T00:00:00.000' AS DateTime), N'GD19      ', N'KH4       ', N'Phạm J    ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD2       ', CAST(600000 AS Decimal(18, 0)), CAST(N'2024-11-11T00:00:00.000' AS DateTime), N'GD2       ', N'KH2       ', N'Trần H    ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD20      ', CAST(200000 AS Decimal(18, 0)), CAST(N'2024-11-12T00:00:00.000' AS DateTime), N'GD20      ', N'KH5       ', N'Hoàng K   ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD21      ', CAST(200000 AS Decimal(18, 0)), CAST(N'2024-11-12T00:00:00.000' AS DateTime), N'GD21      ', N'KH6       ', N'Nguyễn L  ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD22      ', CAST(200000 AS Decimal(18, 0)), CAST(N'2024-11-12T00:00:00.000' AS DateTime), N'GD22      ', N'KH7       ', N'Trần M    ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD23      ', CAST(200000 AS Decimal(18, 0)), CAST(N'2024-11-12T00:00:00.000' AS DateTime), N'GD23      ', N'KH8       ', N'Lê N      ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD24      ', CAST(200000 AS Decimal(18, 0)), CAST(N'2024-11-12T00:00:00.000' AS DateTime), N'GD24      ', N'KH9       ', N'Phạm O    ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD25      ', CAST(200000 AS Decimal(18, 0)), CAST(N'2024-11-12T00:00:00.000' AS DateTime), N'GD25      ', N'KH10      ', N'Hoàng P   ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD26      ', CAST(200000 AS Decimal(18, 0)), CAST(N'2024-11-12T00:00:00.000' AS DateTime), N'GD26      ', N'KH11      ', N'Nguyễn Q  ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD27      ', CAST(200000 AS Decimal(18, 0)), CAST(N'2024-11-12T00:00:00.000' AS DateTime), N'GD27      ', N'KH12      ', N'Trần R    ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD28      ', CAST(200000 AS Decimal(18, 0)), CAST(N'2024-11-12T00:00:00.000' AS DateTime), N'GD28      ', N'KH13      ', N'Lê S      ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD29      ', CAST(200000 AS Decimal(18, 0)), CAST(N'2024-11-12T00:00:00.000' AS DateTime), N'GD29      ', N'KH14      ', N'Phạm T    ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD3       ', CAST(200000 AS Decimal(18, 0)), CAST(N'2024-11-11T00:00:00.000' AS DateTime), N'GD3       ', N'KH3       ', N'Lê I      ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD30      ', CAST(200000 AS Decimal(18, 0)), CAST(N'2024-11-12T00:00:00.000' AS DateTime), N'GD30      ', N'KH15      ', N'Hoàng U   ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD31      ', CAST(2000000 AS Decimal(18, 0)), CAST(N'2024-11-13T00:00:00.000' AS DateTime), N'GD31      ', N'KH1       ', N'Nguyễn G  ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD32      ', CAST(2000000 AS Decimal(18, 0)), CAST(N'2024-11-13T00:00:00.000' AS DateTime), N'GD32      ', N'KH2       ', N'Trần H    ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD33      ', CAST(2300000 AS Decimal(18, 0)), CAST(N'2024-11-13T00:00:00.000' AS DateTime), N'GD33      ', N'KH3       ', N'Lê I      ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD34      ', CAST(500000 AS Decimal(18, 0)), CAST(N'2024-11-13T00:00:00.000' AS DateTime), N'GD34      ', N'KH4       ', N'Phạm J    ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD35      ', CAST(1000000 AS Decimal(18, 0)), CAST(N'2024-11-13T00:00:00.000' AS DateTime), N'GD35      ', N'KH5       ', N'Hoàng K   ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD36      ', CAST(200000 AS Decimal(18, 0)), CAST(N'2024-11-13T00:00:00.000' AS DateTime), N'GD36      ', N'KH6       ', N'Nguyễn L  ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD37      ', CAST(100000 AS Decimal(18, 0)), CAST(N'2024-11-13T00:00:00.000' AS DateTime), N'GD37      ', N'KH7       ', N'Trần M    ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD38      ', CAST(100000 AS Decimal(18, 0)), CAST(N'2024-11-13T00:00:00.000' AS DateTime), N'GD38      ', N'KH8       ', N'Lê N      ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD39      ', CAST(100000 AS Decimal(18, 0)), CAST(N'2024-11-13T00:00:00.000' AS DateTime), N'GD39      ', N'KH9       ', N'Phạm O    ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD4       ', CAST(500000 AS Decimal(18, 0)), CAST(N'2024-11-11T00:00:00.000' AS DateTime), N'GD4       ', N'KH4       ', N'Phạm J    ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD40      ', CAST(100000 AS Decimal(18, 0)), CAST(N'2024-11-13T00:00:00.000' AS DateTime), N'GD40      ', N'KH10      ', N'Hoàng P   ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD41      ', CAST(200000 AS Decimal(18, 0)), CAST(N'2024-11-14T00:00:00.000' AS DateTime), N'GD41      ', N'KH11      ', N'Nguyễn Q  ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD42      ', CAST(200000 AS Decimal(18, 0)), CAST(N'2024-11-14T00:00:00.000' AS DateTime), N'GD42      ', N'KH12      ', N'Trần R    ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD43      ', CAST(200000 AS Decimal(18, 0)), CAST(N'2024-11-14T00:00:00.000' AS DateTime), N'GD43      ', N'KH13      ', N'Lê S      ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD44      ', CAST(200000 AS Decimal(18, 0)), CAST(N'2024-11-14T00:00:00.000' AS DateTime), N'GD44      ', N'KH14      ', N'Phạm T    ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD45      ', CAST(600000 AS Decimal(18, 0)), CAST(N'2024-11-14T00:00:00.000' AS DateTime), N'GD45      ', N'KH15      ', N'Hoàng U   ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD46      ', CAST(200000 AS Decimal(18, 0)), CAST(N'2024-11-15T00:00:00.000' AS DateTime), N'GD46      ', N'KH1       ', N'Nguyễn G  ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD47      ', CAST(200000 AS Decimal(18, 0)), CAST(N'2024-11-15T00:00:00.000' AS DateTime), N'GD47      ', N'KH2       ', N'Trần H    ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD48      ', CAST(200000 AS Decimal(18, 0)), CAST(N'2024-11-15T00:00:00.000' AS DateTime), N'GD48      ', N'KH3       ', N'Lê I      ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD49      ', CAST(200000 AS Decimal(18, 0)), CAST(N'2024-11-15T00:00:00.000' AS DateTime), N'GD49      ', N'KH4       ', N'Phạm J    ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD5       ', CAST(400000 AS Decimal(18, 0)), CAST(N'2024-11-11T00:00:00.000' AS DateTime), N'GD5       ', N'KH5       ', N'Hoàng K   ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD50      ', CAST(200000 AS Decimal(18, 0)), CAST(N'2024-11-15T00:00:00.000' AS DateTime), N'GD50      ', N'KH5       ', N'Hoàng K   ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD51      ', CAST(200000 AS Decimal(18, 0)), CAST(N'2024-11-15T00:00:00.000' AS DateTime), N'GD51      ', N'KH6       ', N'Nguyễn L  ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD52      ', CAST(200000 AS Decimal(18, 0)), CAST(N'2024-11-15T00:00:00.000' AS DateTime), N'GD52      ', N'KH7       ', N'Trần M    ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD53      ', CAST(200000 AS Decimal(18, 0)), CAST(N'2024-11-15T00:00:00.000' AS DateTime), N'GD53      ', N'KH8       ', N'Lê N      ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD54      ', CAST(200000 AS Decimal(18, 0)), CAST(N'2024-11-15T00:00:00.000' AS DateTime), N'GD54      ', N'KH9       ', N'Phạm O    ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD55      ', CAST(200000 AS Decimal(18, 0)), CAST(N'2024-11-15T00:00:00.000' AS DateTime), N'GD55      ', N'KH10      ', N'Hoàng P   ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD56      ', CAST(200000 AS Decimal(18, 0)), CAST(N'2024-11-15T00:00:00.000' AS DateTime), N'GD56      ', N'KH11      ', N'Nguyễn Q  ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD57      ', CAST(100000 AS Decimal(18, 0)), CAST(N'2024-11-15T00:00:00.000' AS DateTime), N'GD57      ', N'KH12      ', N'Trần R    ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD58      ', CAST(200000 AS Decimal(18, 0)), CAST(N'2024-11-15T00:00:00.000' AS DateTime), N'GD58      ', N'KH13      ', N'Lê S      ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD59      ', CAST(200000 AS Decimal(18, 0)), CAST(N'2024-11-15T00:00:00.000' AS DateTime), N'GD59      ', N'KH14      ', N'Phạm T    ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD6       ', CAST(200000 AS Decimal(18, 0)), CAST(N'2024-11-11T00:00:00.000' AS DateTime), N'GD6       ', N'KH6       ', N'Nguyễn L  ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD60      ', CAST(200000 AS Decimal(18, 0)), CAST(N'2024-11-15T00:00:00.000' AS DateTime), N'GD60      ', N'KH15      ', N'Hoàng U   ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD61      ', CAST(100000 AS Decimal(18, 0)), CAST(N'2024-11-19T00:00:00.000' AS DateTime), N'GD61      ', N'KH1       ', N'Nguyễn G  ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD62      ', CAST(100000 AS Decimal(18, 0)), CAST(N'2024-11-19T00:00:00.000' AS DateTime), N'GD62      ', N'KH2       ', N'Trần H    ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD63      ', CAST(100000 AS Decimal(18, 0)), CAST(N'2024-11-19T00:00:00.000' AS DateTime), N'GD63      ', N'KH3       ', N'Lê I      ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD64      ', CAST(100000 AS Decimal(18, 0)), CAST(N'2024-11-19T00:00:00.000' AS DateTime), N'GD64      ', N'KH4       ', N'Phạm J    ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD65      ', CAST(100000 AS Decimal(18, 0)), CAST(N'2024-11-19T00:00:00.000' AS DateTime), N'GD65      ', N'KH5       ', N'Hoàng K   ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD7       ', CAST(400000 AS Decimal(18, 0)), CAST(N'2024-11-11T00:00:00.000' AS DateTime), N'GD7       ', N'KH7       ', N'Trần M    ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD8       ', CAST(300000 AS Decimal(18, 0)), CAST(N'2024-11-11T00:00:00.000' AS DateTime), N'GD8       ', N'KH8       ', N'Lê N      ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TienTT], [NgayTT], [MaGD], [MaKH], [HoTen]) VALUES (N'HD9       ', CAST(100000 AS Decimal(18, 0)), CAST(N'2024-11-11T00:00:00.000' AS DateTime), N'GD9       ', N'KH9       ', N'Phạm O    ')
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [SDT], [GioiTinh], [MaTK], [NgaySinh]) VALUES (N'KH1', N'Nguyễn G', N'Hoàn Kiếm - Hà Nội', N'0123456101', N'Nam', N'TK7', CAST(N'1996-11-10' AS Date))
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [SDT], [GioiTinh], [MaTK], [NgaySinh]) VALUES (N'KH10', N'Hoàng P', N'Nha Trang - Khánh Hòa', N'0123456110', N'Nữ', N'TK16', CAST(N'1991-08-28' AS Date))
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [SDT], [GioiTinh], [MaTK], [NgaySinh]) VALUES (N'KH11', N'Nguyễn Q', N'Vĩnh Yên - Vĩnh Phúc', N'0123456111', N'Nam', N'TK17', CAST(N'1994-09-15' AS Date))
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [SDT], [GioiTinh], [MaTK], [NgaySinh]) VALUES (N'KH12', N'Trần R', N'Thái Nguyên - Thái Nguyên', N'0123456112', N'Nữ', N'TK18', CAST(N'1986-10-20' AS Date))
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [SDT], [GioiTinh], [MaTK], [NgaySinh]) VALUES (N'KH13', N'Lê S', N'Đà Nẵng - Đà Nẵng', N'0123456113', N'Nam', N'TK19', CAST(N'1990-11-05' AS Date))
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [SDT], [GioiTinh], [MaTK], [NgaySinh]) VALUES (N'KH14', N'Phạm T', N'Nha Trang - Khánh Hòa', N'0123456114', N'Nữ', N'TK20', CAST(N'1992-12-30' AS Date))
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [SDT], [GioiTinh], [MaTK], [NgaySinh]) VALUES (N'KH15', N'Hoàng U', N'Phú Nhuận - TP.HCM', N'0123456115', N'Nam', N'TK21', CAST(N'1985-01-14' AS Date))
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [SDT], [GioiTinh], [MaTK], [NgaySinh]) VALUES (N'KH2', N'Trần H', N'Long Biên - Hà Nội', N'0123456102', N'Nữ', N'TK8', CAST(N'1991-12-15' AS Date))
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [SDT], [GioiTinh], [MaTK], [NgaySinh]) VALUES (N'KH3', N'Lê I', N'Liên Chiểu - Đà Nẵng', N'0123456103', N'Nam', N'TK9', CAST(N'1989-01-20' AS Date))
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [SDT], [GioiTinh], [MaTK], [NgaySinh]) VALUES (N'KH4', N'Phạm J', N'Thủ Đức - TP.HCM', N'0123456104', N'Nữ', N'TK10', CAST(N'1994-02-25' AS Date))
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [SDT], [GioiTinh], [MaTK], [NgaySinh]) VALUES (N'KH5', N'Hoàng K', N'Bắc Từ Liêm - Hà Nội', N'0123456105', N'Nam', N'TK11', CAST(N'1990-03-01' AS Date))
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [SDT], [GioiTinh], [MaTK], [NgaySinh]) VALUES (N'KH6', N'Nguyễn L', N'Quận 1 - TP.HCM', N'0123456106', N'Nữ', N'TK12', CAST(N'1988-04-07' AS Date))
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [SDT], [GioiTinh], [MaTK], [NgaySinh]) VALUES (N'KH7', N'Trần M', N'Hải Dương - Hải Dương', N'0123456107', N'Nam', N'TK13', CAST(N'1992-05-12' AS Date))
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [SDT], [GioiTinh], [MaTK], [NgaySinh]) VALUES (N'KH8', N'Lê N', N'Đống Đa - Hà Nội', N'0123456108', N'Nữ', N'TK14', CAST(N'1993-06-18' AS Date))
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [SDT], [GioiTinh], [MaTK], [NgaySinh]) VALUES (N'KH9', N'Phạm O', N'Đà Lạt - Lâm Đồng', N'0123456109', N'Nam', N'TK15', CAST(N'1987-07-22' AS Date))
GO
INSERT [dbo].[KhuyenMai] ([MaKM], [TenKM], [DieuKienKM], [HanKM], [MaPhim], [MaQL], [PhanTramKM]) VALUES (N'KM1', N'Giảm giá 10% cho nhóm', N'Hóa đơn trên 500000, số lượng vé >= 2', CAST(N'2024-12-31' AS Date), N'MP1', N'QL1', 30)
GO
INSERT [dbo].[KhuyenMai] ([MaKM], [TenKM], [DieuKienKM], [HanKM], [MaPhim], [MaQL], [PhanTramKM]) VALUES (N'KM2', N'Mua 1 tặng 1', N'Hóa đơn trên 300000', CAST(N'2024-11-30' AS Date), N'MP2', N'QL1', 50)
GO
INSERT [dbo].[KhuyenMai] ([MaKM], [TenKM], [DieuKienKM], [HanKM], [MaPhim], [MaQL], [PhanTramKM]) VALUES (N'KM3', N'Giảm giá 15% cho ngày thứ 3', N'Hóa đơn trên 400000', CAST(N'2024-11-01' AS Date), N'MP4', N'QL1', 15)
GO
INSERT [dbo].[KhuyenMai] ([MaKM], [TenKM], [DieuKienKM], [HanKM], [MaPhim], [MaQL], [PhanTramKM]) VALUES (N'KM4', N'Khuyến mãi cuối tuần', N'Hóa đơn trên 250000', CAST(N'2024-11-15' AS Date), N'MP7', N'QL1', 10)
GO
INSERT [dbo].[KhuyenMai] ([MaKM], [TenKM], [DieuKienKM], [HanKM], [MaPhim], [MaQL], [PhanTramKM]) VALUES (N'KM5', N'Giảm giá 30% cho nhóm bạn', N'Số lượng vé >= 4', CAST(N'2024-11-10' AS Date), N'MP8', N'QL1', 10)
GO
INSERT [dbo].[KhuyenMai] ([MaKM], [TenKM], [DieuKienKM], [HanKM], [MaPhim], [MaQL], [PhanTramKM]) VALUES (N'KM6', N'Khuyến mãi sinh nhật', N'Giảm giá 50% cho người có sinh nhật trong tháng', CAST(N'2024-12-31' AS Date), N'MP9', N'QL1', 50)
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC1', CAST(N'2024-11-11T19:00:00.000' AS DateTime), N'PC1', N'MP1')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC10', CAST(N'2024-11-11T20:20:00.000' AS DateTime), N'PC5', N'MP10')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC11', CAST(N'2024-11-12T19:15:00.000' AS DateTime), N'PC1', N'MP11')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC12', CAST(N'2024-11-12T19:15:00.000' AS DateTime), N'PC2', N'MP12')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC13', CAST(N'2024-11-12T19:15:00.000' AS DateTime), N'PC3', N'MP13')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC14', CAST(N'2024-11-12T19:15:00.000' AS DateTime), N'PC4', N'MP14')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC15', CAST(N'2024-11-12T19:15:00.000' AS DateTime), N'PC5', N'MP15')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC16', CAST(N'2024-11-12T21:15:00.000' AS DateTime), N'PC1', N'MP16')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC17', CAST(N'2024-11-12T21:15:00.000' AS DateTime), N'PC2', N'MP17')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC18', CAST(N'2024-11-12T21:15:00.000' AS DateTime), N'PC3', N'MP18')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC19', CAST(N'2024-11-12T21:15:00.000' AS DateTime), N'PC4', N'MP19')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC2', CAST(N'2024-11-11T19:00:00.000' AS DateTime), N'PC2', N'MP2')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC20', CAST(N'2024-11-12T21:15:00.000' AS DateTime), N'PC5', N'MP20')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC21', CAST(N'2024-11-13T19:00:00.000' AS DateTime), N'PC1', N'MP1')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC22', CAST(N'2024-11-13T19:00:00.000' AS DateTime), N'PC2', N'MP2')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC23', CAST(N'2024-11-13T19:00:00.000' AS DateTime), N'PC3', N'MP3')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC24', CAST(N'2024-11-13T19:00:00.000' AS DateTime), N'PC4', N'MP4')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC25', CAST(N'2024-11-13T19:00:00.000' AS DateTime), N'PC5', N'MP5')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC26', CAST(N'2024-11-13T21:00:00.000' AS DateTime), N'PC1', N'MP6')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC27', CAST(N'2024-11-13T21:00:00.000' AS DateTime), N'PC2', N'MP7')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC28', CAST(N'2024-11-13T21:00:00.000' AS DateTime), N'PC3', N'MP8')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC29', CAST(N'2024-11-13T21:00:00.000' AS DateTime), N'PC4', N'MP9')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC3', CAST(N'2024-11-11T19:00:00.000' AS DateTime), N'PC3', N'MP3')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC30', CAST(N'2024-11-13T21:00:00.000' AS DateTime), N'PC5', N'MP10')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC31', CAST(N'2024-11-14T19:10:00.000' AS DateTime), N'PC1', N'MP11')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC32', CAST(N'2024-11-14T19:10:00.000' AS DateTime), N'PC2', N'MP12')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC33', CAST(N'2024-11-14T19:10:00.000' AS DateTime), N'PC3', N'MP13')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC34', CAST(N'2024-11-14T19:10:00.000' AS DateTime), N'PC4', N'MP14')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC35', CAST(N'2024-11-14T19:10:00.000' AS DateTime), N'PC5', N'MP15')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC36', CAST(N'2024-11-14T22:10:00.000' AS DateTime), N'PC1', N'MP16')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC37', CAST(N'2024-11-14T22:10:00.000' AS DateTime), N'PC2', N'MP17')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC38', CAST(N'2024-11-14T22:10:00.000' AS DateTime), N'PC3', N'MP18')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC39', CAST(N'2024-11-14T22:10:00.000' AS DateTime), N'PC4', N'MP19')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC4', CAST(N'2024-11-11T19:00:00.000' AS DateTime), N'PC4', N'MP4')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC40', CAST(N'2024-11-14T22:10:00.000' AS DateTime), N'PC5', N'MP20')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC41', CAST(N'2024-11-15T20:30:00.000' AS DateTime), N'PC1', N'MP4')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC42', CAST(N'2024-11-15T20:30:00.000' AS DateTime), N'PC2', N'MP5')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC43', CAST(N'2024-11-15T20:30:00.000' AS DateTime), N'PC3', N'MP6')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC44', CAST(N'2024-11-15T20:30:00.000' AS DateTime), N'PC4', N'MP7')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC45', CAST(N'2024-11-15T20:30:00.000' AS DateTime), N'PC5', N'MP8')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC46', CAST(N'2024-11-15T21:40:00.000' AS DateTime), N'PC1', N'MP9')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC47', CAST(N'2024-11-15T21:40:00.000' AS DateTime), N'PC2', N'MP10')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC48', CAST(N'2024-11-15T21:40:00.000' AS DateTime), N'PC3', N'MP11')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC49', CAST(N'2024-11-15T21:40:00.000' AS DateTime), N'PC4', N'MP12')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC5', CAST(N'2024-11-11T19:00:00.000' AS DateTime), N'PC5', N'MP5')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC50', CAST(N'2024-11-15T21:40:00.000' AS DateTime), N'PC5', N'MP13')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC51', CAST(N'2024-11-18T19:40:00.000' AS DateTime), N'PC1', N'MP1')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC52', CAST(N'2024-11-18T19:40:00.000' AS DateTime), N'PC2', N'MP2')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC53', CAST(N'2024-11-18T19:40:00.000' AS DateTime), N'PC3', N'MP3')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC54', CAST(N'2024-11-18T19:40:00.000' AS DateTime), N'PC4', N'MP4')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC55', CAST(N'2024-11-18T19:40:00.000' AS DateTime), N'PC5', N'MP5')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC56', CAST(N'2024-11-18T21:00:00.000' AS DateTime), N'PC1', N'MP6')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC57', CAST(N'2024-11-18T21:00:00.000' AS DateTime), N'PC2', N'MP7')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC58', CAST(N'2024-11-18T21:00:00.000' AS DateTime), N'PC3', N'MP8')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC59', CAST(N'2024-11-18T21:00:00.000' AS DateTime), N'PC4', N'MP9')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC6', CAST(N'2024-11-11T20:20:00.000' AS DateTime), N'PC1', N'MP6')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC60', CAST(N'2024-11-18T21:00:00.000' AS DateTime), N'PC5', N'MP10')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC61', CAST(N'2024-11-19T20:30:00.000' AS DateTime), N'PC1', N'MP11')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC62', CAST(N'2024-11-19T20:30:00.000' AS DateTime), N'PC2', N'MP12')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC63', CAST(N'2024-11-19T20:30:00.000' AS DateTime), N'PC3', N'MP13')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC64', CAST(N'2024-11-19T20:30:00.000' AS DateTime), N'PC4', N'MP14')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC65', CAST(N'2024-11-19T20:30:00.000' AS DateTime), N'PC5', N'MP15')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC66', CAST(N'2024-11-19T21:45:00.000' AS DateTime), N'PC1', N'MP16')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC67', CAST(N'2024-11-19T21:45:00.000' AS DateTime), N'PC2', N'MP17')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC68', CAST(N'2024-11-19T21:45:00.000' AS DateTime), N'PC3', N'MP18')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC69', CAST(N'2024-11-19T21:45:00.000' AS DateTime), N'PC4', N'MP19')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC7', CAST(N'2024-11-11T20:20:00.000' AS DateTime), N'PC2', N'MP7')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC70', CAST(N'2024-11-19T21:45:00.000' AS DateTime), N'PC5', N'MP20')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC71', CAST(N'2024-11-20T19:45:00.000' AS DateTime), N'PC1', N'MP1')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC72', CAST(N'2024-11-20T19:45:00.000' AS DateTime), N'PC2', N'MP2')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC73', CAST(N'2024-11-20T19:45:00.000' AS DateTime), N'PC3', N'MP3')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC74', CAST(N'2024-11-20T19:45:00.000' AS DateTime), N'PC4', N'MP4')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC75', CAST(N'2024-11-20T19:45:00.000' AS DateTime), N'PC5', N'MP5')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC76', CAST(N'2024-11-20T20:55:00.000' AS DateTime), N'PC1', N'MP6')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC77', CAST(N'2024-11-20T20:55:00.000' AS DateTime), N'PC2', N'MP7')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC78', CAST(N'2024-11-20T20:55:00.000' AS DateTime), N'PC3', N'MP8')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC79', CAST(N'2024-11-20T20:55:00.000' AS DateTime), N'PC4', N'MP9')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC8', CAST(N'2024-11-11T20:20:00.000' AS DateTime), N'PC3', N'MP8')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC80', CAST(N'2024-11-20T20:55:00.000' AS DateTime), N'PC5', N'MP10')
GO
INSERT [dbo].[LichChieu] ([MaLC], [ThoiGianChieu], [MaPC], [MaPhim]) VALUES (N'LC9', CAST(N'2024-11-11T20:20:00.000' AS DateTime), N'PC4', N'MP9')
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [ThoiLuong], [DaoDien], [DoTuoi], [NuocSX], [MoTa], [MaTL]) VALUES (N'MP1', N'Inception', 148, N'Christopher Nolan', 13, N'Mỹ', N'Phim khoa học viễn tưởng với các cảnh hành động đỉnh cao.', N'TL1')
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [ThoiLuong], [DaoDien], [DoTuoi], [NuocSX], [MoTa], [MaTL]) VALUES (N'MP10', N'Mad Max: Fury Road', 120, N'George Miller', 16, N'Úc', N'Phim hành động hậu tận thế với các pha rượt đuổi kịch tính.', N'TL2')
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [ThoiLuong], [DaoDien], [DoTuoi], [NuocSX], [MoTa], [MaTL]) VALUES (N'MP11', N'The Godfather', 175, N'Francis Ford Coppola', 18, N'Mỹ', N'Phim kinh điển về thế giới mafia của Mỹ.', N'TL11')
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [ThoiLuong], [DaoDien], [DoTuoi], [NuocSX], [MoTa], [MaTL]) VALUES (N'MP12', N'The Matrix', 136, N'Lana Wachowski', 16, N'Mỹ', N'Phim hành động khoa học viễn tưởng về thế giới ảo.', N'TL1')
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [ThoiLuong], [DaoDien], [DoTuoi], [NuocSX], [MoTa], [MaTL]) VALUES (N'MP13', N'Tôi Thấy Hoa Vàng Trên Cỏ Xanh', 102, N'Victor Vũ', 13, N'Việt Nam', N'Phim tâm lý tình cảm về tuổi thơ và sự trưởng thành.', N'TL3')
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [ThoiLuong], [DaoDien], [DoTuoi], [NuocSX], [MoTa], [MaTL]) VALUES (N'MP14', N'Ròm', 79, N'Tran Thanh Huy', 16, N'Việt Nam', N'Câu chuyện về một cậu bé bán vé số và cuộc sống nghèo khó nơi đô thị.', N'TL3')
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [ThoiLuong], [DaoDien], [DoTuoi], [NuocSX], [MoTa], [MaTL]) VALUES (N'MP15', N'Lật Mặt 6: Tấm Vé Định Mệnh', 112, N'Lý Hải', 16, N'Việt Nam', N'Câu chuyện kịch tính về tình bạn và lòng tham khi trúng vé số.', N'TL3')
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [ThoiLuong], [DaoDien], [DoTuoi], [NuocSX], [MoTa], [MaTL]) VALUES (N'MP16', N'Cô Gái Đến Từ Hôm Qua', 120, N'Phan Gia Nhật Linh', 13, N'Việt Nam', N'Một chuyện tình học trò nhẹ nhàng và hoài niệm từ tác phẩm của Nguyễn Nhật Ánh.', N'TL7')
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [ThoiLuong], [DaoDien], [DoTuoi], [NuocSX], [MoTa], [MaTL]) VALUES (N'MP17', N'Bố Già', 128, N'Trấn Thành', 13, N'Việt Nam', N'Câu chuyện về tình cảm gia đình và những giá trị cuộc sống.', N'TL8')
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [ThoiLuong], [DaoDien], [DoTuoi], [NuocSX], [MoTa], [MaTL]) VALUES (N'MP18', N'Mắt Biếc', 124, N'Victor Vũ', 13, N'Việt Nam', N'Một câu chuyện tình yêu đầy hoài niệm dựa trên tiểu thuyết Nguyễn Nhật Ánh.', N'TL7')
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [ThoiLuong], [DaoDien], [DoTuoi], [NuocSX], [MoTa], [MaTL]) VALUES (N'MP19', N'Tiệc Trăng Máu', 120, N'Nguyễn Quang Dũng', 16, N'Việt Nam', N'Tình bạn bị thử thách khi những bí mật được tiết lộ trong bữa tiệc.', N'TL8')
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [ThoiLuong], [DaoDien], [DoTuoi], [NuocSX], [MoTa], [MaTL]) VALUES (N'MP2', N'Parasite', 132, N'Bong Joon Ho', 18, N'Hàn Quốc', N'Phim tâm lý xã hội về chênh lệch giàu nghèo.', N'TL3')
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [ThoiLuong], [DaoDien], [DoTuoi], [NuocSX], [MoTa], [MaTL]) VALUES (N'MP20', N'Em và Trịnh', 136, N'Phan Gia Nhật Linh', 13, N'Việt Nam', N'Tái hiện cuộc đời và tình yêu của cố nhạc sĩ Trịnh Công Sơn.', N'TL13')
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [ThoiLuong], [DaoDien], [DoTuoi], [NuocSX], [MoTa], [MaTL]) VALUES (N'MP3', N'Spirited Away', 125, N'Hayao Miyazaki', 13, N'Nhật Bản', N'Tác phẩm hoạt hình nổi tiếng về cuộc hành trình đầy phép thuật.', N'TL5')
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [ThoiLuong], [DaoDien], [DoTuoi], [NuocSX], [MoTa], [MaTL]) VALUES (N'MP4', N'Amélie', 122, N'Jean-Pierre Jeunet', 12, N'Pháp', N'Phim hài lãng mạn về cuộc sống của cô gái Amélie.', N'TL7')
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [ThoiLuong], [DaoDien], [DoTuoi], [NuocSX], [MoTa], [MaTL]) VALUES (N'MP5', N'The Handmaiden', 144, N'Park Chan Wook', 18, N'Hàn Quốc', N'Phim tâm lý hồi hộp với nhiều tình tiết bất ngờ.', N'TL4')
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [ThoiLuong], [DaoDien], [DoTuoi], [NuocSX], [MoTa], [MaTL]) VALUES (N'MP6', N'Titanic', 195, N'James Cameron', 13, N'Mỹ', N'Chuyện tình lãng mạn giữa Jack và Rose trên con tàu Titanic.', N'TL12')
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [ThoiLuong], [DaoDien], [DoTuoi], [NuocSX], [MoTa], [MaTL]) VALUES (N'MP7', N'Crouching Tiger, Hidden Dragon', 120, N'Ang Lee', 13, N'Trung Quốc', N'Phim võ thuật với các cảnh quay tuyệt đẹp.', N'TL9')
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [ThoiLuong], [DaoDien], [DoTuoi], [NuocSX], [MoTa], [MaTL]) VALUES (N'MP8', N'Pans Labyrinth', 118, N'Guillermo del Toro', 16, N'Tây Ban Nha', N'Phim giả tưởng với yếu tố phép thuật trong bối cảnh chiến tranh.', N'TL6')
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [ThoiLuong], [DaoDien], [DoTuoi], [NuocSX], [MoTa], [MaTL]) VALUES (N'MP9', N'The Dark Knight', 152, N'Christopher Nolan', 16, N'Mỹ', N'Phim siêu anh hùng với diễn xuất tuyệt vời của Heath Ledger.', N'TL11')
GO
INSERT [dbo].[PhongChieu] ([MaPC], [TenPC], [SucChua], [MaRP]) VALUES (N'PC1', N'Phòng 1', 30, N'RP1')
GO
INSERT [dbo].[PhongChieu] ([MaPC], [TenPC], [SucChua], [MaRP]) VALUES (N'PC2', N'Phòng 2', 30, N'RP1')
GO
INSERT [dbo].[PhongChieu] ([MaPC], [TenPC], [SucChua], [MaRP]) VALUES (N'PC3', N'Phòng 3', 30, N'RP1')
GO
INSERT [dbo].[PhongChieu] ([MaPC], [TenPC], [SucChua], [MaRP]) VALUES (N'PC4', N'Phòng 4', 30, N'RP1')
GO
INSERT [dbo].[PhongChieu] ([MaPC], [TenPC], [SucChua], [MaRP]) VALUES (N'PC5', N'Phòng 5', 30, N'RP1')
GO
INSERT [dbo].[QuanLy] ([MaQL], [HoTen], [DiaChi], [NgaySinh], [SDT], [MaTK]) VALUES (N'QL1', N'Lê Văn Công', N'Cầu Giấy', CAST(N'1994-02-25' AS Date), N'0123456003', N'TK1')
GO
INSERT [dbo].[RapPhim] ([MaRP], [TenRP], [DiaChi], [MoTa], [MaQL]) VALUES (N'RP1', N'CineStar Hòa Bình', N'182A Lê Thánh Tông, Quận Hai Bà Trưng, Hà Nội', N'Rạp chiếu phim hiện đại với nhiều phòng chiếu.', N'QL1')
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [Username], [Password], [Email], [SDT], [LoaiTK]) VALUES (N'TK1', N'lvc', N'lvc123', N'lvc@gmail.com', N'0123456003', 1)
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [Username], [Password], [Email], [SDT], [LoaiTK]) VALUES (N'TK10', N'pham.j', N'customerPass4', N'pham.j@example.com', N'0123456010', 2)
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [Username], [Password], [Email], [SDT], [LoaiTK]) VALUES (N'TK11', N'hoang.k', N'customerPass5', N'hoang.k@example.com', N'0123456011', 2)
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [Username], [Password], [Email], [SDT], [LoaiTK]) VALUES (N'TK12', N'nguyen.l', N'customerPass6', N'nguyen.l@example.com', N'0123456012', 2)
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [Username], [Password], [Email], [SDT], [LoaiTK]) VALUES (N'TK13', N'tran.m', N'customerPass7', N'tran.m@example.com', N'0123456013', 2)
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [Username], [Password], [Email], [SDT], [LoaiTK]) VALUES (N'TK14', N'le.n', N'customerPass8', N'le.n@example.com', N'0123456014', 2)
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [Username], [Password], [Email], [SDT], [LoaiTK]) VALUES (N'TK15', N'pham.o', N'customerPass9', N'pham.o@example.com', N'0123456015', 2)
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [Username], [Password], [Email], [SDT], [LoaiTK]) VALUES (N'TK16', N'hoang.p', N'customerPass10', N'hoang.p@example.com', N'0123456016', 2)
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [Username], [Password], [Email], [SDT], [LoaiTK]) VALUES (N'TK17', N'nguyen.q', N'customerPass11', N'nguyen.q@example.com', N'0123456017', 2)
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [Username], [Password], [Email], [SDT], [LoaiTK]) VALUES (N'TK18', N'tran.r', N'customerPass12', N'tran.r@example.com', N'0123456018', 2)
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [Username], [Password], [Email], [SDT], [LoaiTK]) VALUES (N'TK19', N'le.s', N'customerPass13', N'le.s@example.com', N'0123456019', 2)
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [Username], [Password], [Email], [SDT], [LoaiTK]) VALUES (N'TK20', N'pham.t', N'customerPass14', N'pham.t@example.com', N'0123456020', 2)
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [Username], [Password], [Email], [SDT], [LoaiTK]) VALUES (N'TK21', N'hoang.u', N'customerPass15', N'hoang.u@example.com', N'0123456021', 2)
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [Username], [Password], [Email], [SDT], [LoaiTK]) VALUES (N'TK7', N'nql', N'nql123', N'nguyen@gmail.com', N'0123456007', 2)
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [Username], [Password], [Email], [SDT], [LoaiTK]) VALUES (N'TK8', N'tran.h', N'customerPass2', N'tran.h@example.com', N'0123456008', 2)
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [Username], [Password], [Email], [SDT], [LoaiTK]) VALUES (N'TK9', N'le.i', N'customerPass3', N'le.i@example.com', N'0123456009', 2)
GO
INSERT [dbo].[TheLoai] ([MaTL], [TenTheLoai], [MoTa]) VALUES (N'TL1', N'Khoa học viễn tưởng', N'Phim với các yếu tố viễn tưởng và công nghệ tương lai.')
GO
INSERT [dbo].[TheLoai] ([MaTL], [TenTheLoai], [MoTa]) VALUES (N'TL10', N'Chiến tranh', N'Phim về sự tác động của chiến tranh lên cuộc sống con người.')
GO
INSERT [dbo].[TheLoai] ([MaTL], [TenTheLoai], [MoTa]) VALUES (N'TL11', N'Tội phạm', N'Phim xoay quanh cuộc chiến chống tội phạm.')
GO
INSERT [dbo].[TheLoai] ([MaTL], [TenTheLoai], [MoTa]) VALUES (N'TL12', N'Phiêu lưu', N'Phim với yếu tố thần bí và phiêu lưu.')
GO
INSERT [dbo].[TheLoai] ([MaTL], [TenTheLoai], [MoTa]) VALUES (N'TL13', N'Tiểu sử', N'Phim dựa trên câu chuyện có thật.')
GO
INSERT [dbo].[TheLoai] ([MaTL], [TenTheLoai], [MoTa]) VALUES (N'TL2', N'Hành động', N'Phim với nhiều cảnh hành động mãn nhãn.')
GO
INSERT [dbo].[TheLoai] ([MaTL], [TenTheLoai], [MoTa]) VALUES (N'TL3', N'Tâm lý', N'Phim tâm lý phức tạp với nhiều tình tiết gây bất ngờ.')
GO
INSERT [dbo].[TheLoai] ([MaTL], [TenTheLoai], [MoTa]) VALUES (N'TL4', N'Kinh dị', N'Phim mang yếu tố hồi hộp và căng thẳng.')
GO
INSERT [dbo].[TheLoai] ([MaTL], [TenTheLoai], [MoTa]) VALUES (N'TL5', N'Hoạt hình', N'Phim hoạt hình nổi tiếng với các yếu tố phép thuật.')
GO
INSERT [dbo].[TheLoai] ([MaTL], [TenTheLoai], [MoTa]) VALUES (N'TL6', N'Giả tưởng', N'Phim với yếu tố thần bí và kỳ ảo.')
GO
INSERT [dbo].[TheLoai] ([MaTL], [TenTheLoai], [MoTa]) VALUES (N'TL7', N'Lãng mạn', N'Phim về câu chuyện tình yêu nhẹ nhàng và kỳ lạ.')
GO
INSERT [dbo].[TheLoai] ([MaTL], [TenTheLoai], [MoTa]) VALUES (N'TL8', N'Hài hước', N'Phim mang yếu tố hài hước và nhẹ nhàng.')
GO
INSERT [dbo].[TheLoai] ([MaTL], [TenTheLoai], [MoTa]) VALUES (N'TL9', N'Võ thuật', N'Phim võ thuật với các cảnh chiến đấu đẹp mắt.')
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD  CONSTRAINT [FK_DanhGia_Phim] FOREIGN KEY([MaPhim])
REFERENCES [dbo].[Phim] ([MaPhim])
GO
ALTER TABLE [dbo].[DanhGia] CHECK CONSTRAINT [FK_DanhGia_Phim]
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD  CONSTRAINT [FK_DanhGia_TaiKhoan] FOREIGN KEY([MaTK])
REFERENCES [dbo].[TaiKhoan] ([MaTK])
GO
ALTER TABLE [dbo].[DanhGia] CHECK CONSTRAINT [FK_DanhGia_TaiKhoan]
GO
ALTER TABLE [dbo].[GheXemPhim]  WITH CHECK ADD  CONSTRAINT [FK_GheXemPhim_PhongChieu] FOREIGN KEY([MaPC])
REFERENCES [dbo].[PhongChieu] ([MaPC])
GO
ALTER TABLE [dbo].[GheXemPhim] CHECK CONSTRAINT [FK_GheXemPhim_PhongChieu]
GO
ALTER TABLE [dbo].[HinhAnhTrailer]  WITH CHECK ADD  CONSTRAINT [FK_HinhAnhTrailer_Phim] FOREIGN KEY([MaPhim])
REFERENCES [dbo].[Phim] ([MaPhim])
GO
ALTER TABLE [dbo].[HinhAnhTrailer] CHECK CONSTRAINT [FK_HinhAnhTrailer_Phim]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_TaiKhoan] FOREIGN KEY([MaTK])
REFERENCES [dbo].[TaiKhoan] ([MaTK])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_KhachHang_TaiKhoan]
GO
ALTER TABLE [dbo].[KhuyenMai]  WITH CHECK ADD  CONSTRAINT [FK_KhuyenMai_Phim] FOREIGN KEY([MaPhim])
REFERENCES [dbo].[Phim] ([MaPhim])
GO
ALTER TABLE [dbo].[KhuyenMai] CHECK CONSTRAINT [FK_KhuyenMai_Phim]
GO
ALTER TABLE [dbo].[KhuyenMai]  WITH CHECK ADD  CONSTRAINT [FK_KhuyenMai_QuanLy] FOREIGN KEY([MaQL])
REFERENCES [dbo].[QuanLy] ([MaQL])
GO
ALTER TABLE [dbo].[KhuyenMai] CHECK CONSTRAINT [FK_KhuyenMai_QuanLy]
GO
ALTER TABLE [dbo].[LichChieu]  WITH CHECK ADD  CONSTRAINT [FK_LichChieu_Phim] FOREIGN KEY([MaPhim])
REFERENCES [dbo].[Phim] ([MaPhim])
GO
ALTER TABLE [dbo].[LichChieu] CHECK CONSTRAINT [FK_LichChieu_Phim]
GO
ALTER TABLE [dbo].[LichChieu]  WITH CHECK ADD  CONSTRAINT [FK_LichChieu_PhongChieu] FOREIGN KEY([MaPC])
REFERENCES [dbo].[PhongChieu] ([MaPC])
GO
ALTER TABLE [dbo].[LichChieu] CHECK CONSTRAINT [FK_LichChieu_PhongChieu]
GO
ALTER TABLE [dbo].[Phim]  WITH CHECK ADD  CONSTRAINT [FK_Phim_TheLoai] FOREIGN KEY([MaTL])
REFERENCES [dbo].[TheLoai] ([MaTL])
GO
ALTER TABLE [dbo].[Phim] CHECK CONSTRAINT [FK_Phim_TheLoai]
GO
ALTER TABLE [dbo].[PhongChieu]  WITH CHECK ADD  CONSTRAINT [FK_PhongChieu_RapPhim] FOREIGN KEY([MaRP])
REFERENCES [dbo].[RapPhim] ([MaRP])
GO
ALTER TABLE [dbo].[PhongChieu] CHECK CONSTRAINT [FK_PhongChieu_RapPhim]
GO
ALTER TABLE [dbo].[QuanLy]  WITH CHECK ADD  CONSTRAINT [FK_QuanLy_TaiKhoan] FOREIGN KEY([MaTK])
REFERENCES [dbo].[TaiKhoan] ([MaTK])
GO
ALTER TABLE [dbo].[QuanLy] CHECK CONSTRAINT [FK_QuanLy_TaiKhoan]
GO
ALTER TABLE [dbo].[RapPhim]  WITH CHECK ADD  CONSTRAINT [FK_RapPhim_QuanLy] FOREIGN KEY([MaQL])
REFERENCES [dbo].[QuanLy] ([MaQL])
GO
ALTER TABLE [dbo].[RapPhim] CHECK CONSTRAINT [FK_RapPhim_QuanLy]
GO
ALTER TABLE [dbo].[VeXemPhim]  WITH CHECK ADD  CONSTRAINT [FK_VeXemPhim_GheXemPhim] FOREIGN KEY([MaGXP])
REFERENCES [dbo].[GheXemPhim] ([MaGXP])
GO
ALTER TABLE [dbo].[VeXemPhim] CHECK CONSTRAINT [FK_VeXemPhim_GheXemPhim]
GO
ALTER TABLE [dbo].[VeXemPhim]  WITH CHECK ADD  CONSTRAINT [FK_VeXemPhim_HoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[VeXemPhim] CHECK CONSTRAINT [FK_VeXemPhim_HoaDon]
GO
