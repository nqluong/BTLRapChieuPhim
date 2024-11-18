USE [QuanLyRapPhim]
GO
/****** Object:  Table [dbo].[DanhGia]    Script Date: 11/18/2024 6:36:48 PM ******/
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
/****** Object:  Table [dbo].[GheXemPhim]    Script Date: 11/18/2024 6:36:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GheXemPhim](
	[MaGXP] [nvarchar](50) NOT NULL,
	[LoaiGhe] [nvarchar](max) NULL,
	[MaPC] [nvarchar](50) NULL,
 CONSTRAINT [PK_GheXemPhim] PRIMARY KEY CLUSTERED 
(
	[MaGXP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HinhAnhTrailer]    Script Date: 11/18/2024 6:36:48 PM ******/
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
/****** Object:  Table [dbo].[HoaDon]    Script Date: 11/18/2024 6:36:48 PM ******/
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
/****** Object:  Table [dbo].[KhachHang]    Script Date: 11/18/2024 6:36:48 PM ******/
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
/****** Object:  Table [dbo].[KhuyenMai]    Script Date: 11/18/2024 6:36:48 PM ******/
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
/****** Object:  Table [dbo].[LichChieu]    Script Date: 11/18/2024 6:36:48 PM ******/
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
/****** Object:  Table [dbo].[Phim]    Script Date: 11/18/2024 6:36:48 PM ******/
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
/****** Object:  Table [dbo].[PhongChieu]    Script Date: 11/18/2024 6:36:48 PM ******/
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
/****** Object:  Table [dbo].[QuanLy]    Script Date: 11/18/2024 6:36:48 PM ******/
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
/****** Object:  Table [dbo].[RapPhim]    Script Date: 11/18/2024 6:36:48 PM ******/
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
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 11/18/2024 6:36:48 PM ******/
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
/****** Object:  Table [dbo].[TheLoai]    Script Date: 11/18/2024 6:36:48 PM ******/
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
/****** Object:  Table [dbo].[VeXemPhim]    Script Date: 11/18/2024 6:36:48 PM ******/
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
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP1', N'VIP', N'PC1')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP10', N'VIP', N'PC1')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP100', N'VIP', N'PC4')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP101', N'VIP', N'PC4')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP102', N'VIP', N'PC4')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP103', N'VIP', N'PC4')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP104', N'VIP', N'PC4')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP105', N'VIP', N'PC4')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP106', N'VIP', N'PC4')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP107', N'VIP', N'PC4')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP108', N'VIP', N'PC4')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP109', N'VIP', N'PC4')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP11', N'VIP', N'PC1')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP110', N'VIP', N'PC4')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP111', N'VIP', N'PC4')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP112', N'VIP', N'PC4')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP113', N'VIP', N'PC4')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP114', N'VIP', N'PC4')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP115', N'VIP', N'PC4')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP116', N'VIP', N'PC4')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP117', N'VIP', N'PC4')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP118', N'VIP', N'PC4')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP119', N'VIP', N'PC4')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP12', N'VIP', N'PC1')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP120', N'VIP', N'PC4')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP121', N'VIP', N'PC5')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP122', N'VIP', N'PC5')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP123', N'VIP', N'PC5')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP124', N'VIP', N'PC5')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP125', N'VIP', N'PC5')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP126', N'VIP', N'PC5')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP127', N'VIP', N'PC5')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP128', N'VIP', N'PC5')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP129', N'VIP', N'PC5')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP13', N'VIP', N'PC1')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP130', N'VIP', N'PC5')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP131', N'VIP', N'PC5')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP132', N'VIP', N'PC5')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP133', N'VIP', N'PC5')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP134', N'VIP', N'PC5')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP135', N'VIP', N'PC5')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP136', N'VIP', N'PC5')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP137', N'VIP', N'PC5')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP138', N'VIP', N'PC5')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP139', N'VIP', N'PC5')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP14', N'VIP', N'PC1')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP140', N'VIP', N'PC5')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP141', N'VIP', N'PC5')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP142', N'VIP', N'PC5')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP143', N'VIP', N'PC5')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP144', N'VIP', N'PC5')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP145', N'VIP', N'PC5')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP146', N'VIP', N'PC5')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP147', N'VIP', N'PC5')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP148', N'VIP', N'PC5')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP149', N'VIP', N'PC5')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP15', N'VIP', N'PC1')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP150', N'VIP', N'PC5')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP16', N'VIP', N'PC1')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP17', N'VIP', N'PC1')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP18', N'VIP', N'PC1')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP19', N'VIP', N'PC1')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP2', N'VIP', N'PC1')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP20', N'VIP', N'PC1')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP21', N'VIP', N'PC1')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP22', N'VIP', N'PC1')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP23', N'VIP', N'PC1')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP24', N'VIP', N'PC1')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP25', N'VIP', N'PC1')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP26', N'VIP', N'PC1')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP27', N'VIP', N'PC1')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP28', N'VIP', N'PC1')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP29', N'VIP', N'PC1')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP3', N'VIP', N'PC1')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP30', N'VIP', N'PC1')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP31', N'VIP', N'PC2')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP32', N'VIP', N'PC2')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP33', N'VIP', N'PC2')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP34', N'VIP', N'PC2')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP35', N'VIP', N'PC2')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP36', N'VIP', N'PC2')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP37', N'VIP', N'PC2')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP38', N'VIP', N'PC2')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP39', N'VIP', N'PC2')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP4', N'VIP', N'PC1')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP40', N'VIP', N'PC2')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP41', N'VIP', N'PC2')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP42', N'VIP', N'PC2')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP43', N'VIP', N'PC2')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP44', N'VIP', N'PC2')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP45', N'VIP', N'PC2')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP46', N'VIP', N'PC2')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP47', N'VIP', N'PC2')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP48', N'VIP', N'PC2')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP49', N'VIP', N'PC2')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP5', N'VIP', N'PC1')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP50', N'VIP', N'PC2')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP51', N'VIP', N'PC2')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP52', N'VIP', N'PC2')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP53', N'VIP', N'PC2')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP54', N'VIP', N'PC2')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP55', N'VIP', N'PC2')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP56', N'VIP', N'PC2')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP57', N'VIP', N'PC2')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP58', N'VIP', N'PC2')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP59', N'VIP', N'PC2')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP6', N'VIP', N'PC1')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP60', N'VIP', N'PC2')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP61', N'VIP', N'PC3')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP62', N'VIP', N'PC3')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP63', N'VIP', N'PC3')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP64', N'VIP', N'PC3')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP65', N'VIP', N'PC3')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP66', N'VIP', N'PC3')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP67', N'VIP', N'PC3')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP68', N'VIP', N'PC3')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP69', N'VIP', N'PC3')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP7', N'VIP', N'PC1')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP70', N'VIP', N'PC3')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP71', N'VIP', N'PC3')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP72', N'VIP', N'PC3')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP73', N'VIP', N'PC3')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP74', N'VIP', N'PC3')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP75', N'VIP', N'PC3')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP76', N'VIP', N'PC3')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP77', N'VIP', N'PC3')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP78', N'VIP', N'PC3')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP79', N'VIP', N'PC3')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP8', N'VIP', N'PC1')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP80', N'VIP', N'PC3')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP81', N'VIP', N'PC3')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP82', N'VIP', N'PC3')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP83', N'VIP', N'PC3')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP84', N'VIP', N'PC3')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP85', N'VIP', N'PC3')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP86', N'VIP', N'PC3')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP87', N'VIP', N'PC3')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP88', N'VIP', N'PC3')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP89', N'VIP', N'PC3')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP9', N'VIP', N'PC1')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP90', N'VIP', N'PC3')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP91', N'VIP', N'PC4')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP92', N'VIP', N'PC4')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP93', N'VIP', N'PC4')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP94', N'VIP', N'PC4')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP95', N'VIP', N'PC4')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP96', N'VIP', N'PC4')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP97', N'VIP', N'PC4')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP98', N'VIP', N'PC4')
GO
INSERT [dbo].[GheXemPhim] ([MaGXP], [LoaiGhe], [MaPC]) VALUES (N'GXP99', N'VIP', N'PC4')
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
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1', CAST(100000 AS Decimal(18, 0)), N'HD1', N'LC1', N'GXP1', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP10', CAST(100000 AS Decimal(18, 0)), NULL, N'LC1', N'GXP10', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP100', CAST(100000 AS Decimal(18, 0)), N'HD13', N'LC4', N'GXP100', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1000', CAST(100000 AS Decimal(18, 0)), NULL, N'LC34', N'GXP100', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1001', CAST(100000 AS Decimal(18, 0)), NULL, N'LC34', N'GXP101', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1002', CAST(100000 AS Decimal(18, 0)), NULL, N'LC34', N'GXP102', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1003', CAST(100000 AS Decimal(18, 0)), NULL, N'LC34', N'GXP103', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1004', CAST(100000 AS Decimal(18, 0)), NULL, N'LC34', N'GXP104', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1005', CAST(100000 AS Decimal(18, 0)), NULL, N'LC34', N'GXP105', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1006', CAST(100000 AS Decimal(18, 0)), NULL, N'LC34', N'GXP106', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1007', CAST(100000 AS Decimal(18, 0)), NULL, N'LC34', N'GXP107', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1008', CAST(100000 AS Decimal(18, 0)), NULL, N'LC34', N'GXP108', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1009', CAST(100000 AS Decimal(18, 0)), NULL, N'LC34', N'GXP109', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP101', CAST(100000 AS Decimal(18, 0)), NULL, N'LC4', N'GXP101', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1010', CAST(100000 AS Decimal(18, 0)), NULL, N'LC34', N'GXP110', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1011', CAST(100000 AS Decimal(18, 0)), NULL, N'LC34', N'GXP111', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1012', CAST(100000 AS Decimal(18, 0)), NULL, N'LC34', N'GXP112', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1013', CAST(100000 AS Decimal(18, 0)), NULL, N'LC34', N'GXP113', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1014', CAST(100000 AS Decimal(18, 0)), NULL, N'LC34', N'GXP114', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1015', CAST(100000 AS Decimal(18, 0)), NULL, N'LC34', N'GXP115', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1016', CAST(100000 AS Decimal(18, 0)), NULL, N'LC34', N'GXP116', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1017', CAST(100000 AS Decimal(18, 0)), NULL, N'LC34', N'GXP117', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1018', CAST(100000 AS Decimal(18, 0)), NULL, N'LC34', N'GXP118', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1019', CAST(100000 AS Decimal(18, 0)), NULL, N'LC34', N'GXP119', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP102', CAST(100000 AS Decimal(18, 0)), NULL, N'LC4', N'GXP102', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1020', CAST(100000 AS Decimal(18, 0)), NULL, N'LC34', N'GXP120', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1021', CAST(100000 AS Decimal(18, 0)), NULL, N'LC35', N'GXP121', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1022', CAST(100000 AS Decimal(18, 0)), NULL, N'LC35', N'GXP122', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1023', CAST(100000 AS Decimal(18, 0)), NULL, N'LC35', N'GXP123', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1024', CAST(100000 AS Decimal(18, 0)), NULL, N'LC35', N'GXP124', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1025', CAST(100000 AS Decimal(18, 0)), NULL, N'LC35', N'GXP125', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1026', CAST(100000 AS Decimal(18, 0)), NULL, N'LC35', N'GXP126', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1027', CAST(100000 AS Decimal(18, 0)), NULL, N'LC35', N'GXP127', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1028', CAST(100000 AS Decimal(18, 0)), NULL, N'LC35', N'GXP128', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1029', CAST(100000 AS Decimal(18, 0)), NULL, N'LC35', N'GXP129', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP103', CAST(100000 AS Decimal(18, 0)), NULL, N'LC4', N'GXP103', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1030', CAST(100000 AS Decimal(18, 0)), NULL, N'LC35', N'GXP130', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1031', CAST(100000 AS Decimal(18, 0)), NULL, N'LC35', N'GXP131', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1032', CAST(100000 AS Decimal(18, 0)), NULL, N'LC35', N'GXP132', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1033', CAST(100000 AS Decimal(18, 0)), NULL, N'LC35', N'GXP133', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1034', CAST(100000 AS Decimal(18, 0)), NULL, N'LC35', N'GXP134', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1035', CAST(100000 AS Decimal(18, 0)), NULL, N'LC35', N'GXP135', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1036', CAST(100000 AS Decimal(18, 0)), NULL, N'LC35', N'GXP136', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1037', CAST(100000 AS Decimal(18, 0)), NULL, N'LC35', N'GXP137', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1038', CAST(100000 AS Decimal(18, 0)), NULL, N'LC35', N'GXP138', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1039', CAST(100000 AS Decimal(18, 0)), NULL, N'LC35', N'GXP139', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP104', CAST(100000 AS Decimal(18, 0)), NULL, N'LC4', N'GXP104', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1040', CAST(100000 AS Decimal(18, 0)), NULL, N'LC35', N'GXP140', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1041', CAST(100000 AS Decimal(18, 0)), NULL, N'LC35', N'GXP141', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1042', CAST(100000 AS Decimal(18, 0)), NULL, N'LC35', N'GXP142', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1043', CAST(100000 AS Decimal(18, 0)), NULL, N'LC35', N'GXP143', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1044', CAST(100000 AS Decimal(18, 0)), NULL, N'LC35', N'GXP144', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1045', CAST(100000 AS Decimal(18, 0)), NULL, N'LC35', N'GXP145', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1046', CAST(100000 AS Decimal(18, 0)), NULL, N'LC35', N'GXP146', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1047', CAST(100000 AS Decimal(18, 0)), NULL, N'LC35', N'GXP147', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1048', CAST(100000 AS Decimal(18, 0)), NULL, N'LC35', N'GXP148', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1049', CAST(100000 AS Decimal(18, 0)), NULL, N'LC35', N'GXP149', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP105', CAST(100000 AS Decimal(18, 0)), NULL, N'LC4', N'GXP105', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1050', CAST(100000 AS Decimal(18, 0)), NULL, N'LC35', N'GXP150', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1051', CAST(100000 AS Decimal(18, 0)), NULL, N'LC36', N'GXP1', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1052', CAST(100000 AS Decimal(18, 0)), NULL, N'LC36', N'GXP2', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1053', CAST(100000 AS Decimal(18, 0)), NULL, N'LC36', N'GXP3', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1054', CAST(100000 AS Decimal(18, 0)), NULL, N'LC36', N'GXP4', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1055', CAST(100000 AS Decimal(18, 0)), NULL, N'LC36', N'GXP5', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1056', CAST(100000 AS Decimal(18, 0)), NULL, N'LC36', N'GXP6', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1057', CAST(100000 AS Decimal(18, 0)), NULL, N'LC36', N'GXP7', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1058', CAST(100000 AS Decimal(18, 0)), NULL, N'LC36', N'GXP8', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1059', CAST(100000 AS Decimal(18, 0)), NULL, N'LC36', N'GXP9', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP106', CAST(100000 AS Decimal(18, 0)), NULL, N'LC4', N'GXP106', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1060', CAST(100000 AS Decimal(18, 0)), NULL, N'LC36', N'GXP10', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1061', CAST(100000 AS Decimal(18, 0)), NULL, N'LC36', N'GXP11', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1062', CAST(100000 AS Decimal(18, 0)), NULL, N'LC36', N'GXP12', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1063', CAST(100000 AS Decimal(18, 0)), NULL, N'LC36', N'GXP13', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1064', CAST(100000 AS Decimal(18, 0)), NULL, N'LC36', N'GXP14', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1065', CAST(100000 AS Decimal(18, 0)), NULL, N'LC36', N'GXP15', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1066', CAST(100000 AS Decimal(18, 0)), NULL, N'LC36', N'GXP16', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1067', CAST(100000 AS Decimal(18, 0)), NULL, N'LC36', N'GXP17', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1068', CAST(100000 AS Decimal(18, 0)), NULL, N'LC36', N'GXP18', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1069', CAST(100000 AS Decimal(18, 0)), NULL, N'LC36', N'GXP19', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP107', CAST(100000 AS Decimal(18, 0)), NULL, N'LC4', N'GXP107', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1070', CAST(100000 AS Decimal(18, 0)), NULL, N'LC36', N'GXP20', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1071', CAST(100000 AS Decimal(18, 0)), NULL, N'LC36', N'GXP21', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1072', CAST(100000 AS Decimal(18, 0)), NULL, N'LC36', N'GXP22', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1073', CAST(100000 AS Decimal(18, 0)), NULL, N'LC36', N'GXP23', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1074', CAST(100000 AS Decimal(18, 0)), NULL, N'LC36', N'GXP24', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1075', CAST(100000 AS Decimal(18, 0)), NULL, N'LC36', N'GXP25', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1076', CAST(100000 AS Decimal(18, 0)), NULL, N'LC36', N'GXP26', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1077', CAST(100000 AS Decimal(18, 0)), NULL, N'LC36', N'GXP27', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1078', CAST(100000 AS Decimal(18, 0)), NULL, N'LC36', N'GXP28', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1079', CAST(100000 AS Decimal(18, 0)), NULL, N'LC36', N'GXP29', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP108', CAST(100000 AS Decimal(18, 0)), NULL, N'LC4', N'GXP108', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1080', CAST(100000 AS Decimal(18, 0)), NULL, N'LC36', N'GXP30', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1081', CAST(100000 AS Decimal(18, 0)), NULL, N'LC37', N'GXP31', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1082', CAST(100000 AS Decimal(18, 0)), NULL, N'LC37', N'GXP32', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1083', CAST(100000 AS Decimal(18, 0)), NULL, N'LC37', N'GXP33', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1084', CAST(100000 AS Decimal(18, 0)), NULL, N'LC37', N'GXP34', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1085', CAST(100000 AS Decimal(18, 0)), NULL, N'LC37', N'GXP35', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1086', CAST(100000 AS Decimal(18, 0)), NULL, N'LC37', N'GXP36', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1087', CAST(100000 AS Decimal(18, 0)), NULL, N'LC37', N'GXP37', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1088', CAST(100000 AS Decimal(18, 0)), NULL, N'LC37', N'GXP38', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1089', CAST(100000 AS Decimal(18, 0)), NULL, N'LC37', N'GXP39', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP109', CAST(100000 AS Decimal(18, 0)), NULL, N'LC4', N'GXP109', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1090', CAST(100000 AS Decimal(18, 0)), NULL, N'LC37', N'GXP40', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1091', CAST(100000 AS Decimal(18, 0)), NULL, N'LC37', N'GXP41', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1092', CAST(100000 AS Decimal(18, 0)), NULL, N'LC37', N'GXP42', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1093', CAST(100000 AS Decimal(18, 0)), NULL, N'LC37', N'GXP43', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1094', CAST(100000 AS Decimal(18, 0)), NULL, N'LC37', N'GXP44', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1095', CAST(100000 AS Decimal(18, 0)), NULL, N'LC37', N'GXP45', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1096', CAST(100000 AS Decimal(18, 0)), NULL, N'LC37', N'GXP46', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1097', CAST(100000 AS Decimal(18, 0)), NULL, N'LC37', N'GXP47', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1098', CAST(100000 AS Decimal(18, 0)), NULL, N'LC37', N'GXP48', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1099', CAST(100000 AS Decimal(18, 0)), NULL, N'LC37', N'GXP49', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP11', CAST(100000 AS Decimal(18, 0)), N'HD4', N'LC1', N'GXP11', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP110', CAST(100000 AS Decimal(18, 0)), NULL, N'LC4', N'GXP110', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1100', CAST(100000 AS Decimal(18, 0)), NULL, N'LC37', N'GXP50', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1101', CAST(100000 AS Decimal(18, 0)), NULL, N'LC37', N'GXP51', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1102', CAST(100000 AS Decimal(18, 0)), NULL, N'LC37', N'GXP52', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1103', CAST(100000 AS Decimal(18, 0)), NULL, N'LC37', N'GXP53', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1104', CAST(100000 AS Decimal(18, 0)), NULL, N'LC37', N'GXP54', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1105', CAST(100000 AS Decimal(18, 0)), NULL, N'LC37', N'GXP55', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1106', CAST(100000 AS Decimal(18, 0)), NULL, N'LC37', N'GXP56', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1107', CAST(100000 AS Decimal(18, 0)), NULL, N'LC37', N'GXP57', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1108', CAST(100000 AS Decimal(18, 0)), NULL, N'LC37', N'GXP58', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1109', CAST(100000 AS Decimal(18, 0)), NULL, N'LC37', N'GXP59', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP111', CAST(100000 AS Decimal(18, 0)), NULL, N'LC4', N'GXP111', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1110', CAST(100000 AS Decimal(18, 0)), NULL, N'LC37', N'GXP60', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1111', CAST(100000 AS Decimal(18, 0)), NULL, N'LC38', N'GXP61', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1112', CAST(100000 AS Decimal(18, 0)), NULL, N'LC38', N'GXP62', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1113', CAST(100000 AS Decimal(18, 0)), NULL, N'LC38', N'GXP63', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1114', CAST(100000 AS Decimal(18, 0)), NULL, N'LC38', N'GXP64', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1115', CAST(100000 AS Decimal(18, 0)), NULL, N'LC38', N'GXP65', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1116', CAST(100000 AS Decimal(18, 0)), NULL, N'LC38', N'GXP66', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1117', CAST(100000 AS Decimal(18, 0)), NULL, N'LC38', N'GXP67', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1118', CAST(100000 AS Decimal(18, 0)), NULL, N'LC38', N'GXP68', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1119', CAST(100000 AS Decimal(18, 0)), NULL, N'LC38', N'GXP69', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP112', CAST(100000 AS Decimal(18, 0)), NULL, N'LC4', N'GXP112', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1120', CAST(100000 AS Decimal(18, 0)), NULL, N'LC38', N'GXP70', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1121', CAST(100000 AS Decimal(18, 0)), NULL, N'LC38', N'GXP71', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1122', CAST(100000 AS Decimal(18, 0)), NULL, N'LC38', N'GXP72', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1123', CAST(100000 AS Decimal(18, 0)), NULL, N'LC38', N'GXP73', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1124', CAST(100000 AS Decimal(18, 0)), NULL, N'LC38', N'GXP74', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1125', CAST(100000 AS Decimal(18, 0)), NULL, N'LC38', N'GXP75', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1126', CAST(100000 AS Decimal(18, 0)), NULL, N'LC38', N'GXP76', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1127', CAST(100000 AS Decimal(18, 0)), NULL, N'LC38', N'GXP77', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1128', CAST(100000 AS Decimal(18, 0)), NULL, N'LC38', N'GXP78', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1129', CAST(100000 AS Decimal(18, 0)), NULL, N'LC38', N'GXP79', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP113', CAST(100000 AS Decimal(18, 0)), NULL, N'LC4', N'GXP113', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1130', CAST(100000 AS Decimal(18, 0)), NULL, N'LC38', N'GXP80', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1131', CAST(100000 AS Decimal(18, 0)), NULL, N'LC38', N'GXP81', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1132', CAST(100000 AS Decimal(18, 0)), NULL, N'LC38', N'GXP82', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1133', CAST(100000 AS Decimal(18, 0)), NULL, N'LC38', N'GXP83', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1134', CAST(100000 AS Decimal(18, 0)), NULL, N'LC38', N'GXP84', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1135', CAST(100000 AS Decimal(18, 0)), NULL, N'LC38', N'GXP85', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1136', CAST(100000 AS Decimal(18, 0)), NULL, N'LC38', N'GXP86', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1137', CAST(100000 AS Decimal(18, 0)), NULL, N'LC38', N'GXP87', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1138', CAST(100000 AS Decimal(18, 0)), NULL, N'LC38', N'GXP88', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1139', CAST(100000 AS Decimal(18, 0)), NULL, N'LC38', N'GXP89', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP114', CAST(100000 AS Decimal(18, 0)), NULL, N'LC4', N'GXP114', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1140', CAST(100000 AS Decimal(18, 0)), NULL, N'LC38', N'GXP90', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1141', CAST(100000 AS Decimal(18, 0)), NULL, N'LC39', N'GXP91', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1142', CAST(100000 AS Decimal(18, 0)), NULL, N'LC39', N'GXP92', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1143', CAST(100000 AS Decimal(18, 0)), NULL, N'LC39', N'GXP93', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1144', CAST(100000 AS Decimal(18, 0)), NULL, N'LC39', N'GXP94', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1145', CAST(100000 AS Decimal(18, 0)), NULL, N'LC39', N'GXP95', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1146', CAST(100000 AS Decimal(18, 0)), NULL, N'LC39', N'GXP96', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1147', CAST(100000 AS Decimal(18, 0)), NULL, N'LC39', N'GXP97', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1148', CAST(100000 AS Decimal(18, 0)), NULL, N'LC39', N'GXP98', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1149', CAST(100000 AS Decimal(18, 0)), NULL, N'LC39', N'GXP99', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP115', CAST(100000 AS Decimal(18, 0)), NULL, N'LC4', N'GXP115', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1150', CAST(100000 AS Decimal(18, 0)), NULL, N'LC39', N'GXP100', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1151', CAST(100000 AS Decimal(18, 0)), NULL, N'LC39', N'GXP101', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1152', CAST(100000 AS Decimal(18, 0)), NULL, N'LC39', N'GXP102', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1153', CAST(100000 AS Decimal(18, 0)), NULL, N'LC39', N'GXP103', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1154', CAST(100000 AS Decimal(18, 0)), NULL, N'LC39', N'GXP104', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1155', CAST(100000 AS Decimal(18, 0)), NULL, N'LC39', N'GXP105', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1156', CAST(100000 AS Decimal(18, 0)), NULL, N'LC39', N'GXP106', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1157', CAST(100000 AS Decimal(18, 0)), NULL, N'LC39', N'GXP107', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1158', CAST(100000 AS Decimal(18, 0)), NULL, N'LC39', N'GXP108', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1159', CAST(100000 AS Decimal(18, 0)), NULL, N'LC39', N'GXP109', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP116', CAST(100000 AS Decimal(18, 0)), NULL, N'LC4', N'GXP116', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1160', CAST(100000 AS Decimal(18, 0)), NULL, N'LC39', N'GXP110', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1161', CAST(100000 AS Decimal(18, 0)), NULL, N'LC39', N'GXP111', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1162', CAST(100000 AS Decimal(18, 0)), NULL, N'LC39', N'GXP112', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1163', CAST(100000 AS Decimal(18, 0)), NULL, N'LC39', N'GXP113', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1164', CAST(100000 AS Decimal(18, 0)), NULL, N'LC39', N'GXP114', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1165', CAST(100000 AS Decimal(18, 0)), NULL, N'LC39', N'GXP115', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1166', CAST(100000 AS Decimal(18, 0)), NULL, N'LC39', N'GXP116', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1167', CAST(100000 AS Decimal(18, 0)), NULL, N'LC39', N'GXP117', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1168', CAST(100000 AS Decimal(18, 0)), NULL, N'LC39', N'GXP118', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1169', CAST(100000 AS Decimal(18, 0)), NULL, N'LC39', N'GXP119', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP117', CAST(100000 AS Decimal(18, 0)), NULL, N'LC4', N'GXP117', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1170', CAST(100000 AS Decimal(18, 0)), NULL, N'LC39', N'GXP120', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1171', CAST(100000 AS Decimal(18, 0)), NULL, N'LC40', N'GXP121', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1172', CAST(100000 AS Decimal(18, 0)), NULL, N'LC40', N'GXP122', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1173', CAST(100000 AS Decimal(18, 0)), NULL, N'LC40', N'GXP123', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1174', CAST(100000 AS Decimal(18, 0)), NULL, N'LC40', N'GXP124', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1175', CAST(100000 AS Decimal(18, 0)), NULL, N'LC40', N'GXP125', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1176', CAST(100000 AS Decimal(18, 0)), NULL, N'LC40', N'GXP126', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1177', CAST(100000 AS Decimal(18, 0)), NULL, N'LC40', N'GXP127', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1178', CAST(100000 AS Decimal(18, 0)), NULL, N'LC40', N'GXP128', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1179', CAST(100000 AS Decimal(18, 0)), NULL, N'LC40', N'GXP129', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP118', CAST(100000 AS Decimal(18, 0)), NULL, N'LC4', N'GXP118', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1180', CAST(100000 AS Decimal(18, 0)), NULL, N'LC40', N'GXP130', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1181', CAST(100000 AS Decimal(18, 0)), NULL, N'LC40', N'GXP131', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1182', CAST(100000 AS Decimal(18, 0)), NULL, N'LC40', N'GXP132', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1183', CAST(100000 AS Decimal(18, 0)), NULL, N'LC40', N'GXP133', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1184', CAST(100000 AS Decimal(18, 0)), NULL, N'LC40', N'GXP134', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1185', CAST(100000 AS Decimal(18, 0)), NULL, N'LC40', N'GXP135', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1186', CAST(100000 AS Decimal(18, 0)), NULL, N'LC40', N'GXP136', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1187', CAST(100000 AS Decimal(18, 0)), NULL, N'LC40', N'GXP137', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1188', CAST(100000 AS Decimal(18, 0)), NULL, N'LC40', N'GXP138', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1189', CAST(100000 AS Decimal(18, 0)), NULL, N'LC40', N'GXP139', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP119', CAST(100000 AS Decimal(18, 0)), NULL, N'LC4', N'GXP119', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1190', CAST(100000 AS Decimal(18, 0)), NULL, N'LC40', N'GXP140', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1191', CAST(100000 AS Decimal(18, 0)), NULL, N'LC40', N'GXP141', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1192', CAST(100000 AS Decimal(18, 0)), NULL, N'LC40', N'GXP142', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1193', CAST(100000 AS Decimal(18, 0)), NULL, N'LC40', N'GXP143', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1194', CAST(100000 AS Decimal(18, 0)), NULL, N'LC40', N'GXP144', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1195', CAST(100000 AS Decimal(18, 0)), NULL, N'LC40', N'GXP145', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1196', CAST(100000 AS Decimal(18, 0)), NULL, N'LC40', N'GXP146', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1197', CAST(100000 AS Decimal(18, 0)), NULL, N'LC40', N'GXP147', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1198', CAST(100000 AS Decimal(18, 0)), NULL, N'LC40', N'GXP148', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1199', CAST(100000 AS Decimal(18, 0)), NULL, N'LC40', N'GXP149', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP12', CAST(100000 AS Decimal(18, 0)), N'HD4', N'LC1', N'GXP12', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP120', CAST(100000 AS Decimal(18, 0)), NULL, N'LC4', N'GXP120', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1200', CAST(100000 AS Decimal(18, 0)), NULL, N'LC40', N'GXP150', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1201', CAST(100000 AS Decimal(18, 0)), N'HD46', N'LC41', N'GXP1', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1202', CAST(100000 AS Decimal(18, 0)), N'HD47', N'LC41', N'GXP2', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1203', CAST(100000 AS Decimal(18, 0)), N'HD48', N'LC41', N'GXP3', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1204', CAST(100000 AS Decimal(18, 0)), N'HD49', N'LC41', N'GXP4', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1205', CAST(100000 AS Decimal(18, 0)), N'HD50', N'LC41', N'GXP5', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1206', CAST(100000 AS Decimal(18, 0)), N'HD51', N'LC41', N'GXP6', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1207', CAST(100000 AS Decimal(18, 0)), N'HD52', N'LC41', N'GXP7', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1208', CAST(100000 AS Decimal(18, 0)), N'HD53', N'LC41', N'GXP8', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1209', CAST(100000 AS Decimal(18, 0)), N'HD54', N'LC41', N'GXP9', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP121', CAST(100000 AS Decimal(18, 0)), NULL, N'LC5', N'GXP121', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1210', CAST(100000 AS Decimal(18, 0)), N'HD55', N'LC41', N'GXP10', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1211', CAST(100000 AS Decimal(18, 0)), N'HD56', N'LC41', N'GXP11', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1212', CAST(100000 AS Decimal(18, 0)), N'HD57', N'LC41', N'GXP12', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1213', CAST(100000 AS Decimal(18, 0)), N'HD58', N'LC41', N'GXP13', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1214', CAST(100000 AS Decimal(18, 0)), N'HD59', N'LC41', N'GXP14', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1215', CAST(100000 AS Decimal(18, 0)), N'HD60', N'LC41', N'GXP15', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1216', CAST(100000 AS Decimal(18, 0)), NULL, N'LC41', N'GXP16', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1217', CAST(100000 AS Decimal(18, 0)), NULL, N'LC41', N'GXP17', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1218', CAST(100000 AS Decimal(18, 0)), NULL, N'LC41', N'GXP18', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1219', CAST(100000 AS Decimal(18, 0)), NULL, N'LC41', N'GXP19', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP122', CAST(100000 AS Decimal(18, 0)), NULL, N'LC5', N'GXP122', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1220', CAST(100000 AS Decimal(18, 0)), NULL, N'LC41', N'GXP20', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1221', CAST(100000 AS Decimal(18, 0)), NULL, N'LC41', N'GXP21', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1222', CAST(100000 AS Decimal(18, 0)), NULL, N'LC41', N'GXP22', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1223', CAST(100000 AS Decimal(18, 0)), NULL, N'LC41', N'GXP23', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1224', CAST(100000 AS Decimal(18, 0)), NULL, N'LC41', N'GXP24', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1225', CAST(100000 AS Decimal(18, 0)), NULL, N'LC41', N'GXP25', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1226', CAST(100000 AS Decimal(18, 0)), NULL, N'LC41', N'GXP26', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1227', CAST(100000 AS Decimal(18, 0)), NULL, N'LC41', N'GXP27', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1228', CAST(100000 AS Decimal(18, 0)), NULL, N'LC41', N'GXP28', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1229', CAST(100000 AS Decimal(18, 0)), NULL, N'LC41', N'GXP29', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP123', CAST(100000 AS Decimal(18, 0)), NULL, N'LC5', N'GXP123', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1230', CAST(100000 AS Decimal(18, 0)), NULL, N'LC41', N'GXP30', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1231', CAST(100000 AS Decimal(18, 0)), NULL, N'LC42', N'GXP31', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1232', CAST(100000 AS Decimal(18, 0)), NULL, N'LC42', N'GXP32', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1233', CAST(100000 AS Decimal(18, 0)), NULL, N'LC42', N'GXP33', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1234', CAST(100000 AS Decimal(18, 0)), NULL, N'LC42', N'GXP34', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1235', CAST(100000 AS Decimal(18, 0)), NULL, N'LC42', N'GXP35', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1236', CAST(100000 AS Decimal(18, 0)), NULL, N'LC42', N'GXP36', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1237', CAST(100000 AS Decimal(18, 0)), NULL, N'LC42', N'GXP37', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1238', CAST(100000 AS Decimal(18, 0)), NULL, N'LC42', N'GXP38', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1239', CAST(100000 AS Decimal(18, 0)), NULL, N'LC42', N'GXP39', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP124', CAST(100000 AS Decimal(18, 0)), NULL, N'LC5', N'GXP124', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1240', CAST(100000 AS Decimal(18, 0)), NULL, N'LC42', N'GXP40', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1241', CAST(100000 AS Decimal(18, 0)), NULL, N'LC42', N'GXP41', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1242', CAST(100000 AS Decimal(18, 0)), NULL, N'LC42', N'GXP42', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1243', CAST(100000 AS Decimal(18, 0)), NULL, N'LC42', N'GXP43', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1244', CAST(100000 AS Decimal(18, 0)), NULL, N'LC42', N'GXP44', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1245', CAST(100000 AS Decimal(18, 0)), NULL, N'LC42', N'GXP45', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1246', CAST(100000 AS Decimal(18, 0)), NULL, N'LC42', N'GXP46', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1247', CAST(100000 AS Decimal(18, 0)), NULL, N'LC42', N'GXP47', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1248', CAST(100000 AS Decimal(18, 0)), NULL, N'LC42', N'GXP48', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1249', CAST(100000 AS Decimal(18, 0)), NULL, N'LC42', N'GXP49', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP125', CAST(100000 AS Decimal(18, 0)), NULL, N'LC5', N'GXP125', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1250', CAST(100000 AS Decimal(18, 0)), NULL, N'LC42', N'GXP50', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1251', CAST(100000 AS Decimal(18, 0)), NULL, N'LC42', N'GXP51', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1252', CAST(100000 AS Decimal(18, 0)), NULL, N'LC42', N'GXP52', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1253', CAST(100000 AS Decimal(18, 0)), NULL, N'LC42', N'GXP53', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1254', CAST(100000 AS Decimal(18, 0)), NULL, N'LC42', N'GXP54', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1255', CAST(100000 AS Decimal(18, 0)), NULL, N'LC42', N'GXP55', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1256', CAST(100000 AS Decimal(18, 0)), NULL, N'LC42', N'GXP56', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1257', CAST(100000 AS Decimal(18, 0)), NULL, N'LC42', N'GXP57', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1258', CAST(100000 AS Decimal(18, 0)), NULL, N'LC42', N'GXP58', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1259', CAST(100000 AS Decimal(18, 0)), NULL, N'LC42', N'GXP59', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP126', CAST(100000 AS Decimal(18, 0)), NULL, N'LC5', N'GXP126', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1260', CAST(100000 AS Decimal(18, 0)), NULL, N'LC42', N'GXP60', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1261', CAST(100000 AS Decimal(18, 0)), NULL, N'LC43', N'GXP61', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1262', CAST(100000 AS Decimal(18, 0)), NULL, N'LC43', N'GXP62', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1263', CAST(100000 AS Decimal(18, 0)), NULL, N'LC43', N'GXP63', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1264', CAST(100000 AS Decimal(18, 0)), NULL, N'LC43', N'GXP64', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1265', CAST(100000 AS Decimal(18, 0)), NULL, N'LC43', N'GXP65', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1266', CAST(100000 AS Decimal(18, 0)), NULL, N'LC43', N'GXP66', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1267', CAST(100000 AS Decimal(18, 0)), NULL, N'LC43', N'GXP67', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1268', CAST(100000 AS Decimal(18, 0)), NULL, N'LC43', N'GXP68', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1269', CAST(100000 AS Decimal(18, 0)), NULL, N'LC43', N'GXP69', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP127', CAST(100000 AS Decimal(18, 0)), NULL, N'LC5', N'GXP127', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1270', CAST(100000 AS Decimal(18, 0)), NULL, N'LC43', N'GXP70', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1271', CAST(100000 AS Decimal(18, 0)), NULL, N'LC43', N'GXP71', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1272', CAST(100000 AS Decimal(18, 0)), NULL, N'LC43', N'GXP72', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1273', CAST(100000 AS Decimal(18, 0)), NULL, N'LC43', N'GXP73', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1274', CAST(100000 AS Decimal(18, 0)), NULL, N'LC43', N'GXP74', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1275', CAST(100000 AS Decimal(18, 0)), NULL, N'LC43', N'GXP75', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1276', CAST(100000 AS Decimal(18, 0)), NULL, N'LC43', N'GXP76', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1277', CAST(100000 AS Decimal(18, 0)), NULL, N'LC43', N'GXP77', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1278', CAST(100000 AS Decimal(18, 0)), NULL, N'LC43', N'GXP78', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1279', CAST(100000 AS Decimal(18, 0)), NULL, N'LC43', N'GXP79', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP128', CAST(100000 AS Decimal(18, 0)), NULL, N'LC5', N'GXP128', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1280', CAST(100000 AS Decimal(18, 0)), NULL, N'LC43', N'GXP80', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1281', CAST(100000 AS Decimal(18, 0)), NULL, N'LC43', N'GXP81', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1282', CAST(100000 AS Decimal(18, 0)), NULL, N'LC43', N'GXP82', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1283', CAST(100000 AS Decimal(18, 0)), NULL, N'LC43', N'GXP83', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1284', CAST(100000 AS Decimal(18, 0)), NULL, N'LC43', N'GXP84', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1285', CAST(100000 AS Decimal(18, 0)), NULL, N'LC43', N'GXP85', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1286', CAST(100000 AS Decimal(18, 0)), NULL, N'LC43', N'GXP86', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1287', CAST(100000 AS Decimal(18, 0)), NULL, N'LC43', N'GXP87', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1288', CAST(100000 AS Decimal(18, 0)), NULL, N'LC43', N'GXP88', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1289', CAST(100000 AS Decimal(18, 0)), NULL, N'LC43', N'GXP89', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP129', CAST(100000 AS Decimal(18, 0)), NULL, N'LC5', N'GXP129', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1290', CAST(100000 AS Decimal(18, 0)), NULL, N'LC43', N'GXP90', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1291', CAST(100000 AS Decimal(18, 0)), NULL, N'LC44', N'GXP91', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1292', CAST(100000 AS Decimal(18, 0)), NULL, N'LC44', N'GXP92', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1293', CAST(100000 AS Decimal(18, 0)), NULL, N'LC44', N'GXP93', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1294', CAST(100000 AS Decimal(18, 0)), NULL, N'LC44', N'GXP94', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1295', CAST(100000 AS Decimal(18, 0)), NULL, N'LC44', N'GXP95', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1296', CAST(100000 AS Decimal(18, 0)), NULL, N'LC44', N'GXP96', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1297', CAST(100000 AS Decimal(18, 0)), NULL, N'LC44', N'GXP97', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1298', CAST(100000 AS Decimal(18, 0)), NULL, N'LC44', N'GXP98', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1299', CAST(100000 AS Decimal(18, 0)), NULL, N'LC44', N'GXP99', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP13', CAST(100000 AS Decimal(18, 0)), N'HD4', N'LC1', N'GXP13', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP130', CAST(100000 AS Decimal(18, 0)), NULL, N'LC5', N'GXP130', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1300', CAST(100000 AS Decimal(18, 0)), NULL, N'LC44', N'GXP100', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1301', CAST(100000 AS Decimal(18, 0)), NULL, N'LC44', N'GXP101', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1302', CAST(100000 AS Decimal(18, 0)), NULL, N'LC44', N'GXP102', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1303', CAST(100000 AS Decimal(18, 0)), NULL, N'LC44', N'GXP103', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1304', CAST(100000 AS Decimal(18, 0)), NULL, N'LC44', N'GXP104', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1305', CAST(100000 AS Decimal(18, 0)), NULL, N'LC44', N'GXP105', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1306', CAST(100000 AS Decimal(18, 0)), NULL, N'LC44', N'GXP106', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1307', CAST(100000 AS Decimal(18, 0)), NULL, N'LC44', N'GXP107', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1308', CAST(100000 AS Decimal(18, 0)), NULL, N'LC44', N'GXP108', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1309', CAST(100000 AS Decimal(18, 0)), NULL, N'LC44', N'GXP109', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP131', CAST(100000 AS Decimal(18, 0)), NULL, N'LC5', N'GXP131', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1310', CAST(100000 AS Decimal(18, 0)), NULL, N'LC44', N'GXP110', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1311', CAST(100000 AS Decimal(18, 0)), NULL, N'LC44', N'GXP111', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1312', CAST(100000 AS Decimal(18, 0)), NULL, N'LC44', N'GXP112', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1313', CAST(100000 AS Decimal(18, 0)), NULL, N'LC44', N'GXP113', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1314', CAST(100000 AS Decimal(18, 0)), NULL, N'LC44', N'GXP114', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1315', CAST(100000 AS Decimal(18, 0)), NULL, N'LC44', N'GXP115', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1316', CAST(100000 AS Decimal(18, 0)), NULL, N'LC44', N'GXP116', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1317', CAST(100000 AS Decimal(18, 0)), NULL, N'LC44', N'GXP117', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1318', CAST(100000 AS Decimal(18, 0)), NULL, N'LC44', N'GXP118', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1319', CAST(100000 AS Decimal(18, 0)), NULL, N'LC44', N'GXP119', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP132', CAST(100000 AS Decimal(18, 0)), NULL, N'LC5', N'GXP132', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1320', CAST(100000 AS Decimal(18, 0)), NULL, N'LC44', N'GXP120', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1321', CAST(100000 AS Decimal(18, 0)), NULL, N'LC45', N'GXP121', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1322', CAST(100000 AS Decimal(18, 0)), NULL, N'LC45', N'GXP122', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1323', CAST(100000 AS Decimal(18, 0)), NULL, N'LC45', N'GXP123', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1324', CAST(100000 AS Decimal(18, 0)), NULL, N'LC45', N'GXP124', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1325', CAST(100000 AS Decimal(18, 0)), NULL, N'LC45', N'GXP125', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1326', CAST(100000 AS Decimal(18, 0)), NULL, N'LC45', N'GXP126', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1327', CAST(100000 AS Decimal(18, 0)), NULL, N'LC45', N'GXP127', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1328', CAST(100000 AS Decimal(18, 0)), NULL, N'LC45', N'GXP128', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1329', CAST(100000 AS Decimal(18, 0)), NULL, N'LC45', N'GXP129', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP133', CAST(100000 AS Decimal(18, 0)), NULL, N'LC5', N'GXP133', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1330', CAST(100000 AS Decimal(18, 0)), NULL, N'LC45', N'GXP130', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1331', CAST(100000 AS Decimal(18, 0)), NULL, N'LC45', N'GXP131', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1332', CAST(100000 AS Decimal(18, 0)), NULL, N'LC45', N'GXP132', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1333', CAST(100000 AS Decimal(18, 0)), NULL, N'LC45', N'GXP133', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1334', CAST(100000 AS Decimal(18, 0)), NULL, N'LC45', N'GXP134', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1335', CAST(100000 AS Decimal(18, 0)), NULL, N'LC45', N'GXP135', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1336', CAST(100000 AS Decimal(18, 0)), NULL, N'LC45', N'GXP136', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1337', CAST(100000 AS Decimal(18, 0)), NULL, N'LC45', N'GXP137', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1338', CAST(100000 AS Decimal(18, 0)), NULL, N'LC45', N'GXP138', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1339', CAST(100000 AS Decimal(18, 0)), NULL, N'LC45', N'GXP139', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP134', CAST(100000 AS Decimal(18, 0)), NULL, N'LC5', N'GXP134', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1340', CAST(100000 AS Decimal(18, 0)), NULL, N'LC45', N'GXP140', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1341', CAST(100000 AS Decimal(18, 0)), NULL, N'LC45', N'GXP141', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1342', CAST(100000 AS Decimal(18, 0)), NULL, N'LC45', N'GXP142', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1343', CAST(100000 AS Decimal(18, 0)), NULL, N'LC45', N'GXP143', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1344', CAST(100000 AS Decimal(18, 0)), NULL, N'LC45', N'GXP144', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1345', CAST(100000 AS Decimal(18, 0)), NULL, N'LC45', N'GXP145', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1346', CAST(100000 AS Decimal(18, 0)), NULL, N'LC45', N'GXP146', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1347', CAST(100000 AS Decimal(18, 0)), NULL, N'LC45', N'GXP147', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1348', CAST(100000 AS Decimal(18, 0)), NULL, N'LC45', N'GXP148', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1349', CAST(100000 AS Decimal(18, 0)), NULL, N'LC45', N'GXP149', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP135', CAST(100000 AS Decimal(18, 0)), NULL, N'LC5', N'GXP135', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1350', CAST(100000 AS Decimal(18, 0)), NULL, N'LC45', N'GXP150', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1351', CAST(100000 AS Decimal(18, 0)), NULL, N'LC46', N'GXP1', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1352', CAST(100000 AS Decimal(18, 0)), NULL, N'LC46', N'GXP2', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1353', CAST(100000 AS Decimal(18, 0)), NULL, N'LC46', N'GXP3', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1354', CAST(100000 AS Decimal(18, 0)), NULL, N'LC46', N'GXP4', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1355', CAST(100000 AS Decimal(18, 0)), NULL, N'LC46', N'GXP5', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1356', CAST(100000 AS Decimal(18, 0)), NULL, N'LC46', N'GXP6', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1357', CAST(100000 AS Decimal(18, 0)), NULL, N'LC46', N'GXP7', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1358', CAST(100000 AS Decimal(18, 0)), NULL, N'LC46', N'GXP8', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1359', CAST(100000 AS Decimal(18, 0)), NULL, N'LC46', N'GXP9', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP136', CAST(100000 AS Decimal(18, 0)), NULL, N'LC5', N'GXP136', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1360', CAST(100000 AS Decimal(18, 0)), NULL, N'LC46', N'GXP10', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1361', CAST(100000 AS Decimal(18, 0)), NULL, N'LC46', N'GXP11', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1362', CAST(100000 AS Decimal(18, 0)), NULL, N'LC46', N'GXP12', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1363', CAST(100000 AS Decimal(18, 0)), NULL, N'LC46', N'GXP13', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1364', CAST(100000 AS Decimal(18, 0)), NULL, N'LC46', N'GXP14', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1365', CAST(100000 AS Decimal(18, 0)), NULL, N'LC46', N'GXP15', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1366', CAST(100000 AS Decimal(18, 0)), NULL, N'LC46', N'GXP16', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1367', CAST(100000 AS Decimal(18, 0)), NULL, N'LC46', N'GXP17', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1368', CAST(100000 AS Decimal(18, 0)), NULL, N'LC46', N'GXP18', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1369', CAST(100000 AS Decimal(18, 0)), NULL, N'LC46', N'GXP19', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP137', CAST(100000 AS Decimal(18, 0)), NULL, N'LC5', N'GXP137', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1370', CAST(100000 AS Decimal(18, 0)), NULL, N'LC46', N'GXP20', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1371', CAST(100000 AS Decimal(18, 0)), NULL, N'LC46', N'GXP21', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1372', CAST(100000 AS Decimal(18, 0)), NULL, N'LC46', N'GXP22', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1373', CAST(100000 AS Decimal(18, 0)), NULL, N'LC46', N'GXP23', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1374', CAST(100000 AS Decimal(18, 0)), NULL, N'LC46', N'GXP24', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1375', CAST(100000 AS Decimal(18, 0)), NULL, N'LC46', N'GXP25', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1376', CAST(100000 AS Decimal(18, 0)), NULL, N'LC46', N'GXP26', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1377', CAST(100000 AS Decimal(18, 0)), NULL, N'LC46', N'GXP27', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1378', CAST(100000 AS Decimal(18, 0)), NULL, N'LC46', N'GXP28', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1379', CAST(100000 AS Decimal(18, 0)), NULL, N'LC46', N'GXP29', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP138', CAST(100000 AS Decimal(18, 0)), NULL, N'LC5', N'GXP138', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1380', CAST(100000 AS Decimal(18, 0)), NULL, N'LC46', N'GXP30', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1381', CAST(100000 AS Decimal(18, 0)), NULL, N'LC47', N'GXP31', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1382', CAST(100000 AS Decimal(18, 0)), NULL, N'LC47', N'GXP32', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1383', CAST(100000 AS Decimal(18, 0)), NULL, N'LC47', N'GXP33', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1384', CAST(100000 AS Decimal(18, 0)), NULL, N'LC47', N'GXP34', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1385', CAST(100000 AS Decimal(18, 0)), NULL, N'LC47', N'GXP35', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1386', CAST(100000 AS Decimal(18, 0)), NULL, N'LC47', N'GXP36', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1387', CAST(100000 AS Decimal(18, 0)), NULL, N'LC47', N'GXP37', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1388', CAST(100000 AS Decimal(18, 0)), NULL, N'LC47', N'GXP38', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1389', CAST(100000 AS Decimal(18, 0)), NULL, N'LC47', N'GXP39', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP139', CAST(100000 AS Decimal(18, 0)), NULL, N'LC5', N'GXP139', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1390', CAST(100000 AS Decimal(18, 0)), NULL, N'LC47', N'GXP40', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1391', CAST(100000 AS Decimal(18, 0)), NULL, N'LC47', N'GXP41', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1392', CAST(100000 AS Decimal(18, 0)), NULL, N'LC47', N'GXP42', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1393', CAST(100000 AS Decimal(18, 0)), NULL, N'LC47', N'GXP43', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1394', CAST(100000 AS Decimal(18, 0)), NULL, N'LC47', N'GXP44', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1395', CAST(100000 AS Decimal(18, 0)), NULL, N'LC47', N'GXP45', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1396', CAST(100000 AS Decimal(18, 0)), NULL, N'LC47', N'GXP46', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1397', CAST(100000 AS Decimal(18, 0)), NULL, N'LC47', N'GXP47', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1398', CAST(100000 AS Decimal(18, 0)), NULL, N'LC47', N'GXP48', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1399', CAST(100000 AS Decimal(18, 0)), NULL, N'LC47', N'GXP49', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP14', CAST(100000 AS Decimal(18, 0)), N'HD4', N'LC1', N'GXP14', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP140', CAST(100000 AS Decimal(18, 0)), NULL, N'LC5', N'GXP140', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1400', CAST(100000 AS Decimal(18, 0)), NULL, N'LC47', N'GXP50', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1401', CAST(100000 AS Decimal(18, 0)), NULL, N'LC47', N'GXP51', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1402', CAST(100000 AS Decimal(18, 0)), NULL, N'LC47', N'GXP52', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1403', CAST(100000 AS Decimal(18, 0)), NULL, N'LC47', N'GXP53', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1404', CAST(100000 AS Decimal(18, 0)), NULL, N'LC47', N'GXP54', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1405', CAST(100000 AS Decimal(18, 0)), NULL, N'LC47', N'GXP55', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1406', CAST(100000 AS Decimal(18, 0)), NULL, N'LC47', N'GXP56', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1407', CAST(100000 AS Decimal(18, 0)), NULL, N'LC47', N'GXP57', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1408', CAST(100000 AS Decimal(18, 0)), NULL, N'LC47', N'GXP58', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1409', CAST(100000 AS Decimal(18, 0)), NULL, N'LC47', N'GXP59', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP141', CAST(100000 AS Decimal(18, 0)), NULL, N'LC5', N'GXP141', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1410', CAST(100000 AS Decimal(18, 0)), NULL, N'LC47', N'GXP60', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1411', CAST(100000 AS Decimal(18, 0)), NULL, N'LC48', N'GXP61', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1412', CAST(100000 AS Decimal(18, 0)), NULL, N'LC48', N'GXP62', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1413', CAST(100000 AS Decimal(18, 0)), NULL, N'LC48', N'GXP63', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1414', CAST(100000 AS Decimal(18, 0)), NULL, N'LC48', N'GXP64', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1415', CAST(100000 AS Decimal(18, 0)), NULL, N'LC48', N'GXP65', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1416', CAST(100000 AS Decimal(18, 0)), NULL, N'LC48', N'GXP66', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1417', CAST(100000 AS Decimal(18, 0)), NULL, N'LC48', N'GXP67', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1418', CAST(100000 AS Decimal(18, 0)), NULL, N'LC48', N'GXP68', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1419', CAST(100000 AS Decimal(18, 0)), NULL, N'LC48', N'GXP69', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP142', CAST(100000 AS Decimal(18, 0)), NULL, N'LC5', N'GXP142', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1420', CAST(100000 AS Decimal(18, 0)), NULL, N'LC48', N'GXP70', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1421', CAST(100000 AS Decimal(18, 0)), NULL, N'LC48', N'GXP71', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1422', CAST(100000 AS Decimal(18, 0)), NULL, N'LC48', N'GXP72', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1423', CAST(100000 AS Decimal(18, 0)), NULL, N'LC48', N'GXP73', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1424', CAST(100000 AS Decimal(18, 0)), NULL, N'LC48', N'GXP74', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1425', CAST(100000 AS Decimal(18, 0)), NULL, N'LC48', N'GXP75', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1426', CAST(100000 AS Decimal(18, 0)), NULL, N'LC48', N'GXP76', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1427', CAST(100000 AS Decimal(18, 0)), NULL, N'LC48', N'GXP77', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1428', CAST(100000 AS Decimal(18, 0)), NULL, N'LC48', N'GXP78', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1429', CAST(100000 AS Decimal(18, 0)), NULL, N'LC48', N'GXP79', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP143', CAST(100000 AS Decimal(18, 0)), NULL, N'LC5', N'GXP143', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1430', CAST(100000 AS Decimal(18, 0)), NULL, N'LC48', N'GXP80', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1431', CAST(100000 AS Decimal(18, 0)), NULL, N'LC48', N'GXP81', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1432', CAST(100000 AS Decimal(18, 0)), NULL, N'LC48', N'GXP82', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1433', CAST(100000 AS Decimal(18, 0)), NULL, N'LC48', N'GXP83', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1434', CAST(100000 AS Decimal(18, 0)), NULL, N'LC48', N'GXP84', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1435', CAST(100000 AS Decimal(18, 0)), NULL, N'LC48', N'GXP85', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1436', CAST(100000 AS Decimal(18, 0)), NULL, N'LC48', N'GXP86', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1437', CAST(100000 AS Decimal(18, 0)), NULL, N'LC48', N'GXP87', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1438', CAST(100000 AS Decimal(18, 0)), NULL, N'LC48', N'GXP88', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1439', CAST(100000 AS Decimal(18, 0)), NULL, N'LC48', N'GXP89', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP144', CAST(100000 AS Decimal(18, 0)), NULL, N'LC5', N'GXP144', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1440', CAST(100000 AS Decimal(18, 0)), NULL, N'LC48', N'GXP90', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1441', CAST(100000 AS Decimal(18, 0)), NULL, N'LC49', N'GXP91', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1442', CAST(100000 AS Decimal(18, 0)), NULL, N'LC49', N'GXP92', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1443', CAST(100000 AS Decimal(18, 0)), NULL, N'LC49', N'GXP93', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1444', CAST(100000 AS Decimal(18, 0)), NULL, N'LC49', N'GXP94', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1445', CAST(100000 AS Decimal(18, 0)), NULL, N'LC49', N'GXP95', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1446', CAST(100000 AS Decimal(18, 0)), NULL, N'LC49', N'GXP96', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1447', CAST(100000 AS Decimal(18, 0)), NULL, N'LC49', N'GXP97', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1448', CAST(100000 AS Decimal(18, 0)), NULL, N'LC49', N'GXP98', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1449', CAST(100000 AS Decimal(18, 0)), NULL, N'LC49', N'GXP99', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP145', CAST(100000 AS Decimal(18, 0)), NULL, N'LC5', N'GXP145', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1450', CAST(100000 AS Decimal(18, 0)), NULL, N'LC49', N'GXP100', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1451', CAST(100000 AS Decimal(18, 0)), NULL, N'LC49', N'GXP101', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1452', CAST(100000 AS Decimal(18, 0)), NULL, N'LC49', N'GXP102', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1453', CAST(100000 AS Decimal(18, 0)), NULL, N'LC49', N'GXP103', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1454', CAST(100000 AS Decimal(18, 0)), NULL, N'LC49', N'GXP104', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1455', CAST(100000 AS Decimal(18, 0)), NULL, N'LC49', N'GXP105', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1456', CAST(100000 AS Decimal(18, 0)), NULL, N'LC49', N'GXP106', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1457', CAST(100000 AS Decimal(18, 0)), NULL, N'LC49', N'GXP107', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1458', CAST(100000 AS Decimal(18, 0)), NULL, N'LC49', N'GXP108', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1459', CAST(100000 AS Decimal(18, 0)), NULL, N'LC49', N'GXP109', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP146', CAST(100000 AS Decimal(18, 0)), NULL, N'LC5', N'GXP146', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1460', CAST(100000 AS Decimal(18, 0)), NULL, N'LC49', N'GXP110', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1461', CAST(100000 AS Decimal(18, 0)), NULL, N'LC49', N'GXP111', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1462', CAST(100000 AS Decimal(18, 0)), NULL, N'LC49', N'GXP112', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1463', CAST(100000 AS Decimal(18, 0)), NULL, N'LC49', N'GXP113', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1464', CAST(100000 AS Decimal(18, 0)), NULL, N'LC49', N'GXP114', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1465', CAST(100000 AS Decimal(18, 0)), NULL, N'LC49', N'GXP115', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1466', CAST(100000 AS Decimal(18, 0)), NULL, N'LC49', N'GXP116', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1467', CAST(100000 AS Decimal(18, 0)), NULL, N'LC49', N'GXP117', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1468', CAST(100000 AS Decimal(18, 0)), NULL, N'LC49', N'GXP118', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1469', CAST(100000 AS Decimal(18, 0)), NULL, N'LC49', N'GXP119', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP147', CAST(100000 AS Decimal(18, 0)), NULL, N'LC5', N'GXP147', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1470', CAST(100000 AS Decimal(18, 0)), NULL, N'LC49', N'GXP120', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1471', CAST(100000 AS Decimal(18, 0)), NULL, N'LC50', N'GXP121', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1472', CAST(100000 AS Decimal(18, 0)), NULL, N'LC50', N'GXP122', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1473', CAST(100000 AS Decimal(18, 0)), NULL, N'LC50', N'GXP123', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1474', CAST(100000 AS Decimal(18, 0)), NULL, N'LC50', N'GXP124', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1475', CAST(100000 AS Decimal(18, 0)), NULL, N'LC50', N'GXP125', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1476', CAST(100000 AS Decimal(18, 0)), NULL, N'LC50', N'GXP126', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1477', CAST(100000 AS Decimal(18, 0)), NULL, N'LC50', N'GXP127', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1478', CAST(100000 AS Decimal(18, 0)), NULL, N'LC50', N'GXP128', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1479', CAST(100000 AS Decimal(18, 0)), NULL, N'LC50', N'GXP129', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP148', CAST(100000 AS Decimal(18, 0)), NULL, N'LC5', N'GXP148', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1480', CAST(100000 AS Decimal(18, 0)), NULL, N'LC50', N'GXP130', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1481', CAST(100000 AS Decimal(18, 0)), NULL, N'LC50', N'GXP131', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1482', CAST(100000 AS Decimal(18, 0)), NULL, N'LC50', N'GXP132', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1483', CAST(100000 AS Decimal(18, 0)), NULL, N'LC50', N'GXP133', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1484', CAST(100000 AS Decimal(18, 0)), NULL, N'LC50', N'GXP134', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1485', CAST(100000 AS Decimal(18, 0)), NULL, N'LC50', N'GXP135', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1486', CAST(100000 AS Decimal(18, 0)), NULL, N'LC50', N'GXP136', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1487', CAST(100000 AS Decimal(18, 0)), NULL, N'LC50', N'GXP137', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1488', CAST(100000 AS Decimal(18, 0)), NULL, N'LC50', N'GXP138', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1489', CAST(100000 AS Decimal(18, 0)), NULL, N'LC50', N'GXP139', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP149', CAST(100000 AS Decimal(18, 0)), NULL, N'LC5', N'GXP149', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1490', CAST(100000 AS Decimal(18, 0)), NULL, N'LC50', N'GXP140', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1491', CAST(100000 AS Decimal(18, 0)), NULL, N'LC50', N'GXP141', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1492', CAST(100000 AS Decimal(18, 0)), N'HD56', N'LC50', N'GXP142', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1493', CAST(100000 AS Decimal(18, 0)), N'HD56', N'LC50', N'GXP143', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1494', CAST(100000 AS Decimal(18, 0)), N'HD57', N'LC50', N'GXP144', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1495', CAST(100000 AS Decimal(18, 0)), N'HD58', N'LC50', N'GXP145', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1496', CAST(100000 AS Decimal(18, 0)), N'HD58', N'LC50', N'GXP146', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1497', CAST(100000 AS Decimal(18, 0)), N'HD59', N'LC50', N'GXP147', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1498', CAST(100000 AS Decimal(18, 0)), N'HD59', N'LC50', N'GXP148', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1499', CAST(100000 AS Decimal(18, 0)), N'HD60', N'LC50', N'GXP149', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP15', CAST(100000 AS Decimal(18, 0)), N'HD4', N'LC1', N'GXP15', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP150', CAST(100000 AS Decimal(18, 0)), NULL, N'LC5', N'GXP150', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1500', CAST(100000 AS Decimal(18, 0)), N'HD60', N'LC50', N'GXP150', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1501', CAST(100000 AS Decimal(18, 0)), NULL, N'LC51', N'GXP1', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1502', CAST(100000 AS Decimal(18, 0)), NULL, N'LC51', N'GXP2', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1503', CAST(100000 AS Decimal(18, 0)), NULL, N'LC51', N'GXP3', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1504', CAST(100000 AS Decimal(18, 0)), NULL, N'LC51', N'GXP4', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1505', CAST(100000 AS Decimal(18, 0)), NULL, N'LC51', N'GXP5', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1506', CAST(100000 AS Decimal(18, 0)), NULL, N'LC51', N'GXP6', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1507', CAST(100000 AS Decimal(18, 0)), NULL, N'LC51', N'GXP7', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1508', CAST(100000 AS Decimal(18, 0)), NULL, N'LC51', N'GXP8', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1509', CAST(100000 AS Decimal(18, 0)), NULL, N'LC51', N'GXP9', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP151', CAST(100000 AS Decimal(18, 0)), NULL, N'LC6', N'GXP1', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1510', CAST(100000 AS Decimal(18, 0)), NULL, N'LC51', N'GXP10', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1511', CAST(100000 AS Decimal(18, 0)), NULL, N'LC51', N'GXP11', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1512', CAST(100000 AS Decimal(18, 0)), NULL, N'LC51', N'GXP12', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1513', CAST(100000 AS Decimal(18, 0)), NULL, N'LC51', N'GXP13', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1514', CAST(100000 AS Decimal(18, 0)), NULL, N'LC51', N'GXP14', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1515', CAST(100000 AS Decimal(18, 0)), NULL, N'LC51', N'GXP15', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1516', CAST(100000 AS Decimal(18, 0)), NULL, N'LC51', N'GXP16', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1517', CAST(100000 AS Decimal(18, 0)), NULL, N'LC51', N'GXP17', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1518', CAST(100000 AS Decimal(18, 0)), NULL, N'LC51', N'GXP18', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1519', CAST(100000 AS Decimal(18, 0)), NULL, N'LC51', N'GXP19', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP152', CAST(100000 AS Decimal(18, 0)), NULL, N'LC6', N'GXP2', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1520', CAST(100000 AS Decimal(18, 0)), NULL, N'LC51', N'GXP20', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1521', CAST(100000 AS Decimal(18, 0)), NULL, N'LC51', N'GXP21', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1522', CAST(100000 AS Decimal(18, 0)), NULL, N'LC51', N'GXP22', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1523', CAST(100000 AS Decimal(18, 0)), NULL, N'LC51', N'GXP23', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1524', CAST(100000 AS Decimal(18, 0)), NULL, N'LC51', N'GXP24', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1525', CAST(100000 AS Decimal(18, 0)), NULL, N'LC51', N'GXP25', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1526', CAST(100000 AS Decimal(18, 0)), NULL, N'LC51', N'GXP26', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1527', CAST(100000 AS Decimal(18, 0)), NULL, N'LC51', N'GXP27', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1528', CAST(100000 AS Decimal(18, 0)), NULL, N'LC51', N'GXP28', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1529', CAST(100000 AS Decimal(18, 0)), NULL, N'LC51', N'GXP29', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP153', CAST(100000 AS Decimal(18, 0)), NULL, N'LC6', N'GXP3', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1530', CAST(100000 AS Decimal(18, 0)), NULL, N'LC51', N'GXP30', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1531', CAST(100000 AS Decimal(18, 0)), NULL, N'LC52', N'GXP31', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1532', CAST(100000 AS Decimal(18, 0)), NULL, N'LC52', N'GXP32', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1533', CAST(100000 AS Decimal(18, 0)), NULL, N'LC52', N'GXP33', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1534', CAST(100000 AS Decimal(18, 0)), NULL, N'LC52', N'GXP34', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1535', CAST(100000 AS Decimal(18, 0)), NULL, N'LC52', N'GXP35', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1536', CAST(100000 AS Decimal(18, 0)), NULL, N'LC52', N'GXP36', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1537', CAST(100000 AS Decimal(18, 0)), NULL, N'LC52', N'GXP37', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1538', CAST(100000 AS Decimal(18, 0)), NULL, N'LC52', N'GXP38', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1539', CAST(100000 AS Decimal(18, 0)), NULL, N'LC52', N'GXP39', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP154', CAST(100000 AS Decimal(18, 0)), NULL, N'LC6', N'GXP4', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1540', CAST(100000 AS Decimal(18, 0)), NULL, N'LC52', N'GXP40', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1541', CAST(100000 AS Decimal(18, 0)), NULL, N'LC52', N'GXP41', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1542', CAST(100000 AS Decimal(18, 0)), NULL, N'LC52', N'GXP42', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1543', CAST(100000 AS Decimal(18, 0)), NULL, N'LC52', N'GXP43', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1544', CAST(100000 AS Decimal(18, 0)), NULL, N'LC52', N'GXP44', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1545', CAST(100000 AS Decimal(18, 0)), NULL, N'LC52', N'GXP45', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1546', CAST(100000 AS Decimal(18, 0)), NULL, N'LC52', N'GXP46', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1547', CAST(100000 AS Decimal(18, 0)), NULL, N'LC52', N'GXP47', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1548', CAST(100000 AS Decimal(18, 0)), NULL, N'LC52', N'GXP48', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1549', CAST(100000 AS Decimal(18, 0)), NULL, N'LC52', N'GXP49', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP155', CAST(100000 AS Decimal(18, 0)), NULL, N'LC6', N'GXP5', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1550', CAST(100000 AS Decimal(18, 0)), NULL, N'LC52', N'GXP50', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1551', CAST(100000 AS Decimal(18, 0)), NULL, N'LC52', N'GXP51', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1552', CAST(100000 AS Decimal(18, 0)), NULL, N'LC52', N'GXP52', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1553', CAST(100000 AS Decimal(18, 0)), NULL, N'LC52', N'GXP53', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1554', CAST(100000 AS Decimal(18, 0)), NULL, N'LC52', N'GXP54', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1555', CAST(100000 AS Decimal(18, 0)), NULL, N'LC52', N'GXP55', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1556', CAST(100000 AS Decimal(18, 0)), NULL, N'LC52', N'GXP56', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1557', CAST(100000 AS Decimal(18, 0)), NULL, N'LC52', N'GXP57', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1558', CAST(100000 AS Decimal(18, 0)), NULL, N'LC52', N'GXP58', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1559', CAST(100000 AS Decimal(18, 0)), NULL, N'LC52', N'GXP59', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP156', CAST(100000 AS Decimal(18, 0)), NULL, N'LC6', N'GXP6', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1560', CAST(100000 AS Decimal(18, 0)), NULL, N'LC52', N'GXP60', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1561', CAST(100000 AS Decimal(18, 0)), NULL, N'LC53', N'GXP61', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1562', CAST(100000 AS Decimal(18, 0)), NULL, N'LC53', N'GXP62', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1563', CAST(100000 AS Decimal(18, 0)), NULL, N'LC53', N'GXP63', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1564', CAST(100000 AS Decimal(18, 0)), NULL, N'LC53', N'GXP64', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1565', CAST(100000 AS Decimal(18, 0)), NULL, N'LC53', N'GXP65', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1566', CAST(100000 AS Decimal(18, 0)), NULL, N'LC53', N'GXP66', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1567', CAST(100000 AS Decimal(18, 0)), NULL, N'LC53', N'GXP67', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1568', CAST(100000 AS Decimal(18, 0)), NULL, N'LC53', N'GXP68', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1569', CAST(100000 AS Decimal(18, 0)), NULL, N'LC53', N'GXP69', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP157', CAST(100000 AS Decimal(18, 0)), NULL, N'LC6', N'GXP7', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1570', CAST(100000 AS Decimal(18, 0)), NULL, N'LC53', N'GXP70', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1571', CAST(100000 AS Decimal(18, 0)), NULL, N'LC53', N'GXP71', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1572', CAST(100000 AS Decimal(18, 0)), NULL, N'LC53', N'GXP72', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1573', CAST(100000 AS Decimal(18, 0)), NULL, N'LC53', N'GXP73', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1574', CAST(100000 AS Decimal(18, 0)), NULL, N'LC53', N'GXP74', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1575', CAST(100000 AS Decimal(18, 0)), NULL, N'LC53', N'GXP75', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1576', CAST(100000 AS Decimal(18, 0)), NULL, N'LC53', N'GXP76', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1577', CAST(100000 AS Decimal(18, 0)), NULL, N'LC53', N'GXP77', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1578', CAST(100000 AS Decimal(18, 0)), NULL, N'LC53', N'GXP78', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1579', CAST(100000 AS Decimal(18, 0)), NULL, N'LC53', N'GXP79', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP158', CAST(100000 AS Decimal(18, 0)), NULL, N'LC6', N'GXP8', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1580', CAST(100000 AS Decimal(18, 0)), NULL, N'LC53', N'GXP80', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1581', CAST(100000 AS Decimal(18, 0)), NULL, N'LC53', N'GXP81', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1582', CAST(100000 AS Decimal(18, 0)), NULL, N'LC53', N'GXP82', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1583', CAST(100000 AS Decimal(18, 0)), NULL, N'LC53', N'GXP83', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1584', CAST(100000 AS Decimal(18, 0)), NULL, N'LC53', N'GXP84', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1585', CAST(100000 AS Decimal(18, 0)), NULL, N'LC53', N'GXP85', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1586', CAST(100000 AS Decimal(18, 0)), NULL, N'LC53', N'GXP86', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1587', CAST(100000 AS Decimal(18, 0)), NULL, N'LC53', N'GXP87', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1588', CAST(100000 AS Decimal(18, 0)), NULL, N'LC53', N'GXP88', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1589', CAST(100000 AS Decimal(18, 0)), NULL, N'LC53', N'GXP89', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP159', CAST(100000 AS Decimal(18, 0)), NULL, N'LC6', N'GXP9', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1590', CAST(100000 AS Decimal(18, 0)), NULL, N'LC53', N'GXP90', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1591', CAST(100000 AS Decimal(18, 0)), NULL, N'LC54', N'GXP91', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1592', CAST(100000 AS Decimal(18, 0)), NULL, N'LC54', N'GXP92', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1593', CAST(100000 AS Decimal(18, 0)), NULL, N'LC54', N'GXP93', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1594', CAST(100000 AS Decimal(18, 0)), NULL, N'LC54', N'GXP94', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1595', CAST(100000 AS Decimal(18, 0)), NULL, N'LC54', N'GXP95', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1596', CAST(100000 AS Decimal(18, 0)), NULL, N'LC54', N'GXP96', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1597', CAST(100000 AS Decimal(18, 0)), NULL, N'LC54', N'GXP97', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1598', CAST(100000 AS Decimal(18, 0)), NULL, N'LC54', N'GXP98', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1599', CAST(100000 AS Decimal(18, 0)), NULL, N'LC54', N'GXP99', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP16', CAST(100000 AS Decimal(18, 0)), N'HD5', N'LC1', N'GXP16', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP160', CAST(100000 AS Decimal(18, 0)), NULL, N'LC6', N'GXP10', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1600', CAST(100000 AS Decimal(18, 0)), NULL, N'LC54', N'GXP100', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1601', CAST(100000 AS Decimal(18, 0)), NULL, N'LC54', N'GXP101', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1602', CAST(100000 AS Decimal(18, 0)), NULL, N'LC54', N'GXP102', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1603', CAST(100000 AS Decimal(18, 0)), NULL, N'LC54', N'GXP103', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1604', CAST(100000 AS Decimal(18, 0)), NULL, N'LC54', N'GXP104', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1605', CAST(100000 AS Decimal(18, 0)), NULL, N'LC54', N'GXP105', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1606', CAST(100000 AS Decimal(18, 0)), NULL, N'LC54', N'GXP106', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1607', CAST(100000 AS Decimal(18, 0)), NULL, N'LC54', N'GXP107', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1608', CAST(100000 AS Decimal(18, 0)), NULL, N'LC54', N'GXP108', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1609', CAST(100000 AS Decimal(18, 0)), NULL, N'LC54', N'GXP109', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP161', CAST(100000 AS Decimal(18, 0)), NULL, N'LC6', N'GXP11', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1610', CAST(100000 AS Decimal(18, 0)), NULL, N'LC54', N'GXP110', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1611', CAST(100000 AS Decimal(18, 0)), NULL, N'LC54', N'GXP111', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1612', CAST(100000 AS Decimal(18, 0)), NULL, N'LC54', N'GXP112', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1613', CAST(100000 AS Decimal(18, 0)), NULL, N'LC54', N'GXP113', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1614', CAST(100000 AS Decimal(18, 0)), NULL, N'LC54', N'GXP114', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1615', CAST(100000 AS Decimal(18, 0)), NULL, N'LC54', N'GXP115', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1616', CAST(100000 AS Decimal(18, 0)), NULL, N'LC54', N'GXP116', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1617', CAST(100000 AS Decimal(18, 0)), NULL, N'LC54', N'GXP117', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1618', CAST(100000 AS Decimal(18, 0)), NULL, N'LC54', N'GXP118', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1619', CAST(100000 AS Decimal(18, 0)), NULL, N'LC54', N'GXP119', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP162', CAST(100000 AS Decimal(18, 0)), NULL, N'LC6', N'GXP12', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1620', CAST(100000 AS Decimal(18, 0)), NULL, N'LC54', N'GXP120', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1621', CAST(100000 AS Decimal(18, 0)), NULL, N'LC55', N'GXP121', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1622', CAST(100000 AS Decimal(18, 0)), NULL, N'LC55', N'GXP122', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1623', CAST(100000 AS Decimal(18, 0)), NULL, N'LC55', N'GXP123', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1624', CAST(100000 AS Decimal(18, 0)), NULL, N'LC55', N'GXP124', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1625', CAST(100000 AS Decimal(18, 0)), NULL, N'LC55', N'GXP125', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1626', CAST(100000 AS Decimal(18, 0)), NULL, N'LC55', N'GXP126', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1627', CAST(100000 AS Decimal(18, 0)), NULL, N'LC55', N'GXP127', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1628', CAST(100000 AS Decimal(18, 0)), NULL, N'LC55', N'GXP128', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1629', CAST(100000 AS Decimal(18, 0)), NULL, N'LC55', N'GXP129', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP163', CAST(100000 AS Decimal(18, 0)), NULL, N'LC6', N'GXP13', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1630', CAST(100000 AS Decimal(18, 0)), NULL, N'LC55', N'GXP130', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1631', CAST(100000 AS Decimal(18, 0)), NULL, N'LC55', N'GXP131', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1632', CAST(100000 AS Decimal(18, 0)), NULL, N'LC55', N'GXP132', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1633', CAST(100000 AS Decimal(18, 0)), NULL, N'LC55', N'GXP133', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1634', CAST(100000 AS Decimal(18, 0)), NULL, N'LC55', N'GXP134', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1635', CAST(100000 AS Decimal(18, 0)), NULL, N'LC55', N'GXP135', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1636', CAST(100000 AS Decimal(18, 0)), NULL, N'LC55', N'GXP136', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1637', CAST(100000 AS Decimal(18, 0)), NULL, N'LC55', N'GXP137', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1638', CAST(100000 AS Decimal(18, 0)), NULL, N'LC55', N'GXP138', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1639', CAST(100000 AS Decimal(18, 0)), NULL, N'LC55', N'GXP139', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP164', CAST(100000 AS Decimal(18, 0)), NULL, N'LC6', N'GXP14', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1640', CAST(100000 AS Decimal(18, 0)), NULL, N'LC55', N'GXP140', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1641', CAST(100000 AS Decimal(18, 0)), NULL, N'LC55', N'GXP141', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1642', CAST(100000 AS Decimal(18, 0)), NULL, N'LC55', N'GXP142', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1643', CAST(100000 AS Decimal(18, 0)), NULL, N'LC55', N'GXP143', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1644', CAST(100000 AS Decimal(18, 0)), NULL, N'LC55', N'GXP144', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1645', CAST(100000 AS Decimal(18, 0)), NULL, N'LC55', N'GXP145', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1646', CAST(100000 AS Decimal(18, 0)), NULL, N'LC55', N'GXP146', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1647', CAST(100000 AS Decimal(18, 0)), NULL, N'LC55', N'GXP147', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1648', CAST(100000 AS Decimal(18, 0)), NULL, N'LC55', N'GXP148', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1649', CAST(100000 AS Decimal(18, 0)), NULL, N'LC55', N'GXP149', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP165', CAST(100000 AS Decimal(18, 0)), NULL, N'LC6', N'GXP15', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1650', CAST(100000 AS Decimal(18, 0)), NULL, N'LC55', N'GXP150', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1651', CAST(100000 AS Decimal(18, 0)), NULL, N'LC56', N'GXP1', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1652', CAST(100000 AS Decimal(18, 0)), NULL, N'LC56', N'GXP2', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1653', CAST(100000 AS Decimal(18, 0)), NULL, N'LC56', N'GXP3', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1654', CAST(100000 AS Decimal(18, 0)), NULL, N'LC56', N'GXP4', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1655', CAST(100000 AS Decimal(18, 0)), NULL, N'LC56', N'GXP5', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1656', CAST(100000 AS Decimal(18, 0)), NULL, N'LC56', N'GXP6', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1657', CAST(100000 AS Decimal(18, 0)), NULL, N'LC56', N'GXP7', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1658', CAST(100000 AS Decimal(18, 0)), NULL, N'LC56', N'GXP8', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1659', CAST(100000 AS Decimal(18, 0)), NULL, N'LC56', N'GXP9', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP166', CAST(100000 AS Decimal(18, 0)), NULL, N'LC6', N'GXP16', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1660', CAST(100000 AS Decimal(18, 0)), NULL, N'LC56', N'GXP10', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1661', CAST(100000 AS Decimal(18, 0)), NULL, N'LC56', N'GXP11', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1662', CAST(100000 AS Decimal(18, 0)), NULL, N'LC56', N'GXP12', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1663', CAST(100000 AS Decimal(18, 0)), NULL, N'LC56', N'GXP13', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1664', CAST(100000 AS Decimal(18, 0)), NULL, N'LC56', N'GXP14', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1665', CAST(100000 AS Decimal(18, 0)), NULL, N'LC56', N'GXP15', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1666', CAST(100000 AS Decimal(18, 0)), NULL, N'LC56', N'GXP16', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1667', CAST(100000 AS Decimal(18, 0)), NULL, N'LC56', N'GXP17', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1668', CAST(100000 AS Decimal(18, 0)), NULL, N'LC56', N'GXP18', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1669', CAST(100000 AS Decimal(18, 0)), NULL, N'LC56', N'GXP19', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP167', CAST(100000 AS Decimal(18, 0)), NULL, N'LC6', N'GXP17', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1670', CAST(100000 AS Decimal(18, 0)), NULL, N'LC56', N'GXP20', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1671', CAST(100000 AS Decimal(18, 0)), NULL, N'LC56', N'GXP21', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1672', CAST(100000 AS Decimal(18, 0)), NULL, N'LC56', N'GXP22', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1673', CAST(100000 AS Decimal(18, 0)), NULL, N'LC56', N'GXP23', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1674', CAST(100000 AS Decimal(18, 0)), NULL, N'LC56', N'GXP24', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1675', CAST(100000 AS Decimal(18, 0)), NULL, N'LC56', N'GXP25', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1676', CAST(100000 AS Decimal(18, 0)), NULL, N'LC56', N'GXP26', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1677', CAST(100000 AS Decimal(18, 0)), NULL, N'LC56', N'GXP27', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1678', CAST(100000 AS Decimal(18, 0)), NULL, N'LC56', N'GXP28', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1679', CAST(100000 AS Decimal(18, 0)), NULL, N'LC56', N'GXP29', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP168', CAST(100000 AS Decimal(18, 0)), NULL, N'LC6', N'GXP18', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1680', CAST(100000 AS Decimal(18, 0)), NULL, N'LC56', N'GXP30', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1681', CAST(100000 AS Decimal(18, 0)), NULL, N'LC57', N'GXP31', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1682', CAST(100000 AS Decimal(18, 0)), NULL, N'LC57', N'GXP32', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1683', CAST(100000 AS Decimal(18, 0)), NULL, N'LC57', N'GXP33', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1684', CAST(100000 AS Decimal(18, 0)), NULL, N'LC57', N'GXP34', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1685', CAST(100000 AS Decimal(18, 0)), NULL, N'LC57', N'GXP35', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1686', CAST(100000 AS Decimal(18, 0)), NULL, N'LC57', N'GXP36', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1687', CAST(100000 AS Decimal(18, 0)), NULL, N'LC57', N'GXP37', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1688', CAST(100000 AS Decimal(18, 0)), NULL, N'LC57', N'GXP38', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1689', CAST(100000 AS Decimal(18, 0)), NULL, N'LC57', N'GXP39', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP169', CAST(100000 AS Decimal(18, 0)), NULL, N'LC6', N'GXP19', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1690', CAST(100000 AS Decimal(18, 0)), NULL, N'LC57', N'GXP40', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1691', CAST(100000 AS Decimal(18, 0)), NULL, N'LC57', N'GXP41', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1692', CAST(100000 AS Decimal(18, 0)), NULL, N'LC57', N'GXP42', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1693', CAST(100000 AS Decimal(18, 0)), NULL, N'LC57', N'GXP43', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1694', CAST(100000 AS Decimal(18, 0)), NULL, N'LC57', N'GXP44', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1695', CAST(100000 AS Decimal(18, 0)), NULL, N'LC57', N'GXP45', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1696', CAST(100000 AS Decimal(18, 0)), NULL, N'LC57', N'GXP46', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1697', CAST(100000 AS Decimal(18, 0)), NULL, N'LC57', N'GXP47', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1698', CAST(100000 AS Decimal(18, 0)), NULL, N'LC57', N'GXP48', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1699', CAST(100000 AS Decimal(18, 0)), NULL, N'LC57', N'GXP49', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP17', CAST(100000 AS Decimal(18, 0)), N'HD5', N'LC1', N'GXP17', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP170', CAST(100000 AS Decimal(18, 0)), NULL, N'LC6', N'GXP20', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1700', CAST(100000 AS Decimal(18, 0)), NULL, N'LC57', N'GXP50', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1701', CAST(100000 AS Decimal(18, 0)), NULL, N'LC57', N'GXP51', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1702', CAST(100000 AS Decimal(18, 0)), NULL, N'LC57', N'GXP52', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1703', CAST(100000 AS Decimal(18, 0)), NULL, N'LC57', N'GXP53', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1704', CAST(100000 AS Decimal(18, 0)), NULL, N'LC57', N'GXP54', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1705', CAST(100000 AS Decimal(18, 0)), NULL, N'LC57', N'GXP55', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1706', CAST(100000 AS Decimal(18, 0)), NULL, N'LC57', N'GXP56', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1707', CAST(100000 AS Decimal(18, 0)), NULL, N'LC57', N'GXP57', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1708', CAST(100000 AS Decimal(18, 0)), NULL, N'LC57', N'GXP58', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1709', CAST(100000 AS Decimal(18, 0)), NULL, N'LC57', N'GXP59', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP171', CAST(100000 AS Decimal(18, 0)), NULL, N'LC6', N'GXP21', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1710', CAST(100000 AS Decimal(18, 0)), NULL, N'LC57', N'GXP60', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1711', CAST(100000 AS Decimal(18, 0)), NULL, N'LC58', N'GXP61', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1712', CAST(100000 AS Decimal(18, 0)), NULL, N'LC58', N'GXP62', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1713', CAST(100000 AS Decimal(18, 0)), NULL, N'LC58', N'GXP63', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1714', CAST(100000 AS Decimal(18, 0)), NULL, N'LC58', N'GXP64', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1715', CAST(100000 AS Decimal(18, 0)), NULL, N'LC58', N'GXP65', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1716', CAST(100000 AS Decimal(18, 0)), NULL, N'LC58', N'GXP66', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1717', CAST(100000 AS Decimal(18, 0)), NULL, N'LC58', N'GXP67', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1718', CAST(100000 AS Decimal(18, 0)), NULL, N'LC58', N'GXP68', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1719', CAST(100000 AS Decimal(18, 0)), NULL, N'LC58', N'GXP69', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP172', CAST(100000 AS Decimal(18, 0)), NULL, N'LC6', N'GXP22', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1720', CAST(100000 AS Decimal(18, 0)), NULL, N'LC58', N'GXP70', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1721', CAST(100000 AS Decimal(18, 0)), NULL, N'LC58', N'GXP71', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1722', CAST(100000 AS Decimal(18, 0)), NULL, N'LC58', N'GXP72', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1723', CAST(100000 AS Decimal(18, 0)), NULL, N'LC58', N'GXP73', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1724', CAST(100000 AS Decimal(18, 0)), NULL, N'LC58', N'GXP74', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1725', CAST(100000 AS Decimal(18, 0)), NULL, N'LC58', N'GXP75', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1726', CAST(100000 AS Decimal(18, 0)), NULL, N'LC58', N'GXP76', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1727', CAST(100000 AS Decimal(18, 0)), NULL, N'LC58', N'GXP77', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1728', CAST(100000 AS Decimal(18, 0)), NULL, N'LC58', N'GXP78', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1729', CAST(100000 AS Decimal(18, 0)), NULL, N'LC58', N'GXP79', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP173', CAST(100000 AS Decimal(18, 0)), NULL, N'LC6', N'GXP23', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1730', CAST(100000 AS Decimal(18, 0)), NULL, N'LC58', N'GXP80', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1731', CAST(100000 AS Decimal(18, 0)), NULL, N'LC58', N'GXP81', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1732', CAST(100000 AS Decimal(18, 0)), NULL, N'LC58', N'GXP82', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1733', CAST(100000 AS Decimal(18, 0)), NULL, N'LC58', N'GXP83', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1734', CAST(100000 AS Decimal(18, 0)), NULL, N'LC58', N'GXP84', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1735', CAST(100000 AS Decimal(18, 0)), NULL, N'LC58', N'GXP85', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1736', CAST(100000 AS Decimal(18, 0)), NULL, N'LC58', N'GXP86', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1737', CAST(100000 AS Decimal(18, 0)), NULL, N'LC58', N'GXP87', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1738', CAST(100000 AS Decimal(18, 0)), NULL, N'LC58', N'GXP88', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1739', CAST(100000 AS Decimal(18, 0)), NULL, N'LC58', N'GXP89', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP174', CAST(100000 AS Decimal(18, 0)), NULL, N'LC6', N'GXP24', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1740', CAST(100000 AS Decimal(18, 0)), NULL, N'LC58', N'GXP90', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1741', CAST(100000 AS Decimal(18, 0)), NULL, N'LC59', N'GXP91', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1742', CAST(100000 AS Decimal(18, 0)), NULL, N'LC59', N'GXP92', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1743', CAST(100000 AS Decimal(18, 0)), NULL, N'LC59', N'GXP93', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1744', CAST(100000 AS Decimal(18, 0)), NULL, N'LC59', N'GXP94', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1745', CAST(100000 AS Decimal(18, 0)), NULL, N'LC59', N'GXP95', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1746', CAST(100000 AS Decimal(18, 0)), NULL, N'LC59', N'GXP96', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1747', CAST(100000 AS Decimal(18, 0)), NULL, N'LC59', N'GXP97', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1748', CAST(100000 AS Decimal(18, 0)), NULL, N'LC59', N'GXP98', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1749', CAST(100000 AS Decimal(18, 0)), NULL, N'LC59', N'GXP99', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP175', CAST(100000 AS Decimal(18, 0)), NULL, N'LC6', N'GXP25', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1750', CAST(100000 AS Decimal(18, 0)), NULL, N'LC59', N'GXP100', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1751', CAST(100000 AS Decimal(18, 0)), NULL, N'LC59', N'GXP101', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1752', CAST(100000 AS Decimal(18, 0)), NULL, N'LC59', N'GXP102', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1753', CAST(100000 AS Decimal(18, 0)), NULL, N'LC59', N'GXP103', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1754', CAST(100000 AS Decimal(18, 0)), NULL, N'LC59', N'GXP104', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1755', CAST(100000 AS Decimal(18, 0)), NULL, N'LC59', N'GXP105', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1756', CAST(100000 AS Decimal(18, 0)), NULL, N'LC59', N'GXP106', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1757', CAST(100000 AS Decimal(18, 0)), NULL, N'LC59', N'GXP107', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1758', CAST(100000 AS Decimal(18, 0)), NULL, N'LC59', N'GXP108', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1759', CAST(100000 AS Decimal(18, 0)), NULL, N'LC59', N'GXP109', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP176', CAST(100000 AS Decimal(18, 0)), NULL, N'LC6', N'GXP26', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1760', CAST(100000 AS Decimal(18, 0)), NULL, N'LC59', N'GXP110', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1761', CAST(100000 AS Decimal(18, 0)), NULL, N'LC59', N'GXP111', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1762', CAST(100000 AS Decimal(18, 0)), NULL, N'LC59', N'GXP112', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1763', CAST(100000 AS Decimal(18, 0)), NULL, N'LC59', N'GXP113', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1764', CAST(100000 AS Decimal(18, 0)), NULL, N'LC59', N'GXP114', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1765', CAST(100000 AS Decimal(18, 0)), NULL, N'LC59', N'GXP115', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1766', CAST(100000 AS Decimal(18, 0)), NULL, N'LC59', N'GXP116', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1767', CAST(100000 AS Decimal(18, 0)), NULL, N'LC59', N'GXP117', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1768', CAST(100000 AS Decimal(18, 0)), NULL, N'LC59', N'GXP118', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1769', CAST(100000 AS Decimal(18, 0)), NULL, N'LC59', N'GXP119', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP177', CAST(100000 AS Decimal(18, 0)), NULL, N'LC6', N'GXP27', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1770', CAST(100000 AS Decimal(18, 0)), NULL, N'LC59', N'GXP120', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1771', CAST(100000 AS Decimal(18, 0)), NULL, N'LC60', N'GXP121', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1772', CAST(100000 AS Decimal(18, 0)), NULL, N'LC60', N'GXP122', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1773', CAST(100000 AS Decimal(18, 0)), NULL, N'LC60', N'GXP123', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1774', CAST(100000 AS Decimal(18, 0)), NULL, N'LC60', N'GXP124', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1775', CAST(100000 AS Decimal(18, 0)), NULL, N'LC60', N'GXP125', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1776', CAST(100000 AS Decimal(18, 0)), NULL, N'LC60', N'GXP126', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1777', CAST(100000 AS Decimal(18, 0)), NULL, N'LC60', N'GXP127', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1778', CAST(100000 AS Decimal(18, 0)), NULL, N'LC60', N'GXP128', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1779', CAST(100000 AS Decimal(18, 0)), NULL, N'LC60', N'GXP129', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP178', CAST(100000 AS Decimal(18, 0)), NULL, N'LC6', N'GXP28', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1780', CAST(100000 AS Decimal(18, 0)), NULL, N'LC60', N'GXP130', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1781', CAST(100000 AS Decimal(18, 0)), NULL, N'LC60', N'GXP131', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1782', CAST(100000 AS Decimal(18, 0)), NULL, N'LC60', N'GXP132', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1783', CAST(100000 AS Decimal(18, 0)), NULL, N'LC60', N'GXP133', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1784', CAST(100000 AS Decimal(18, 0)), NULL, N'LC60', N'GXP134', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1785', CAST(100000 AS Decimal(18, 0)), NULL, N'LC60', N'GXP135', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1786', CAST(100000 AS Decimal(18, 0)), NULL, N'LC60', N'GXP136', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1787', CAST(100000 AS Decimal(18, 0)), NULL, N'LC60', N'GXP137', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1788', CAST(100000 AS Decimal(18, 0)), NULL, N'LC60', N'GXP138', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1789', CAST(100000 AS Decimal(18, 0)), NULL, N'LC60', N'GXP139', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP179', CAST(100000 AS Decimal(18, 0)), NULL, N'LC6', N'GXP29', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1790', CAST(100000 AS Decimal(18, 0)), NULL, N'LC60', N'GXP140', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1791', CAST(100000 AS Decimal(18, 0)), NULL, N'LC60', N'GXP141', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1792', CAST(100000 AS Decimal(18, 0)), NULL, N'LC60', N'GXP142', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1793', CAST(100000 AS Decimal(18, 0)), NULL, N'LC60', N'GXP143', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1794', CAST(100000 AS Decimal(18, 0)), NULL, N'LC60', N'GXP144', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1795', CAST(100000 AS Decimal(18, 0)), NULL, N'LC60', N'GXP145', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1796', CAST(100000 AS Decimal(18, 0)), NULL, N'LC60', N'GXP146', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1797', CAST(100000 AS Decimal(18, 0)), NULL, N'LC60', N'GXP147', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1798', CAST(100000 AS Decimal(18, 0)), NULL, N'LC60', N'GXP148', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1799', CAST(100000 AS Decimal(18, 0)), NULL, N'LC60', N'GXP149', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP18', CAST(100000 AS Decimal(18, 0)), N'HD5', N'LC1', N'GXP18', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP180', CAST(100000 AS Decimal(18, 0)), NULL, N'LC6', N'GXP30', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1800', CAST(100000 AS Decimal(18, 0)), NULL, N'LC60', N'GXP150', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1801', CAST(100000 AS Decimal(18, 0)), N'HD61', N'LC61', N'GXP1', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1802', CAST(100000 AS Decimal(18, 0)), N'HD62', N'LC61', N'GXP2', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1803', CAST(100000 AS Decimal(18, 0)), N'HD63', N'LC61', N'GXP3', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1804', CAST(100000 AS Decimal(18, 0)), N'HD64', N'LC61', N'GXP4', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1805', CAST(100000 AS Decimal(18, 0)), N'HD65', N'LC61', N'GXP5', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1806', CAST(100000 AS Decimal(18, 0)), NULL, N'LC61', N'GXP6', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1807', CAST(100000 AS Decimal(18, 0)), NULL, N'LC61', N'GXP7', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1808', CAST(100000 AS Decimal(18, 0)), NULL, N'LC61', N'GXP8', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1809', CAST(100000 AS Decimal(18, 0)), NULL, N'LC61', N'GXP9', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP181', CAST(100000 AS Decimal(18, 0)), NULL, N'LC7', N'GXP31', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1810', CAST(100000 AS Decimal(18, 0)), NULL, N'LC61', N'GXP10', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1811', CAST(100000 AS Decimal(18, 0)), NULL, N'LC61', N'GXP11', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1812', CAST(100000 AS Decimal(18, 0)), NULL, N'LC61', N'GXP12', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1813', CAST(100000 AS Decimal(18, 0)), NULL, N'LC61', N'GXP13', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1814', CAST(100000 AS Decimal(18, 0)), NULL, N'LC61', N'GXP14', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1815', CAST(100000 AS Decimal(18, 0)), NULL, N'LC61', N'GXP15', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1816', CAST(100000 AS Decimal(18, 0)), NULL, N'LC61', N'GXP16', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1817', CAST(100000 AS Decimal(18, 0)), NULL, N'LC61', N'GXP17', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1818', CAST(100000 AS Decimal(18, 0)), NULL, N'LC61', N'GXP18', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1819', CAST(100000 AS Decimal(18, 0)), NULL, N'LC61', N'GXP19', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP182', CAST(100000 AS Decimal(18, 0)), NULL, N'LC7', N'GXP32', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1820', CAST(100000 AS Decimal(18, 0)), NULL, N'LC61', N'GXP20', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1821', CAST(100000 AS Decimal(18, 0)), NULL, N'LC61', N'GXP21', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1822', CAST(100000 AS Decimal(18, 0)), NULL, N'LC61', N'GXP22', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1823', CAST(100000 AS Decimal(18, 0)), NULL, N'LC61', N'GXP23', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1824', CAST(100000 AS Decimal(18, 0)), NULL, N'LC61', N'GXP24', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1825', CAST(100000 AS Decimal(18, 0)), NULL, N'LC61', N'GXP25', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1826', CAST(100000 AS Decimal(18, 0)), NULL, N'LC61', N'GXP26', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1827', CAST(100000 AS Decimal(18, 0)), NULL, N'LC61', N'GXP27', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1828', CAST(100000 AS Decimal(18, 0)), NULL, N'LC61', N'GXP28', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1829', CAST(100000 AS Decimal(18, 0)), NULL, N'LC61', N'GXP29', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP183', CAST(100000 AS Decimal(18, 0)), NULL, N'LC7', N'GXP33', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1830', CAST(100000 AS Decimal(18, 0)), NULL, N'LC61', N'GXP30', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1831', CAST(100000 AS Decimal(18, 0)), NULL, N'LC62', N'GXP31', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1832', CAST(100000 AS Decimal(18, 0)), NULL, N'LC62', N'GXP32', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1833', CAST(100000 AS Decimal(18, 0)), NULL, N'LC62', N'GXP33', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1834', CAST(100000 AS Decimal(18, 0)), NULL, N'LC62', N'GXP34', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1835', CAST(100000 AS Decimal(18, 0)), NULL, N'LC62', N'GXP35', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1836', CAST(100000 AS Decimal(18, 0)), NULL, N'LC62', N'GXP36', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1837', CAST(100000 AS Decimal(18, 0)), NULL, N'LC62', N'GXP37', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1838', CAST(100000 AS Decimal(18, 0)), NULL, N'LC62', N'GXP38', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1839', CAST(100000 AS Decimal(18, 0)), NULL, N'LC62', N'GXP39', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP184', CAST(100000 AS Decimal(18, 0)), NULL, N'LC7', N'GXP34', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1840', CAST(100000 AS Decimal(18, 0)), NULL, N'LC62', N'GXP40', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1841', CAST(100000 AS Decimal(18, 0)), NULL, N'LC62', N'GXP41', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1842', CAST(100000 AS Decimal(18, 0)), NULL, N'LC62', N'GXP42', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1843', CAST(100000 AS Decimal(18, 0)), NULL, N'LC62', N'GXP43', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1844', CAST(100000 AS Decimal(18, 0)), NULL, N'LC62', N'GXP44', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1845', CAST(100000 AS Decimal(18, 0)), NULL, N'LC62', N'GXP45', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1846', CAST(100000 AS Decimal(18, 0)), NULL, N'LC62', N'GXP46', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1847', CAST(100000 AS Decimal(18, 0)), NULL, N'LC62', N'GXP47', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1848', CAST(100000 AS Decimal(18, 0)), NULL, N'LC62', N'GXP48', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1849', CAST(100000 AS Decimal(18, 0)), NULL, N'LC62', N'GXP49', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP185', CAST(100000 AS Decimal(18, 0)), NULL, N'LC7', N'GXP35', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1850', CAST(100000 AS Decimal(18, 0)), NULL, N'LC62', N'GXP50', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1851', CAST(100000 AS Decimal(18, 0)), NULL, N'LC62', N'GXP51', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1852', CAST(100000 AS Decimal(18, 0)), NULL, N'LC62', N'GXP52', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1853', CAST(100000 AS Decimal(18, 0)), NULL, N'LC62', N'GXP53', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1854', CAST(100000 AS Decimal(18, 0)), NULL, N'LC62', N'GXP54', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1855', CAST(100000 AS Decimal(18, 0)), NULL, N'LC62', N'GXP55', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1856', CAST(100000 AS Decimal(18, 0)), NULL, N'LC62', N'GXP56', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1857', CAST(100000 AS Decimal(18, 0)), NULL, N'LC62', N'GXP57', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1858', CAST(100000 AS Decimal(18, 0)), NULL, N'LC62', N'GXP58', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1859', CAST(100000 AS Decimal(18, 0)), NULL, N'LC62', N'GXP59', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP186', CAST(100000 AS Decimal(18, 0)), NULL, N'LC7', N'GXP36', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1860', CAST(100000 AS Decimal(18, 0)), NULL, N'LC62', N'GXP60', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1861', CAST(100000 AS Decimal(18, 0)), NULL, N'LC63', N'GXP61', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1862', CAST(100000 AS Decimal(18, 0)), NULL, N'LC63', N'GXP62', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1863', CAST(100000 AS Decimal(18, 0)), NULL, N'LC63', N'GXP63', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1864', CAST(100000 AS Decimal(18, 0)), NULL, N'LC63', N'GXP64', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1865', CAST(100000 AS Decimal(18, 0)), NULL, N'LC63', N'GXP65', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1866', CAST(100000 AS Decimal(18, 0)), NULL, N'LC63', N'GXP66', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1867', CAST(100000 AS Decimal(18, 0)), NULL, N'LC63', N'GXP67', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1868', CAST(100000 AS Decimal(18, 0)), NULL, N'LC63', N'GXP68', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1869', CAST(100000 AS Decimal(18, 0)), NULL, N'LC63', N'GXP69', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP187', CAST(100000 AS Decimal(18, 0)), NULL, N'LC7', N'GXP37', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1870', CAST(100000 AS Decimal(18, 0)), NULL, N'LC63', N'GXP70', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1871', CAST(100000 AS Decimal(18, 0)), NULL, N'LC63', N'GXP71', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1872', CAST(100000 AS Decimal(18, 0)), NULL, N'LC63', N'GXP72', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1873', CAST(100000 AS Decimal(18, 0)), NULL, N'LC63', N'GXP73', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1874', CAST(100000 AS Decimal(18, 0)), NULL, N'LC63', N'GXP74', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1875', CAST(100000 AS Decimal(18, 0)), NULL, N'LC63', N'GXP75', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1876', CAST(100000 AS Decimal(18, 0)), NULL, N'LC63', N'GXP76', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1877', CAST(100000 AS Decimal(18, 0)), NULL, N'LC63', N'GXP77', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1878', CAST(100000 AS Decimal(18, 0)), NULL, N'LC63', N'GXP78', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1879', CAST(100000 AS Decimal(18, 0)), NULL, N'LC63', N'GXP79', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP188', CAST(100000 AS Decimal(18, 0)), NULL, N'LC7', N'GXP38', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1880', CAST(100000 AS Decimal(18, 0)), NULL, N'LC63', N'GXP80', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1881', CAST(100000 AS Decimal(18, 0)), NULL, N'LC63', N'GXP81', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1882', CAST(100000 AS Decimal(18, 0)), NULL, N'LC63', N'GXP82', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1883', CAST(100000 AS Decimal(18, 0)), NULL, N'LC63', N'GXP83', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1884', CAST(100000 AS Decimal(18, 0)), NULL, N'LC63', N'GXP84', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1885', CAST(100000 AS Decimal(18, 0)), NULL, N'LC63', N'GXP85', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1886', CAST(100000 AS Decimal(18, 0)), NULL, N'LC63', N'GXP86', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1887', CAST(100000 AS Decimal(18, 0)), NULL, N'LC63', N'GXP87', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1888', CAST(100000 AS Decimal(18, 0)), NULL, N'LC63', N'GXP88', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1889', CAST(100000 AS Decimal(18, 0)), NULL, N'LC63', N'GXP89', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP189', CAST(100000 AS Decimal(18, 0)), NULL, N'LC7', N'GXP39', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1890', CAST(100000 AS Decimal(18, 0)), NULL, N'LC63', N'GXP90', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1891', CAST(100000 AS Decimal(18, 0)), NULL, N'LC64', N'GXP91', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1892', CAST(100000 AS Decimal(18, 0)), NULL, N'LC64', N'GXP92', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1893', CAST(100000 AS Decimal(18, 0)), NULL, N'LC64', N'GXP93', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1894', CAST(100000 AS Decimal(18, 0)), NULL, N'LC64', N'GXP94', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1895', CAST(100000 AS Decimal(18, 0)), NULL, N'LC64', N'GXP95', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1896', CAST(100000 AS Decimal(18, 0)), NULL, N'LC64', N'GXP96', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1897', CAST(100000 AS Decimal(18, 0)), NULL, N'LC64', N'GXP97', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1898', CAST(100000 AS Decimal(18, 0)), NULL, N'LC64', N'GXP98', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1899', CAST(100000 AS Decimal(18, 0)), NULL, N'LC64', N'GXP99', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP19', CAST(100000 AS Decimal(18, 0)), N'HD5', N'LC1', N'GXP19', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP190', CAST(100000 AS Decimal(18, 0)), NULL, N'LC7', N'GXP40', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1900', CAST(100000 AS Decimal(18, 0)), NULL, N'LC64', N'GXP100', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1901', CAST(100000 AS Decimal(18, 0)), NULL, N'LC64', N'GXP101', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1902', CAST(100000 AS Decimal(18, 0)), NULL, N'LC64', N'GXP102', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1903', CAST(100000 AS Decimal(18, 0)), NULL, N'LC64', N'GXP103', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1904', CAST(100000 AS Decimal(18, 0)), NULL, N'LC64', N'GXP104', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1905', CAST(100000 AS Decimal(18, 0)), NULL, N'LC64', N'GXP105', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1906', CAST(100000 AS Decimal(18, 0)), NULL, N'LC64', N'GXP106', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1907', CAST(100000 AS Decimal(18, 0)), NULL, N'LC64', N'GXP107', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1908', CAST(100000 AS Decimal(18, 0)), NULL, N'LC64', N'GXP108', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1909', CAST(100000 AS Decimal(18, 0)), NULL, N'LC64', N'GXP109', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP191', CAST(100000 AS Decimal(18, 0)), NULL, N'LC7', N'GXP41', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1910', CAST(100000 AS Decimal(18, 0)), NULL, N'LC64', N'GXP110', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1911', CAST(100000 AS Decimal(18, 0)), NULL, N'LC64', N'GXP111', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1912', CAST(100000 AS Decimal(18, 0)), NULL, N'LC64', N'GXP112', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1913', CAST(100000 AS Decimal(18, 0)), NULL, N'LC64', N'GXP113', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1914', CAST(100000 AS Decimal(18, 0)), NULL, N'LC64', N'GXP114', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1915', CAST(100000 AS Decimal(18, 0)), NULL, N'LC64', N'GXP115', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1916', CAST(100000 AS Decimal(18, 0)), NULL, N'LC64', N'GXP116', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1917', CAST(100000 AS Decimal(18, 0)), NULL, N'LC64', N'GXP117', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1918', CAST(100000 AS Decimal(18, 0)), NULL, N'LC64', N'GXP118', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1919', CAST(100000 AS Decimal(18, 0)), NULL, N'LC64', N'GXP119', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP192', CAST(100000 AS Decimal(18, 0)), NULL, N'LC7', N'GXP42', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1920', CAST(100000 AS Decimal(18, 0)), NULL, N'LC64', N'GXP120', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1921', CAST(100000 AS Decimal(18, 0)), NULL, N'LC65', N'GXP121', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1922', CAST(100000 AS Decimal(18, 0)), NULL, N'LC65', N'GXP122', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1923', CAST(100000 AS Decimal(18, 0)), NULL, N'LC65', N'GXP123', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1924', CAST(100000 AS Decimal(18, 0)), NULL, N'LC65', N'GXP124', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1925', CAST(100000 AS Decimal(18, 0)), NULL, N'LC65', N'GXP125', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1926', CAST(100000 AS Decimal(18, 0)), NULL, N'LC65', N'GXP126', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1927', CAST(100000 AS Decimal(18, 0)), NULL, N'LC65', N'GXP127', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1928', CAST(100000 AS Decimal(18, 0)), NULL, N'LC65', N'GXP128', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1929', CAST(100000 AS Decimal(18, 0)), NULL, N'LC65', N'GXP129', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP193', CAST(100000 AS Decimal(18, 0)), NULL, N'LC7', N'GXP43', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1930', CAST(100000 AS Decimal(18, 0)), NULL, N'LC65', N'GXP130', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1931', CAST(100000 AS Decimal(18, 0)), NULL, N'LC65', N'GXP131', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1932', CAST(100000 AS Decimal(18, 0)), NULL, N'LC65', N'GXP132', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1933', CAST(100000 AS Decimal(18, 0)), NULL, N'LC65', N'GXP133', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1934', CAST(100000 AS Decimal(18, 0)), NULL, N'LC65', N'GXP134', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1935', CAST(100000 AS Decimal(18, 0)), NULL, N'LC65', N'GXP135', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1936', CAST(100000 AS Decimal(18, 0)), NULL, N'LC65', N'GXP136', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1937', CAST(100000 AS Decimal(18, 0)), NULL, N'LC65', N'GXP137', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1938', CAST(100000 AS Decimal(18, 0)), NULL, N'LC65', N'GXP138', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1939', CAST(100000 AS Decimal(18, 0)), NULL, N'LC65', N'GXP139', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP194', CAST(100000 AS Decimal(18, 0)), NULL, N'LC7', N'GXP44', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1940', CAST(100000 AS Decimal(18, 0)), NULL, N'LC65', N'GXP140', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1941', CAST(100000 AS Decimal(18, 0)), NULL, N'LC65', N'GXP141', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1942', CAST(100000 AS Decimal(18, 0)), NULL, N'LC65', N'GXP142', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1943', CAST(100000 AS Decimal(18, 0)), NULL, N'LC65', N'GXP143', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1944', CAST(100000 AS Decimal(18, 0)), NULL, N'LC65', N'GXP144', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1945', CAST(100000 AS Decimal(18, 0)), NULL, N'LC65', N'GXP145', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1946', CAST(100000 AS Decimal(18, 0)), NULL, N'LC65', N'GXP146', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1947', CAST(100000 AS Decimal(18, 0)), NULL, N'LC65', N'GXP147', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1948', CAST(100000 AS Decimal(18, 0)), NULL, N'LC65', N'GXP148', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1949', CAST(100000 AS Decimal(18, 0)), NULL, N'LC65', N'GXP149', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP195', CAST(100000 AS Decimal(18, 0)), NULL, N'LC7', N'GXP45', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1950', CAST(100000 AS Decimal(18, 0)), NULL, N'LC65', N'GXP150', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1951', CAST(100000 AS Decimal(18, 0)), NULL, N'LC66', N'GXP1', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1952', CAST(100000 AS Decimal(18, 0)), NULL, N'LC66', N'GXP2', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1953', CAST(100000 AS Decimal(18, 0)), NULL, N'LC66', N'GXP3', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1954', CAST(100000 AS Decimal(18, 0)), NULL, N'LC66', N'GXP4', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1955', CAST(100000 AS Decimal(18, 0)), NULL, N'LC66', N'GXP5', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1956', CAST(100000 AS Decimal(18, 0)), NULL, N'LC66', N'GXP6', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1957', CAST(100000 AS Decimal(18, 0)), NULL, N'LC66', N'GXP7', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1958', CAST(100000 AS Decimal(18, 0)), NULL, N'LC66', N'GXP8', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1959', CAST(100000 AS Decimal(18, 0)), NULL, N'LC66', N'GXP9', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP196', CAST(100000 AS Decimal(18, 0)), NULL, N'LC7', N'GXP46', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1960', CAST(100000 AS Decimal(18, 0)), NULL, N'LC66', N'GXP10', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1961', CAST(100000 AS Decimal(18, 0)), NULL, N'LC66', N'GXP11', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1962', CAST(100000 AS Decimal(18, 0)), NULL, N'LC66', N'GXP12', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1963', CAST(100000 AS Decimal(18, 0)), NULL, N'LC66', N'GXP13', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1964', CAST(100000 AS Decimal(18, 0)), NULL, N'LC66', N'GXP14', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1965', CAST(100000 AS Decimal(18, 0)), NULL, N'LC66', N'GXP15', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1966', CAST(100000 AS Decimal(18, 0)), NULL, N'LC66', N'GXP16', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1967', CAST(100000 AS Decimal(18, 0)), NULL, N'LC66', N'GXP17', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1968', CAST(100000 AS Decimal(18, 0)), NULL, N'LC66', N'GXP18', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1969', CAST(100000 AS Decimal(18, 0)), NULL, N'LC66', N'GXP19', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP197', CAST(100000 AS Decimal(18, 0)), NULL, N'LC7', N'GXP47', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1970', CAST(100000 AS Decimal(18, 0)), NULL, N'LC66', N'GXP20', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1971', CAST(100000 AS Decimal(18, 0)), NULL, N'LC66', N'GXP21', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1972', CAST(100000 AS Decimal(18, 0)), NULL, N'LC66', N'GXP22', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1973', CAST(100000 AS Decimal(18, 0)), NULL, N'LC66', N'GXP23', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1974', CAST(100000 AS Decimal(18, 0)), NULL, N'LC66', N'GXP24', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1975', CAST(100000 AS Decimal(18, 0)), NULL, N'LC66', N'GXP25', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1976', CAST(100000 AS Decimal(18, 0)), NULL, N'LC66', N'GXP26', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1977', CAST(100000 AS Decimal(18, 0)), NULL, N'LC66', N'GXP27', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1978', CAST(100000 AS Decimal(18, 0)), NULL, N'LC66', N'GXP28', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1979', CAST(100000 AS Decimal(18, 0)), NULL, N'LC66', N'GXP29', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP198', CAST(100000 AS Decimal(18, 0)), NULL, N'LC7', N'GXP48', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1980', CAST(100000 AS Decimal(18, 0)), NULL, N'LC66', N'GXP30', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1981', CAST(100000 AS Decimal(18, 0)), NULL, N'LC67', N'GXP31', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1982', CAST(100000 AS Decimal(18, 0)), NULL, N'LC67', N'GXP32', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1983', CAST(100000 AS Decimal(18, 0)), NULL, N'LC67', N'GXP33', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1984', CAST(100000 AS Decimal(18, 0)), NULL, N'LC67', N'GXP34', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1985', CAST(100000 AS Decimal(18, 0)), NULL, N'LC67', N'GXP35', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1986', CAST(100000 AS Decimal(18, 0)), NULL, N'LC67', N'GXP36', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1987', CAST(100000 AS Decimal(18, 0)), NULL, N'LC67', N'GXP37', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1988', CAST(100000 AS Decimal(18, 0)), NULL, N'LC67', N'GXP38', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1989', CAST(100000 AS Decimal(18, 0)), NULL, N'LC67', N'GXP39', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP199', CAST(100000 AS Decimal(18, 0)), NULL, N'LC7', N'GXP49', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1990', CAST(100000 AS Decimal(18, 0)), NULL, N'LC67', N'GXP40', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1991', CAST(100000 AS Decimal(18, 0)), NULL, N'LC67', N'GXP41', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1992', CAST(100000 AS Decimal(18, 0)), NULL, N'LC67', N'GXP42', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1993', CAST(100000 AS Decimal(18, 0)), NULL, N'LC67', N'GXP43', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1994', CAST(100000 AS Decimal(18, 0)), NULL, N'LC67', N'GXP44', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1995', CAST(100000 AS Decimal(18, 0)), NULL, N'LC67', N'GXP45', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1996', CAST(100000 AS Decimal(18, 0)), NULL, N'LC67', N'GXP46', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1997', CAST(100000 AS Decimal(18, 0)), NULL, N'LC67', N'GXP47', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1998', CAST(100000 AS Decimal(18, 0)), NULL, N'LC67', N'GXP48', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP1999', CAST(100000 AS Decimal(18, 0)), NULL, N'LC67', N'GXP49', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2', CAST(100000 AS Decimal(18, 0)), N'HD1', N'LC1', N'GXP2', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP20', CAST(100000 AS Decimal(18, 0)), NULL, N'LC1', N'GXP20', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP200', CAST(100000 AS Decimal(18, 0)), NULL, N'LC7', N'GXP50', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2000', CAST(100000 AS Decimal(18, 0)), NULL, N'LC67', N'GXP50', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2001', CAST(100000 AS Decimal(18, 0)), NULL, N'LC67', N'GXP51', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2002', CAST(100000 AS Decimal(18, 0)), NULL, N'LC67', N'GXP52', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2003', CAST(100000 AS Decimal(18, 0)), NULL, N'LC67', N'GXP53', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2004', CAST(100000 AS Decimal(18, 0)), NULL, N'LC67', N'GXP54', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2005', CAST(100000 AS Decimal(18, 0)), NULL, N'LC67', N'GXP55', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2006', CAST(100000 AS Decimal(18, 0)), NULL, N'LC67', N'GXP56', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2007', CAST(100000 AS Decimal(18, 0)), NULL, N'LC67', N'GXP57', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2008', CAST(100000 AS Decimal(18, 0)), NULL, N'LC67', N'GXP58', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2009', CAST(100000 AS Decimal(18, 0)), NULL, N'LC67', N'GXP59', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP201', CAST(100000 AS Decimal(18, 0)), NULL, N'LC7', N'GXP51', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2010', CAST(100000 AS Decimal(18, 0)), NULL, N'LC67', N'GXP60', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2011', CAST(100000 AS Decimal(18, 0)), NULL, N'LC68', N'GXP61', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2012', CAST(100000 AS Decimal(18, 0)), NULL, N'LC68', N'GXP62', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2013', CAST(100000 AS Decimal(18, 0)), NULL, N'LC68', N'GXP63', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2014', CAST(100000 AS Decimal(18, 0)), NULL, N'LC68', N'GXP64', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2015', CAST(100000 AS Decimal(18, 0)), NULL, N'LC68', N'GXP65', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2016', CAST(100000 AS Decimal(18, 0)), NULL, N'LC68', N'GXP66', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2017', CAST(100000 AS Decimal(18, 0)), NULL, N'LC68', N'GXP67', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2018', CAST(100000 AS Decimal(18, 0)), NULL, N'LC68', N'GXP68', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2019', CAST(100000 AS Decimal(18, 0)), NULL, N'LC68', N'GXP69', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP202', CAST(100000 AS Decimal(18, 0)), NULL, N'LC7', N'GXP52', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2020', CAST(100000 AS Decimal(18, 0)), NULL, N'LC68', N'GXP70', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2021', CAST(100000 AS Decimal(18, 0)), NULL, N'LC68', N'GXP71', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2022', CAST(100000 AS Decimal(18, 0)), NULL, N'LC68', N'GXP72', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2023', CAST(100000 AS Decimal(18, 0)), NULL, N'LC68', N'GXP73', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2024', CAST(100000 AS Decimal(18, 0)), NULL, N'LC68', N'GXP74', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2025', CAST(100000 AS Decimal(18, 0)), NULL, N'LC68', N'GXP75', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2026', CAST(100000 AS Decimal(18, 0)), NULL, N'LC68', N'GXP76', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2027', CAST(100000 AS Decimal(18, 0)), NULL, N'LC68', N'GXP77', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2028', CAST(100000 AS Decimal(18, 0)), NULL, N'LC68', N'GXP78', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2029', CAST(100000 AS Decimal(18, 0)), NULL, N'LC68', N'GXP79', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP203', CAST(100000 AS Decimal(18, 0)), NULL, N'LC7', N'GXP53', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2030', CAST(100000 AS Decimal(18, 0)), NULL, N'LC68', N'GXP80', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2031', CAST(100000 AS Decimal(18, 0)), NULL, N'LC68', N'GXP81', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2032', CAST(100000 AS Decimal(18, 0)), NULL, N'LC68', N'GXP82', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2033', CAST(100000 AS Decimal(18, 0)), NULL, N'LC68', N'GXP83', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2034', CAST(100000 AS Decimal(18, 0)), NULL, N'LC68', N'GXP84', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2035', CAST(100000 AS Decimal(18, 0)), NULL, N'LC68', N'GXP85', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2036', CAST(100000 AS Decimal(18, 0)), NULL, N'LC68', N'GXP86', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2037', CAST(100000 AS Decimal(18, 0)), NULL, N'LC68', N'GXP87', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2038', CAST(100000 AS Decimal(18, 0)), NULL, N'LC68', N'GXP88', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2039', CAST(100000 AS Decimal(18, 0)), NULL, N'LC68', N'GXP89', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP204', CAST(100000 AS Decimal(18, 0)), NULL, N'LC7', N'GXP54', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2040', CAST(100000 AS Decimal(18, 0)), NULL, N'LC68', N'GXP90', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2041', CAST(100000 AS Decimal(18, 0)), NULL, N'LC69', N'GXP91', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2042', CAST(100000 AS Decimal(18, 0)), NULL, N'LC69', N'GXP92', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2043', CAST(100000 AS Decimal(18, 0)), NULL, N'LC69', N'GXP93', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2044', CAST(100000 AS Decimal(18, 0)), NULL, N'LC69', N'GXP94', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2045', CAST(100000 AS Decimal(18, 0)), NULL, N'LC69', N'GXP95', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2046', CAST(100000 AS Decimal(18, 0)), NULL, N'LC69', N'GXP96', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2047', CAST(100000 AS Decimal(18, 0)), NULL, N'LC69', N'GXP97', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2048', CAST(100000 AS Decimal(18, 0)), NULL, N'LC69', N'GXP98', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2049', CAST(100000 AS Decimal(18, 0)), NULL, N'LC69', N'GXP99', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP205', CAST(100000 AS Decimal(18, 0)), N'HD14', N'LC7', N'GXP55', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2050', CAST(100000 AS Decimal(18, 0)), NULL, N'LC69', N'GXP100', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2051', CAST(100000 AS Decimal(18, 0)), NULL, N'LC69', N'GXP101', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2052', CAST(100000 AS Decimal(18, 0)), NULL, N'LC69', N'GXP102', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2053', CAST(100000 AS Decimal(18, 0)), NULL, N'LC69', N'GXP103', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2054', CAST(100000 AS Decimal(18, 0)), NULL, N'LC69', N'GXP104', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2055', CAST(100000 AS Decimal(18, 0)), NULL, N'LC69', N'GXP105', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2056', CAST(100000 AS Decimal(18, 0)), NULL, N'LC69', N'GXP106', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2057', CAST(100000 AS Decimal(18, 0)), NULL, N'LC69', N'GXP107', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2058', CAST(100000 AS Decimal(18, 0)), NULL, N'LC69', N'GXP108', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2059', CAST(100000 AS Decimal(18, 0)), NULL, N'LC69', N'GXP109', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP206', CAST(100000 AS Decimal(18, 0)), N'HD14', N'LC7', N'GXP56', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2060', CAST(100000 AS Decimal(18, 0)), NULL, N'LC69', N'GXP110', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2061', CAST(100000 AS Decimal(18, 0)), NULL, N'LC69', N'GXP111', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2062', CAST(100000 AS Decimal(18, 0)), NULL, N'LC69', N'GXP112', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2063', CAST(100000 AS Decimal(18, 0)), NULL, N'LC69', N'GXP113', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2064', CAST(100000 AS Decimal(18, 0)), NULL, N'LC69', N'GXP114', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2065', CAST(100000 AS Decimal(18, 0)), NULL, N'LC69', N'GXP115', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2066', CAST(100000 AS Decimal(18, 0)), NULL, N'LC69', N'GXP116', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2067', CAST(100000 AS Decimal(18, 0)), NULL, N'LC69', N'GXP117', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2068', CAST(100000 AS Decimal(18, 0)), NULL, N'LC69', N'GXP118', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2069', CAST(100000 AS Decimal(18, 0)), NULL, N'LC69', N'GXP119', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP207', CAST(100000 AS Decimal(18, 0)), N'HD14', N'LC7', N'GXP57', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2070', CAST(100000 AS Decimal(18, 0)), NULL, N'LC69', N'GXP120', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2071', CAST(100000 AS Decimal(18, 0)), NULL, N'LC70', N'GXP121', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2072', CAST(100000 AS Decimal(18, 0)), NULL, N'LC70', N'GXP122', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2073', CAST(100000 AS Decimal(18, 0)), NULL, N'LC70', N'GXP123', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2074', CAST(100000 AS Decimal(18, 0)), NULL, N'LC70', N'GXP124', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2075', CAST(100000 AS Decimal(18, 0)), NULL, N'LC70', N'GXP125', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2076', CAST(100000 AS Decimal(18, 0)), NULL, N'LC70', N'GXP126', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2077', CAST(100000 AS Decimal(18, 0)), NULL, N'LC70', N'GXP127', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2078', CAST(100000 AS Decimal(18, 0)), NULL, N'LC70', N'GXP128', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2079', CAST(100000 AS Decimal(18, 0)), NULL, N'LC70', N'GXP129', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP208', CAST(100000 AS Decimal(18, 0)), N'HD14', N'LC7', N'GXP58', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2080', CAST(100000 AS Decimal(18, 0)), NULL, N'LC70', N'GXP130', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2081', CAST(100000 AS Decimal(18, 0)), NULL, N'LC70', N'GXP131', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2082', CAST(100000 AS Decimal(18, 0)), NULL, N'LC70', N'GXP132', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2083', CAST(100000 AS Decimal(18, 0)), NULL, N'LC70', N'GXP133', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2084', CAST(100000 AS Decimal(18, 0)), NULL, N'LC70', N'GXP134', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2085', CAST(100000 AS Decimal(18, 0)), NULL, N'LC70', N'GXP135', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2086', CAST(100000 AS Decimal(18, 0)), NULL, N'LC70', N'GXP136', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2087', CAST(100000 AS Decimal(18, 0)), NULL, N'LC70', N'GXP137', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2088', CAST(100000 AS Decimal(18, 0)), NULL, N'LC70', N'GXP138', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2089', CAST(100000 AS Decimal(18, 0)), NULL, N'LC70', N'GXP139', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP209', CAST(100000 AS Decimal(18, 0)), N'HD15', N'LC7', N'GXP59', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2090', CAST(100000 AS Decimal(18, 0)), NULL, N'LC70', N'GXP140', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2091', CAST(100000 AS Decimal(18, 0)), NULL, N'LC70', N'GXP141', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2092', CAST(100000 AS Decimal(18, 0)), NULL, N'LC70', N'GXP142', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2093', CAST(100000 AS Decimal(18, 0)), NULL, N'LC70', N'GXP143', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2094', CAST(100000 AS Decimal(18, 0)), NULL, N'LC70', N'GXP144', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2095', CAST(100000 AS Decimal(18, 0)), NULL, N'LC70', N'GXP145', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2096', CAST(100000 AS Decimal(18, 0)), NULL, N'LC70', N'GXP146', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2097', CAST(100000 AS Decimal(18, 0)), NULL, N'LC70', N'GXP147', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2098', CAST(100000 AS Decimal(18, 0)), NULL, N'LC70', N'GXP148', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2099', CAST(100000 AS Decimal(18, 0)), NULL, N'LC70', N'GXP149', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP21', CAST(100000 AS Decimal(18, 0)), NULL, N'LC1', N'GXP21', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP210', CAST(100000 AS Decimal(18, 0)), N'HD15', N'LC7', N'GXP60', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2100', CAST(100000 AS Decimal(18, 0)), NULL, N'LC70', N'GXP150', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2101', CAST(100000 AS Decimal(18, 0)), NULL, N'LC71', N'GXP1', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2102', CAST(100000 AS Decimal(18, 0)), NULL, N'LC71', N'GXP2', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2103', CAST(100000 AS Decimal(18, 0)), NULL, N'LC71', N'GXP3', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2104', CAST(100000 AS Decimal(18, 0)), NULL, N'LC71', N'GXP4', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2105', CAST(100000 AS Decimal(18, 0)), NULL, N'LC71', N'GXP5', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2106', CAST(100000 AS Decimal(18, 0)), NULL, N'LC71', N'GXP6', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2107', CAST(100000 AS Decimal(18, 0)), NULL, N'LC71', N'GXP7', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2108', CAST(100000 AS Decimal(18, 0)), NULL, N'LC71', N'GXP8', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2109', CAST(100000 AS Decimal(18, 0)), NULL, N'LC71', N'GXP9', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP211', CAST(100000 AS Decimal(18, 0)), NULL, N'LC8', N'GXP61', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2110', CAST(100000 AS Decimal(18, 0)), NULL, N'LC71', N'GXP10', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2111', CAST(100000 AS Decimal(18, 0)), NULL, N'LC71', N'GXP11', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2112', CAST(100000 AS Decimal(18, 0)), NULL, N'LC71', N'GXP12', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2113', CAST(100000 AS Decimal(18, 0)), NULL, N'LC71', N'GXP13', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2114', CAST(100000 AS Decimal(18, 0)), NULL, N'LC71', N'GXP14', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2115', CAST(100000 AS Decimal(18, 0)), NULL, N'LC71', N'GXP15', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2116', CAST(100000 AS Decimal(18, 0)), NULL, N'LC71', N'GXP16', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2117', CAST(100000 AS Decimal(18, 0)), NULL, N'LC71', N'GXP17', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2118', CAST(100000 AS Decimal(18, 0)), NULL, N'LC71', N'GXP18', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2119', CAST(100000 AS Decimal(18, 0)), NULL, N'LC71', N'GXP19', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP212', CAST(100000 AS Decimal(18, 0)), NULL, N'LC8', N'GXP62', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2120', CAST(100000 AS Decimal(18, 0)), NULL, N'LC71', N'GXP20', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2121', CAST(100000 AS Decimal(18, 0)), NULL, N'LC71', N'GXP21', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2122', CAST(100000 AS Decimal(18, 0)), NULL, N'LC71', N'GXP22', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2123', CAST(100000 AS Decimal(18, 0)), NULL, N'LC71', N'GXP23', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2124', CAST(100000 AS Decimal(18, 0)), NULL, N'LC71', N'GXP24', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2125', CAST(100000 AS Decimal(18, 0)), NULL, N'LC71', N'GXP25', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2126', CAST(100000 AS Decimal(18, 0)), NULL, N'LC71', N'GXP26', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2127', CAST(100000 AS Decimal(18, 0)), NULL, N'LC71', N'GXP27', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2128', CAST(100000 AS Decimal(18, 0)), NULL, N'LC71', N'GXP28', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2129', CAST(100000 AS Decimal(18, 0)), NULL, N'LC71', N'GXP29', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP213', CAST(100000 AS Decimal(18, 0)), NULL, N'LC8', N'GXP63', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2130', CAST(100000 AS Decimal(18, 0)), NULL, N'LC71', N'GXP30', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2131', CAST(100000 AS Decimal(18, 0)), NULL, N'LC72', N'GXP31', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2132', CAST(100000 AS Decimal(18, 0)), NULL, N'LC72', N'GXP32', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2133', CAST(100000 AS Decimal(18, 0)), NULL, N'LC72', N'GXP33', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2134', CAST(100000 AS Decimal(18, 0)), NULL, N'LC72', N'GXP34', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2135', CAST(100000 AS Decimal(18, 0)), NULL, N'LC72', N'GXP35', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2136', CAST(100000 AS Decimal(18, 0)), NULL, N'LC72', N'GXP36', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2137', CAST(100000 AS Decimal(18, 0)), NULL, N'LC72', N'GXP37', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2138', CAST(100000 AS Decimal(18, 0)), NULL, N'LC72', N'GXP38', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2139', CAST(100000 AS Decimal(18, 0)), NULL, N'LC72', N'GXP39', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP214', CAST(100000 AS Decimal(18, 0)), NULL, N'LC8', N'GXP64', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2140', CAST(100000 AS Decimal(18, 0)), NULL, N'LC72', N'GXP40', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2141', CAST(100000 AS Decimal(18, 0)), NULL, N'LC72', N'GXP41', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2142', CAST(100000 AS Decimal(18, 0)), NULL, N'LC72', N'GXP42', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2143', CAST(100000 AS Decimal(18, 0)), NULL, N'LC72', N'GXP43', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2144', CAST(100000 AS Decimal(18, 0)), NULL, N'LC72', N'GXP44', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2145', CAST(100000 AS Decimal(18, 0)), NULL, N'LC72', N'GXP45', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2146', CAST(100000 AS Decimal(18, 0)), NULL, N'LC72', N'GXP46', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2147', CAST(100000 AS Decimal(18, 0)), NULL, N'LC72', N'GXP47', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2148', CAST(100000 AS Decimal(18, 0)), NULL, N'LC72', N'GXP48', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2149', CAST(100000 AS Decimal(18, 0)), NULL, N'LC72', N'GXP49', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP215', CAST(100000 AS Decimal(18, 0)), NULL, N'LC8', N'GXP65', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2150', CAST(100000 AS Decimal(18, 0)), NULL, N'LC72', N'GXP50', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2151', CAST(100000 AS Decimal(18, 0)), NULL, N'LC72', N'GXP51', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2152', CAST(100000 AS Decimal(18, 0)), NULL, N'LC72', N'GXP52', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2153', CAST(100000 AS Decimal(18, 0)), NULL, N'LC72', N'GXP53', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2154', CAST(100000 AS Decimal(18, 0)), NULL, N'LC72', N'GXP54', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2155', CAST(100000 AS Decimal(18, 0)), NULL, N'LC72', N'GXP55', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2156', CAST(100000 AS Decimal(18, 0)), NULL, N'LC72', N'GXP56', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2157', CAST(100000 AS Decimal(18, 0)), NULL, N'LC72', N'GXP57', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2158', CAST(100000 AS Decimal(18, 0)), NULL, N'LC72', N'GXP58', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2159', CAST(100000 AS Decimal(18, 0)), NULL, N'LC72', N'GXP59', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP216', CAST(100000 AS Decimal(18, 0)), NULL, N'LC8', N'GXP66', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2160', CAST(100000 AS Decimal(18, 0)), NULL, N'LC72', N'GXP60', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2161', CAST(100000 AS Decimal(18, 0)), NULL, N'LC73', N'GXP61', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2162', CAST(100000 AS Decimal(18, 0)), NULL, N'LC73', N'GXP62', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2163', CAST(100000 AS Decimal(18, 0)), NULL, N'LC73', N'GXP63', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2164', CAST(100000 AS Decimal(18, 0)), NULL, N'LC73', N'GXP64', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2165', CAST(100000 AS Decimal(18, 0)), NULL, N'LC73', N'GXP65', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2166', CAST(100000 AS Decimal(18, 0)), NULL, N'LC73', N'GXP66', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2167', CAST(100000 AS Decimal(18, 0)), NULL, N'LC73', N'GXP67', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2168', CAST(100000 AS Decimal(18, 0)), NULL, N'LC73', N'GXP68', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2169', CAST(100000 AS Decimal(18, 0)), NULL, N'LC73', N'GXP69', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP217', CAST(100000 AS Decimal(18, 0)), NULL, N'LC8', N'GXP67', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2170', CAST(100000 AS Decimal(18, 0)), NULL, N'LC73', N'GXP70', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2171', CAST(100000 AS Decimal(18, 0)), NULL, N'LC73', N'GXP71', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2172', CAST(100000 AS Decimal(18, 0)), NULL, N'LC73', N'GXP72', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2173', CAST(100000 AS Decimal(18, 0)), NULL, N'LC73', N'GXP73', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2174', CAST(100000 AS Decimal(18, 0)), NULL, N'LC73', N'GXP74', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2175', CAST(100000 AS Decimal(18, 0)), NULL, N'LC73', N'GXP75', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2176', CAST(100000 AS Decimal(18, 0)), NULL, N'LC73', N'GXP76', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2177', CAST(100000 AS Decimal(18, 0)), NULL, N'LC73', N'GXP77', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2178', CAST(100000 AS Decimal(18, 0)), NULL, N'LC73', N'GXP78', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2179', CAST(100000 AS Decimal(18, 0)), NULL, N'LC73', N'GXP79', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP218', CAST(100000 AS Decimal(18, 0)), NULL, N'LC8', N'GXP68', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2180', CAST(100000 AS Decimal(18, 0)), NULL, N'LC73', N'GXP80', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2181', CAST(100000 AS Decimal(18, 0)), NULL, N'LC73', N'GXP81', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2182', CAST(100000 AS Decimal(18, 0)), NULL, N'LC73', N'GXP82', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2183', CAST(100000 AS Decimal(18, 0)), NULL, N'LC73', N'GXP83', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2184', CAST(100000 AS Decimal(18, 0)), NULL, N'LC73', N'GXP84', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2185', CAST(100000 AS Decimal(18, 0)), NULL, N'LC73', N'GXP85', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2186', CAST(100000 AS Decimal(18, 0)), NULL, N'LC73', N'GXP86', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2187', CAST(100000 AS Decimal(18, 0)), NULL, N'LC73', N'GXP87', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2188', CAST(100000 AS Decimal(18, 0)), NULL, N'LC73', N'GXP88', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2189', CAST(100000 AS Decimal(18, 0)), NULL, N'LC73', N'GXP89', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP219', CAST(100000 AS Decimal(18, 0)), NULL, N'LC8', N'GXP69', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2190', CAST(100000 AS Decimal(18, 0)), NULL, N'LC73', N'GXP90', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2191', CAST(100000 AS Decimal(18, 0)), NULL, N'LC74', N'GXP91', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2192', CAST(100000 AS Decimal(18, 0)), NULL, N'LC74', N'GXP92', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2193', CAST(100000 AS Decimal(18, 0)), NULL, N'LC74', N'GXP93', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2194', CAST(100000 AS Decimal(18, 0)), NULL, N'LC74', N'GXP94', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2195', CAST(100000 AS Decimal(18, 0)), NULL, N'LC74', N'GXP95', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2196', CAST(100000 AS Decimal(18, 0)), NULL, N'LC74', N'GXP96', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2197', CAST(100000 AS Decimal(18, 0)), NULL, N'LC74', N'GXP97', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2198', CAST(100000 AS Decimal(18, 0)), NULL, N'LC74', N'GXP98', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2199', CAST(100000 AS Decimal(18, 0)), NULL, N'LC74', N'GXP99', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP22', CAST(100000 AS Decimal(18, 0)), NULL, N'LC1', N'GXP22', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP220', CAST(100000 AS Decimal(18, 0)), NULL, N'LC8', N'GXP70', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2200', CAST(100000 AS Decimal(18, 0)), NULL, N'LC74', N'GXP100', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2201', CAST(100000 AS Decimal(18, 0)), NULL, N'LC74', N'GXP101', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2202', CAST(100000 AS Decimal(18, 0)), NULL, N'LC74', N'GXP102', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2203', CAST(100000 AS Decimal(18, 0)), NULL, N'LC74', N'GXP103', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2204', CAST(100000 AS Decimal(18, 0)), NULL, N'LC74', N'GXP104', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2205', CAST(100000 AS Decimal(18, 0)), NULL, N'LC74', N'GXP105', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2206', CAST(100000 AS Decimal(18, 0)), NULL, N'LC74', N'GXP106', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2207', CAST(100000 AS Decimal(18, 0)), NULL, N'LC74', N'GXP107', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2208', CAST(100000 AS Decimal(18, 0)), NULL, N'LC74', N'GXP108', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2209', CAST(100000 AS Decimal(18, 0)), NULL, N'LC74', N'GXP109', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP221', CAST(100000 AS Decimal(18, 0)), NULL, N'LC8', N'GXP71', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2210', CAST(100000 AS Decimal(18, 0)), NULL, N'LC74', N'GXP110', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2211', CAST(100000 AS Decimal(18, 0)), NULL, N'LC74', N'GXP111', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2212', CAST(100000 AS Decimal(18, 0)), NULL, N'LC74', N'GXP112', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2213', CAST(100000 AS Decimal(18, 0)), NULL, N'LC74', N'GXP113', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2214', CAST(100000 AS Decimal(18, 0)), NULL, N'LC74', N'GXP114', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2215', CAST(100000 AS Decimal(18, 0)), NULL, N'LC74', N'GXP115', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2216', CAST(100000 AS Decimal(18, 0)), NULL, N'LC74', N'GXP116', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2217', CAST(100000 AS Decimal(18, 0)), NULL, N'LC74', N'GXP117', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2218', CAST(100000 AS Decimal(18, 0)), NULL, N'LC74', N'GXP118', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2219', CAST(100000 AS Decimal(18, 0)), NULL, N'LC74', N'GXP119', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP222', CAST(100000 AS Decimal(18, 0)), NULL, N'LC8', N'GXP72', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2220', CAST(100000 AS Decimal(18, 0)), NULL, N'LC74', N'GXP120', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2221', CAST(100000 AS Decimal(18, 0)), NULL, N'LC75', N'GXP121', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2222', CAST(100000 AS Decimal(18, 0)), NULL, N'LC75', N'GXP122', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2223', CAST(100000 AS Decimal(18, 0)), NULL, N'LC75', N'GXP123', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2224', CAST(100000 AS Decimal(18, 0)), NULL, N'LC75', N'GXP124', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2225', CAST(100000 AS Decimal(18, 0)), NULL, N'LC75', N'GXP125', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2226', CAST(100000 AS Decimal(18, 0)), NULL, N'LC75', N'GXP126', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2227', CAST(100000 AS Decimal(18, 0)), NULL, N'LC75', N'GXP127', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2228', CAST(100000 AS Decimal(18, 0)), NULL, N'LC75', N'GXP128', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2229', CAST(100000 AS Decimal(18, 0)), NULL, N'LC75', N'GXP129', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP223', CAST(100000 AS Decimal(18, 0)), NULL, N'LC8', N'GXP73', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2230', CAST(100000 AS Decimal(18, 0)), NULL, N'LC75', N'GXP130', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2231', CAST(100000 AS Decimal(18, 0)), NULL, N'LC75', N'GXP131', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2232', CAST(100000 AS Decimal(18, 0)), NULL, N'LC75', N'GXP132', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2233', CAST(100000 AS Decimal(18, 0)), NULL, N'LC75', N'GXP133', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2234', CAST(100000 AS Decimal(18, 0)), NULL, N'LC75', N'GXP134', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2235', CAST(100000 AS Decimal(18, 0)), NULL, N'LC75', N'GXP135', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2236', CAST(100000 AS Decimal(18, 0)), NULL, N'LC75', N'GXP136', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2237', CAST(100000 AS Decimal(18, 0)), NULL, N'LC75', N'GXP137', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2238', CAST(100000 AS Decimal(18, 0)), NULL, N'LC75', N'GXP138', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2239', CAST(100000 AS Decimal(18, 0)), NULL, N'LC75', N'GXP139', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP224', CAST(100000 AS Decimal(18, 0)), NULL, N'LC8', N'GXP74', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2240', CAST(100000 AS Decimal(18, 0)), NULL, N'LC75', N'GXP140', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2241', CAST(100000 AS Decimal(18, 0)), NULL, N'LC75', N'GXP141', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2242', CAST(100000 AS Decimal(18, 0)), NULL, N'LC75', N'GXP142', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2243', CAST(100000 AS Decimal(18, 0)), NULL, N'LC75', N'GXP143', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2244', CAST(100000 AS Decimal(18, 0)), NULL, N'LC75', N'GXP144', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2245', CAST(100000 AS Decimal(18, 0)), NULL, N'LC75', N'GXP145', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2246', CAST(100000 AS Decimal(18, 0)), NULL, N'LC75', N'GXP146', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2247', CAST(100000 AS Decimal(18, 0)), NULL, N'LC75', N'GXP147', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2248', CAST(100000 AS Decimal(18, 0)), NULL, N'LC75', N'GXP148', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2249', CAST(100000 AS Decimal(18, 0)), NULL, N'LC75', N'GXP149', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP225', CAST(100000 AS Decimal(18, 0)), NULL, N'LC8', N'GXP75', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2250', CAST(100000 AS Decimal(18, 0)), NULL, N'LC75', N'GXP150', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2251', CAST(100000 AS Decimal(18, 0)), NULL, N'LC76', N'GXP1', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2252', CAST(100000 AS Decimal(18, 0)), NULL, N'LC76', N'GXP2', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2253', CAST(100000 AS Decimal(18, 0)), NULL, N'LC76', N'GXP3', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2254', CAST(100000 AS Decimal(18, 0)), NULL, N'LC76', N'GXP4', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2255', CAST(100000 AS Decimal(18, 0)), NULL, N'LC76', N'GXP5', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2256', CAST(100000 AS Decimal(18, 0)), NULL, N'LC76', N'GXP6', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2257', CAST(100000 AS Decimal(18, 0)), NULL, N'LC76', N'GXP7', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2258', CAST(100000 AS Decimal(18, 0)), NULL, N'LC76', N'GXP8', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2259', CAST(100000 AS Decimal(18, 0)), NULL, N'LC76', N'GXP9', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP226', CAST(100000 AS Decimal(18, 0)), NULL, N'LC8', N'GXP76', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2260', CAST(100000 AS Decimal(18, 0)), NULL, N'LC76', N'GXP10', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2261', CAST(100000 AS Decimal(18, 0)), NULL, N'LC76', N'GXP11', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2262', CAST(100000 AS Decimal(18, 0)), NULL, N'LC76', N'GXP12', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2263', CAST(100000 AS Decimal(18, 0)), NULL, N'LC76', N'GXP13', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2264', CAST(100000 AS Decimal(18, 0)), NULL, N'LC76', N'GXP14', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2265', CAST(100000 AS Decimal(18, 0)), NULL, N'LC76', N'GXP15', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2266', CAST(100000 AS Decimal(18, 0)), NULL, N'LC76', N'GXP16', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2267', CAST(100000 AS Decimal(18, 0)), NULL, N'LC76', N'GXP17', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2268', CAST(100000 AS Decimal(18, 0)), NULL, N'LC76', N'GXP18', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2269', CAST(100000 AS Decimal(18, 0)), NULL, N'LC76', N'GXP19', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP227', CAST(100000 AS Decimal(18, 0)), NULL, N'LC8', N'GXP77', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2270', CAST(100000 AS Decimal(18, 0)), NULL, N'LC76', N'GXP20', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2271', CAST(100000 AS Decimal(18, 0)), NULL, N'LC76', N'GXP21', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2272', CAST(100000 AS Decimal(18, 0)), NULL, N'LC76', N'GXP22', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2273', CAST(100000 AS Decimal(18, 0)), NULL, N'LC76', N'GXP23', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2274', CAST(100000 AS Decimal(18, 0)), NULL, N'LC76', N'GXP24', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2275', CAST(100000 AS Decimal(18, 0)), NULL, N'LC76', N'GXP25', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2276', CAST(100000 AS Decimal(18, 0)), NULL, N'LC76', N'GXP26', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2277', CAST(100000 AS Decimal(18, 0)), NULL, N'LC76', N'GXP27', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2278', CAST(100000 AS Decimal(18, 0)), NULL, N'LC76', N'GXP28', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2279', CAST(100000 AS Decimal(18, 0)), NULL, N'LC76', N'GXP29', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP228', CAST(100000 AS Decimal(18, 0)), NULL, N'LC8', N'GXP78', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2280', CAST(100000 AS Decimal(18, 0)), NULL, N'LC76', N'GXP30', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2281', CAST(100000 AS Decimal(18, 0)), NULL, N'LC77', N'GXP31', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2282', CAST(100000 AS Decimal(18, 0)), NULL, N'LC77', N'GXP32', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2283', CAST(100000 AS Decimal(18, 0)), NULL, N'LC77', N'GXP33', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2284', CAST(100000 AS Decimal(18, 0)), NULL, N'LC77', N'GXP34', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2285', CAST(100000 AS Decimal(18, 0)), NULL, N'LC77', N'GXP35', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2286', CAST(100000 AS Decimal(18, 0)), NULL, N'LC77', N'GXP36', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2287', CAST(100000 AS Decimal(18, 0)), NULL, N'LC77', N'GXP37', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2288', CAST(100000 AS Decimal(18, 0)), NULL, N'LC77', N'GXP38', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2289', CAST(100000 AS Decimal(18, 0)), NULL, N'LC77', N'GXP39', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP229', CAST(100000 AS Decimal(18, 0)), NULL, N'LC8', N'GXP79', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2290', CAST(100000 AS Decimal(18, 0)), NULL, N'LC77', N'GXP40', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2291', CAST(100000 AS Decimal(18, 0)), NULL, N'LC77', N'GXP41', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2292', CAST(100000 AS Decimal(18, 0)), NULL, N'LC77', N'GXP42', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2293', CAST(100000 AS Decimal(18, 0)), NULL, N'LC77', N'GXP43', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2294', CAST(100000 AS Decimal(18, 0)), NULL, N'LC77', N'GXP44', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2295', CAST(100000 AS Decimal(18, 0)), NULL, N'LC77', N'GXP45', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2296', CAST(100000 AS Decimal(18, 0)), NULL, N'LC77', N'GXP46', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2297', CAST(100000 AS Decimal(18, 0)), NULL, N'LC77', N'GXP47', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2298', CAST(100000 AS Decimal(18, 0)), NULL, N'LC77', N'GXP48', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2299', CAST(100000 AS Decimal(18, 0)), NULL, N'LC77', N'GXP49', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP23', CAST(100000 AS Decimal(18, 0)), NULL, N'LC1', N'GXP23', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP230', CAST(100000 AS Decimal(18, 0)), NULL, N'LC8', N'GXP80', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2300', CAST(100000 AS Decimal(18, 0)), NULL, N'LC77', N'GXP50', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2301', CAST(100000 AS Decimal(18, 0)), NULL, N'LC77', N'GXP51', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2302', CAST(100000 AS Decimal(18, 0)), NULL, N'LC77', N'GXP52', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2303', CAST(100000 AS Decimal(18, 0)), NULL, N'LC77', N'GXP53', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2304', CAST(100000 AS Decimal(18, 0)), NULL, N'LC77', N'GXP54', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2305', CAST(100000 AS Decimal(18, 0)), NULL, N'LC77', N'GXP55', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2306', CAST(100000 AS Decimal(18, 0)), NULL, N'LC77', N'GXP56', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2307', CAST(100000 AS Decimal(18, 0)), NULL, N'LC77', N'GXP57', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2308', CAST(100000 AS Decimal(18, 0)), NULL, N'LC77', N'GXP58', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2309', CAST(100000 AS Decimal(18, 0)), NULL, N'LC77', N'GXP59', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP231', CAST(100000 AS Decimal(18, 0)), NULL, N'LC8', N'GXP81', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2310', CAST(100000 AS Decimal(18, 0)), NULL, N'LC77', N'GXP60', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2311', CAST(100000 AS Decimal(18, 0)), NULL, N'LC78', N'GXP61', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2312', CAST(100000 AS Decimal(18, 0)), NULL, N'LC78', N'GXP62', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2313', CAST(100000 AS Decimal(18, 0)), NULL, N'LC78', N'GXP63', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2314', CAST(100000 AS Decimal(18, 0)), NULL, N'LC78', N'GXP64', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2315', CAST(100000 AS Decimal(18, 0)), NULL, N'LC78', N'GXP65', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2316', CAST(100000 AS Decimal(18, 0)), NULL, N'LC78', N'GXP66', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2317', CAST(100000 AS Decimal(18, 0)), NULL, N'LC78', N'GXP67', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2318', CAST(100000 AS Decimal(18, 0)), NULL, N'LC78', N'GXP68', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2319', CAST(100000 AS Decimal(18, 0)), NULL, N'LC78', N'GXP69', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP232', CAST(100000 AS Decimal(18, 0)), NULL, N'LC8', N'GXP82', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2320', CAST(100000 AS Decimal(18, 0)), NULL, N'LC78', N'GXP70', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2321', CAST(100000 AS Decimal(18, 0)), NULL, N'LC78', N'GXP71', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2322', CAST(100000 AS Decimal(18, 0)), NULL, N'LC78', N'GXP72', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2323', CAST(100000 AS Decimal(18, 0)), NULL, N'LC78', N'GXP73', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2324', CAST(100000 AS Decimal(18, 0)), NULL, N'LC78', N'GXP74', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2325', CAST(100000 AS Decimal(18, 0)), NULL, N'LC78', N'GXP75', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2326', CAST(100000 AS Decimal(18, 0)), NULL, N'LC78', N'GXP76', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2327', CAST(100000 AS Decimal(18, 0)), NULL, N'LC78', N'GXP77', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2328', CAST(100000 AS Decimal(18, 0)), NULL, N'LC78', N'GXP78', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2329', CAST(100000 AS Decimal(18, 0)), NULL, N'LC78', N'GXP79', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP233', CAST(100000 AS Decimal(18, 0)), NULL, N'LC8', N'GXP83', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2330', CAST(100000 AS Decimal(18, 0)), NULL, N'LC78', N'GXP80', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2331', CAST(100000 AS Decimal(18, 0)), NULL, N'LC78', N'GXP81', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2332', CAST(100000 AS Decimal(18, 0)), NULL, N'LC78', N'GXP82', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2333', CAST(100000 AS Decimal(18, 0)), NULL, N'LC78', N'GXP83', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2334', CAST(100000 AS Decimal(18, 0)), NULL, N'LC78', N'GXP84', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2335', CAST(100000 AS Decimal(18, 0)), NULL, N'LC78', N'GXP85', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2336', CAST(100000 AS Decimal(18, 0)), NULL, N'LC78', N'GXP86', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2337', CAST(100000 AS Decimal(18, 0)), NULL, N'LC78', N'GXP87', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2338', CAST(100000 AS Decimal(18, 0)), NULL, N'LC78', N'GXP88', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2339', CAST(100000 AS Decimal(18, 0)), NULL, N'LC78', N'GXP89', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP234', CAST(100000 AS Decimal(18, 0)), NULL, N'LC8', N'GXP84', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2340', CAST(100000 AS Decimal(18, 0)), NULL, N'LC78', N'GXP90', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2341', CAST(100000 AS Decimal(18, 0)), NULL, N'LC79', N'GXP91', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2342', CAST(100000 AS Decimal(18, 0)), NULL, N'LC79', N'GXP92', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2343', CAST(100000 AS Decimal(18, 0)), NULL, N'LC79', N'GXP93', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2344', CAST(100000 AS Decimal(18, 0)), NULL, N'LC79', N'GXP94', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2345', CAST(100000 AS Decimal(18, 0)), NULL, N'LC79', N'GXP95', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2346', CAST(100000 AS Decimal(18, 0)), NULL, N'LC79', N'GXP96', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2347', CAST(100000 AS Decimal(18, 0)), NULL, N'LC79', N'GXP97', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2348', CAST(100000 AS Decimal(18, 0)), NULL, N'LC79', N'GXP98', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2349', CAST(100000 AS Decimal(18, 0)), NULL, N'LC79', N'GXP99', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP235', CAST(100000 AS Decimal(18, 0)), NULL, N'LC8', N'GXP85', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2350', CAST(100000 AS Decimal(18, 0)), NULL, N'LC79', N'GXP100', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2351', CAST(100000 AS Decimal(18, 0)), NULL, N'LC79', N'GXP101', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2352', CAST(100000 AS Decimal(18, 0)), NULL, N'LC79', N'GXP102', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2353', CAST(100000 AS Decimal(18, 0)), NULL, N'LC79', N'GXP103', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2354', CAST(100000 AS Decimal(18, 0)), NULL, N'LC79', N'GXP104', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2355', CAST(100000 AS Decimal(18, 0)), NULL, N'LC79', N'GXP105', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2356', CAST(100000 AS Decimal(18, 0)), NULL, N'LC79', N'GXP106', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2357', CAST(100000 AS Decimal(18, 0)), NULL, N'LC79', N'GXP107', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2358', CAST(100000 AS Decimal(18, 0)), NULL, N'LC79', N'GXP108', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2359', CAST(100000 AS Decimal(18, 0)), NULL, N'LC79', N'GXP109', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP236', CAST(100000 AS Decimal(18, 0)), NULL, N'LC8', N'GXP86', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2360', CAST(100000 AS Decimal(18, 0)), NULL, N'LC79', N'GXP110', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2361', CAST(100000 AS Decimal(18, 0)), NULL, N'LC79', N'GXP111', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2362', CAST(100000 AS Decimal(18, 0)), NULL, N'LC79', N'GXP112', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2363', CAST(100000 AS Decimal(18, 0)), NULL, N'LC79', N'GXP113', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2364', CAST(100000 AS Decimal(18, 0)), NULL, N'LC79', N'GXP114', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2365', CAST(100000 AS Decimal(18, 0)), NULL, N'LC79', N'GXP115', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2366', CAST(100000 AS Decimal(18, 0)), NULL, N'LC79', N'GXP116', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2367', CAST(100000 AS Decimal(18, 0)), NULL, N'LC79', N'GXP117', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2368', CAST(100000 AS Decimal(18, 0)), NULL, N'LC79', N'GXP118', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2369', CAST(100000 AS Decimal(18, 0)), NULL, N'LC79', N'GXP119', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP237', CAST(100000 AS Decimal(18, 0)), NULL, N'LC8', N'GXP87', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2370', CAST(100000 AS Decimal(18, 0)), NULL, N'LC79', N'GXP120', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2371', CAST(100000 AS Decimal(18, 0)), NULL, N'LC80', N'GXP121', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2372', CAST(100000 AS Decimal(18, 0)), NULL, N'LC80', N'GXP122', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2373', CAST(100000 AS Decimal(18, 0)), NULL, N'LC80', N'GXP123', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2374', CAST(100000 AS Decimal(18, 0)), NULL, N'LC80', N'GXP124', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2375', CAST(100000 AS Decimal(18, 0)), NULL, N'LC80', N'GXP125', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2376', CAST(100000 AS Decimal(18, 0)), NULL, N'LC80', N'GXP126', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2377', CAST(100000 AS Decimal(18, 0)), NULL, N'LC80', N'GXP127', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2378', CAST(100000 AS Decimal(18, 0)), NULL, N'LC80', N'GXP128', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2379', CAST(100000 AS Decimal(18, 0)), NULL, N'LC80', N'GXP129', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP238', CAST(100000 AS Decimal(18, 0)), NULL, N'LC8', N'GXP88', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2380', CAST(100000 AS Decimal(18, 0)), NULL, N'LC80', N'GXP130', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2381', CAST(100000 AS Decimal(18, 0)), NULL, N'LC80', N'GXP131', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2382', CAST(100000 AS Decimal(18, 0)), NULL, N'LC80', N'GXP132', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2383', CAST(100000 AS Decimal(18, 0)), NULL, N'LC80', N'GXP133', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2384', CAST(100000 AS Decimal(18, 0)), NULL, N'LC80', N'GXP134', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2385', CAST(100000 AS Decimal(18, 0)), NULL, N'LC80', N'GXP135', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2386', CAST(100000 AS Decimal(18, 0)), NULL, N'LC80', N'GXP136', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2387', CAST(100000 AS Decimal(18, 0)), NULL, N'LC80', N'GXP137', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2388', CAST(100000 AS Decimal(18, 0)), NULL, N'LC80', N'GXP138', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2389', CAST(100000 AS Decimal(18, 0)), NULL, N'LC80', N'GXP139', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP239', CAST(100000 AS Decimal(18, 0)), NULL, N'LC8', N'GXP89', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2390', CAST(100000 AS Decimal(18, 0)), NULL, N'LC80', N'GXP140', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2391', CAST(100000 AS Decimal(18, 0)), NULL, N'LC80', N'GXP141', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2392', CAST(100000 AS Decimal(18, 0)), NULL, N'LC80', N'GXP142', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2393', CAST(100000 AS Decimal(18, 0)), NULL, N'LC80', N'GXP143', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2394', CAST(100000 AS Decimal(18, 0)), NULL, N'LC80', N'GXP144', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2395', CAST(100000 AS Decimal(18, 0)), NULL, N'LC80', N'GXP145', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2396', CAST(100000 AS Decimal(18, 0)), NULL, N'LC80', N'GXP146', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2397', CAST(100000 AS Decimal(18, 0)), NULL, N'LC80', N'GXP147', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2398', CAST(100000 AS Decimal(18, 0)), NULL, N'LC80', N'GXP148', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2399', CAST(100000 AS Decimal(18, 0)), NULL, N'LC80', N'GXP149', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP24', CAST(100000 AS Decimal(18, 0)), NULL, N'LC1', N'GXP24', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP240', CAST(100000 AS Decimal(18, 0)), NULL, N'LC8', N'GXP90', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP2400', CAST(100000 AS Decimal(18, 0)), NULL, N'LC80', N'GXP150', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP241', CAST(100000 AS Decimal(18, 0)), NULL, N'LC9', N'GXP91', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP242', CAST(100000 AS Decimal(18, 0)), NULL, N'LC9', N'GXP92', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP243', CAST(100000 AS Decimal(18, 0)), NULL, N'LC9', N'GXP93', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP244', CAST(100000 AS Decimal(18, 0)), NULL, N'LC9', N'GXP94', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP245', CAST(100000 AS Decimal(18, 0)), NULL, N'LC9', N'GXP95', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP246', CAST(100000 AS Decimal(18, 0)), NULL, N'LC9', N'GXP96', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP247', CAST(100000 AS Decimal(18, 0)), NULL, N'LC9', N'GXP97', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP248', CAST(100000 AS Decimal(18, 0)), NULL, N'LC9', N'GXP98', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP249', CAST(100000 AS Decimal(18, 0)), NULL, N'LC9', N'GXP99', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP25', CAST(100000 AS Decimal(18, 0)), NULL, N'LC1', N'GXP25', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP250', CAST(100000 AS Decimal(18, 0)), NULL, N'LC9', N'GXP100', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP251', CAST(100000 AS Decimal(18, 0)), NULL, N'LC9', N'GXP101', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP252', CAST(100000 AS Decimal(18, 0)), NULL, N'LC9', N'GXP102', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP253', CAST(100000 AS Decimal(18, 0)), NULL, N'LC9', N'GXP103', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP254', CAST(100000 AS Decimal(18, 0)), NULL, N'LC9', N'GXP104', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP255', CAST(100000 AS Decimal(18, 0)), NULL, N'LC9', N'GXP105', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP256', CAST(100000 AS Decimal(18, 0)), NULL, N'LC9', N'GXP106', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP257', CAST(100000 AS Decimal(18, 0)), NULL, N'LC9', N'GXP107', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP258', CAST(100000 AS Decimal(18, 0)), NULL, N'LC9', N'GXP108', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP259', CAST(100000 AS Decimal(18, 0)), NULL, N'LC9', N'GXP109', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP26', CAST(100000 AS Decimal(18, 0)), NULL, N'LC1', N'GXP26', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP260', CAST(100000 AS Decimal(18, 0)), NULL, N'LC9', N'GXP110', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP261', CAST(100000 AS Decimal(18, 0)), NULL, N'LC9', N'GXP111', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP262', CAST(100000 AS Decimal(18, 0)), NULL, N'LC9', N'GXP112', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP263', CAST(100000 AS Decimal(18, 0)), NULL, N'LC9', N'GXP113', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP264', CAST(100000 AS Decimal(18, 0)), NULL, N'LC9', N'GXP114', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP265', CAST(100000 AS Decimal(18, 0)), NULL, N'LC9', N'GXP115', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP266', CAST(100000 AS Decimal(18, 0)), NULL, N'LC9', N'GXP116', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP267', CAST(100000 AS Decimal(18, 0)), NULL, N'LC9', N'GXP117', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP268', CAST(100000 AS Decimal(18, 0)), NULL, N'LC9', N'GXP118', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP269', CAST(100000 AS Decimal(18, 0)), NULL, N'LC9', N'GXP119', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP27', CAST(100000 AS Decimal(18, 0)), NULL, N'LC1', N'GXP27', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP270', CAST(100000 AS Decimal(18, 0)), NULL, N'LC9', N'GXP120', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP271', CAST(100000 AS Decimal(18, 0)), NULL, N'LC10', N'GXP121', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP272', CAST(100000 AS Decimal(18, 0)), NULL, N'LC10', N'GXP122', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP273', CAST(100000 AS Decimal(18, 0)), NULL, N'LC10', N'GXP123', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP274', CAST(100000 AS Decimal(18, 0)), NULL, N'LC10', N'GXP124', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP275', CAST(100000 AS Decimal(18, 0)), NULL, N'LC10', N'GXP125', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP276', CAST(100000 AS Decimal(18, 0)), NULL, N'LC10', N'GXP126', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP277', CAST(100000 AS Decimal(18, 0)), NULL, N'LC10', N'GXP127', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP278', CAST(100000 AS Decimal(18, 0)), NULL, N'LC10', N'GXP128', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP279', CAST(100000 AS Decimal(18, 0)), NULL, N'LC10', N'GXP129', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP28', CAST(100000 AS Decimal(18, 0)), N'HD6', N'LC1', N'GXP28', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP280', CAST(100000 AS Decimal(18, 0)), NULL, N'LC10', N'GXP130', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP281', CAST(100000 AS Decimal(18, 0)), NULL, N'LC10', N'GXP131', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP282', CAST(100000 AS Decimal(18, 0)), NULL, N'LC10', N'GXP132', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP283', CAST(100000 AS Decimal(18, 0)), NULL, N'LC10', N'GXP133', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP284', CAST(100000 AS Decimal(18, 0)), NULL, N'LC10', N'GXP134', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP285', CAST(100000 AS Decimal(18, 0)), NULL, N'LC10', N'GXP135', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP286', CAST(100000 AS Decimal(18, 0)), NULL, N'LC10', N'GXP136', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP287', CAST(100000 AS Decimal(18, 0)), NULL, N'LC10', N'GXP137', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP288', CAST(100000 AS Decimal(18, 0)), NULL, N'LC10', N'GXP138', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP289', CAST(100000 AS Decimal(18, 0)), NULL, N'LC10', N'GXP139', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP29', CAST(100000 AS Decimal(18, 0)), N'HD6', N'LC1', N'GXP29', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP290', CAST(100000 AS Decimal(18, 0)), NULL, N'LC10', N'GXP140', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP291', CAST(100000 AS Decimal(18, 0)), NULL, N'LC10', N'GXP141', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP292', CAST(100000 AS Decimal(18, 0)), NULL, N'LC10', N'GXP142', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP293', CAST(100000 AS Decimal(18, 0)), NULL, N'LC10', N'GXP143', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP294', CAST(100000 AS Decimal(18, 0)), NULL, N'LC10', N'GXP144', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP295', CAST(100000 AS Decimal(18, 0)), NULL, N'LC10', N'GXP145', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP296', CAST(100000 AS Decimal(18, 0)), NULL, N'LC10', N'GXP146', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP297', CAST(100000 AS Decimal(18, 0)), NULL, N'LC10', N'GXP147', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP298', CAST(100000 AS Decimal(18, 0)), NULL, N'LC10', N'GXP148', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP299', CAST(100000 AS Decimal(18, 0)), NULL, N'LC10', N'GXP149', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP3', CAST(100000 AS Decimal(18, 0)), N'HD2', N'LC1', N'GXP3', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP30', CAST(100000 AS Decimal(18, 0)), NULL, N'LC1', N'GXP30', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP300', CAST(100000 AS Decimal(18, 0)), NULL, N'LC10', N'GXP150', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP301', CAST(100000 AS Decimal(18, 0)), N'HD16', N'LC11', N'GXP1', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP302', CAST(100000 AS Decimal(18, 0)), N'HD16', N'LC11', N'GXP2', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP303', CAST(100000 AS Decimal(18, 0)), N'HD16', N'LC11', N'GXP3', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP304', CAST(100000 AS Decimal(18, 0)), N'HD16', N'LC11', N'GXP4', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP305', CAST(100000 AS Decimal(18, 0)), N'HD16', N'LC11', N'GXP5', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP306', CAST(100000 AS Decimal(18, 0)), NULL, N'LC11', N'GXP6', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP307', CAST(100000 AS Decimal(18, 0)), NULL, N'LC11', N'GXP7', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP308', CAST(100000 AS Decimal(18, 0)), NULL, N'LC11', N'GXP8', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP309', CAST(100000 AS Decimal(18, 0)), NULL, N'LC11', N'GXP9', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP31', CAST(100000 AS Decimal(18, 0)), NULL, N'LC2', N'GXP31', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP310', CAST(100000 AS Decimal(18, 0)), NULL, N'LC11', N'GXP10', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP311', CAST(100000 AS Decimal(18, 0)), NULL, N'LC11', N'GXP11', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP312', CAST(100000 AS Decimal(18, 0)), NULL, N'LC11', N'GXP12', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP313', CAST(100000 AS Decimal(18, 0)), NULL, N'LC11', N'GXP13', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP314', CAST(100000 AS Decimal(18, 0)), NULL, N'LC11', N'GXP14', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP315', CAST(100000 AS Decimal(18, 0)), NULL, N'LC11', N'GXP15', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP316', CAST(100000 AS Decimal(18, 0)), NULL, N'LC11', N'GXP16', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP317', CAST(100000 AS Decimal(18, 0)), NULL, N'LC11', N'GXP17', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP318', CAST(100000 AS Decimal(18, 0)), NULL, N'LC11', N'GXP18', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP319', CAST(100000 AS Decimal(18, 0)), NULL, N'LC11', N'GXP19', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP32', CAST(100000 AS Decimal(18, 0)), NULL, N'LC2', N'GXP32', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP320', CAST(100000 AS Decimal(18, 0)), NULL, N'LC11', N'GXP20', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP321', CAST(100000 AS Decimal(18, 0)), NULL, N'LC11', N'GXP21', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP322', CAST(100000 AS Decimal(18, 0)), NULL, N'LC11', N'GXP22', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP323', CAST(100000 AS Decimal(18, 0)), NULL, N'LC11', N'GXP23', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP324', CAST(100000 AS Decimal(18, 0)), NULL, N'LC11', N'GXP24', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP325', CAST(100000 AS Decimal(18, 0)), N'HD17', N'LC11', N'GXP25', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP326', CAST(100000 AS Decimal(18, 0)), NULL, N'LC11', N'GXP26', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP327', CAST(100000 AS Decimal(18, 0)), NULL, N'LC11', N'GXP27', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP328', CAST(100000 AS Decimal(18, 0)), N'HD17', N'LC11', N'GXP28', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP329', CAST(100000 AS Decimal(18, 0)), N'HD17', N'LC11', N'GXP29', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP33', CAST(100000 AS Decimal(18, 0)), NULL, N'LC2', N'GXP33', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP330', CAST(100000 AS Decimal(18, 0)), NULL, N'LC11', N'GXP30', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP331', CAST(100000 AS Decimal(18, 0)), NULL, N'LC12', N'GXP31', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP332', CAST(100000 AS Decimal(18, 0)), NULL, N'LC12', N'GXP32', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP333', CAST(100000 AS Decimal(18, 0)), NULL, N'LC12', N'GXP33', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP334', CAST(100000 AS Decimal(18, 0)), NULL, N'LC12', N'GXP34', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP335', CAST(100000 AS Decimal(18, 0)), NULL, N'LC12', N'GXP35', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP336', CAST(100000 AS Decimal(18, 0)), NULL, N'LC12', N'GXP36', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP337', CAST(100000 AS Decimal(18, 0)), NULL, N'LC12', N'GXP37', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP338', CAST(100000 AS Decimal(18, 0)), NULL, N'LC12', N'GXP38', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP339', CAST(100000 AS Decimal(18, 0)), NULL, N'LC12', N'GXP39', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP34', CAST(100000 AS Decimal(18, 0)), NULL, N'LC2', N'GXP34', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP340', CAST(100000 AS Decimal(18, 0)), NULL, N'LC12', N'GXP40', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP341', CAST(100000 AS Decimal(18, 0)), NULL, N'LC12', N'GXP41', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP342', CAST(100000 AS Decimal(18, 0)), NULL, N'LC12', N'GXP42', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP343', CAST(100000 AS Decimal(18, 0)), NULL, N'LC12', N'GXP43', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP344', CAST(100000 AS Decimal(18, 0)), NULL, N'LC12', N'GXP44', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP345', CAST(100000 AS Decimal(18, 0)), NULL, N'LC12', N'GXP45', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP346', CAST(100000 AS Decimal(18, 0)), NULL, N'LC12', N'GXP46', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP347', CAST(100000 AS Decimal(18, 0)), NULL, N'LC12', N'GXP47', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP348', CAST(100000 AS Decimal(18, 0)), NULL, N'LC12', N'GXP48', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP349', CAST(100000 AS Decimal(18, 0)), NULL, N'LC12', N'GXP49', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP35', CAST(100000 AS Decimal(18, 0)), NULL, N'LC2', N'GXP35', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP350', CAST(100000 AS Decimal(18, 0)), NULL, N'LC12', N'GXP50', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP351', CAST(100000 AS Decimal(18, 0)), NULL, N'LC12', N'GXP51', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP352', CAST(100000 AS Decimal(18, 0)), NULL, N'LC12', N'GXP52', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP353', CAST(100000 AS Decimal(18, 0)), NULL, N'LC12', N'GXP53', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP354', CAST(100000 AS Decimal(18, 0)), NULL, N'LC12', N'GXP54', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP355', CAST(100000 AS Decimal(18, 0)), NULL, N'LC12', N'GXP55', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP356', CAST(100000 AS Decimal(18, 0)), NULL, N'LC12', N'GXP56', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP357', CAST(100000 AS Decimal(18, 0)), NULL, N'LC12', N'GXP57', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP358', CAST(100000 AS Decimal(18, 0)), NULL, N'LC12', N'GXP58', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP359', CAST(100000 AS Decimal(18, 0)), NULL, N'LC12', N'GXP59', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP36', CAST(100000 AS Decimal(18, 0)), NULL, N'LC2', N'GXP36', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP360', CAST(100000 AS Decimal(18, 0)), NULL, N'LC12', N'GXP60', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP361', CAST(100000 AS Decimal(18, 0)), N'HD18', N'LC13', N'GXP61', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP362', CAST(100000 AS Decimal(18, 0)), N'HD18', N'LC13', N'GXP62', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP363', CAST(100000 AS Decimal(18, 0)), N'HD18', N'LC13', N'GXP63', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP364', CAST(100000 AS Decimal(18, 0)), N'HD18', N'LC13', N'GXP64', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP365', CAST(100000 AS Decimal(18, 0)), NULL, N'LC13', N'GXP65', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP366', CAST(100000 AS Decimal(18, 0)), NULL, N'LC13', N'GXP66', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP367', CAST(100000 AS Decimal(18, 0)), NULL, N'LC13', N'GXP67', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP368', CAST(100000 AS Decimal(18, 0)), NULL, N'LC13', N'GXP68', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP369', CAST(100000 AS Decimal(18, 0)), NULL, N'LC13', N'GXP69', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP37', CAST(100000 AS Decimal(18, 0)), NULL, N'LC2', N'GXP37', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP370', CAST(100000 AS Decimal(18, 0)), NULL, N'LC13', N'GXP70', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP371', CAST(100000 AS Decimal(18, 0)), NULL, N'LC13', N'GXP71', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP372', CAST(100000 AS Decimal(18, 0)), NULL, N'LC13', N'GXP72', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP373', CAST(100000 AS Decimal(18, 0)), NULL, N'LC13', N'GXP73', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP374', CAST(100000 AS Decimal(18, 0)), NULL, N'LC13', N'GXP74', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP375', CAST(100000 AS Decimal(18, 0)), NULL, N'LC13', N'GXP75', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP376', CAST(100000 AS Decimal(18, 0)), NULL, N'LC13', N'GXP76', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP377', CAST(100000 AS Decimal(18, 0)), NULL, N'LC13', N'GXP77', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP378', CAST(100000 AS Decimal(18, 0)), NULL, N'LC13', N'GXP78', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP379', CAST(100000 AS Decimal(18, 0)), NULL, N'LC13', N'GXP79', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP38', CAST(100000 AS Decimal(18, 0)), NULL, N'LC2', N'GXP38', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP380', CAST(100000 AS Decimal(18, 0)), NULL, N'LC13', N'GXP80', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP381', CAST(100000 AS Decimal(18, 0)), NULL, N'LC13', N'GXP81', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP382', CAST(100000 AS Decimal(18, 0)), NULL, N'LC13', N'GXP82', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP383', CAST(100000 AS Decimal(18, 0)), N'HD19', N'LC13', N'GXP83', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP384', CAST(100000 AS Decimal(18, 0)), N'HD19', N'LC13', N'GXP84', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP385', CAST(100000 AS Decimal(18, 0)), N'HD19', N'LC13', N'GXP85', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP386', CAST(100000 AS Decimal(18, 0)), N'HD19', N'LC13', N'GXP86', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP387', CAST(100000 AS Decimal(18, 0)), N'HD19', N'LC13', N'GXP87', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP388', CAST(100000 AS Decimal(18, 0)), N'HD19', N'LC13', N'GXP88', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP389', CAST(100000 AS Decimal(18, 0)), N'HD20', N'LC13', N'GXP89', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP39', CAST(100000 AS Decimal(18, 0)), NULL, N'LC2', N'GXP39', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP390', CAST(100000 AS Decimal(18, 0)), N'HD20', N'LC13', N'GXP90', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP391', CAST(100000 AS Decimal(18, 0)), NULL, N'LC14', N'GXP91', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP392', CAST(100000 AS Decimal(18, 0)), N'HD21', N'LC14', N'GXP92', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP393', CAST(100000 AS Decimal(18, 0)), NULL, N'LC14', N'GXP93', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP394', CAST(100000 AS Decimal(18, 0)), N'HD22', N'LC14', N'GXP94', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP395', CAST(100000 AS Decimal(18, 0)), NULL, N'LC14', N'GXP95', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP396', CAST(100000 AS Decimal(18, 0)), N'HD23', N'LC14', N'GXP96', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP397', CAST(100000 AS Decimal(18, 0)), NULL, N'LC14', N'GXP97', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP398', CAST(100000 AS Decimal(18, 0)), N'HD24', N'LC14', N'GXP98', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP399', CAST(100000 AS Decimal(18, 0)), NULL, N'LC14', N'GXP99', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP4', CAST(100000 AS Decimal(18, 0)), N'HD2', N'LC1', N'GXP4', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP40', CAST(100000 AS Decimal(18, 0)), NULL, N'LC2', N'GXP40', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP400', CAST(100000 AS Decimal(18, 0)), N'HD25', N'LC14', N'GXP100', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP401', CAST(100000 AS Decimal(18, 0)), NULL, N'LC14', N'GXP101', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP402', CAST(100000 AS Decimal(18, 0)), NULL, N'LC14', N'GXP102', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP403', CAST(100000 AS Decimal(18, 0)), NULL, N'LC14', N'GXP103', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP404', CAST(100000 AS Decimal(18, 0)), NULL, N'LC14', N'GXP104', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP405', CAST(100000 AS Decimal(18, 0)), NULL, N'LC14', N'GXP105', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP406', CAST(100000 AS Decimal(18, 0)), NULL, N'LC14', N'GXP106', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP407', CAST(100000 AS Decimal(18, 0)), NULL, N'LC14', N'GXP107', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP408', CAST(100000 AS Decimal(18, 0)), NULL, N'LC14', N'GXP108', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP409', CAST(100000 AS Decimal(18, 0)), NULL, N'LC14', N'GXP109', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP41', CAST(100000 AS Decimal(18, 0)), N'HD7', N'LC2', N'GXP41', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP410', CAST(100000 AS Decimal(18, 0)), NULL, N'LC14', N'GXP110', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP411', CAST(100000 AS Decimal(18, 0)), NULL, N'LC14', N'GXP111', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP412', CAST(100000 AS Decimal(18, 0)), NULL, N'LC14', N'GXP112', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP413', CAST(100000 AS Decimal(18, 0)), NULL, N'LC14', N'GXP113', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP414', CAST(100000 AS Decimal(18, 0)), NULL, N'LC14', N'GXP114', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP415', CAST(100000 AS Decimal(18, 0)), NULL, N'LC14', N'GXP115', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP416', CAST(100000 AS Decimal(18, 0)), NULL, N'LC14', N'GXP116', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP417', CAST(100000 AS Decimal(18, 0)), NULL, N'LC14', N'GXP117', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP418', CAST(100000 AS Decimal(18, 0)), NULL, N'LC14', N'GXP118', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP419', CAST(100000 AS Decimal(18, 0)), NULL, N'LC14', N'GXP119', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP42', CAST(100000 AS Decimal(18, 0)), N'HD7', N'LC2', N'GXP42', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP420', CAST(100000 AS Decimal(18, 0)), NULL, N'LC14', N'GXP120', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP421', CAST(100000 AS Decimal(18, 0)), NULL, N'LC15', N'GXP121', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP422', CAST(100000 AS Decimal(18, 0)), NULL, N'LC15', N'GXP122', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP423', CAST(100000 AS Decimal(18, 0)), NULL, N'LC15', N'GXP123', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP424', CAST(100000 AS Decimal(18, 0)), NULL, N'LC15', N'GXP124', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP425', CAST(100000 AS Decimal(18, 0)), NULL, N'LC15', N'GXP125', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP426', CAST(100000 AS Decimal(18, 0)), NULL, N'LC15', N'GXP126', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP427', CAST(100000 AS Decimal(18, 0)), NULL, N'LC15', N'GXP127', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP428', CAST(100000 AS Decimal(18, 0)), NULL, N'LC15', N'GXP128', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP429', CAST(100000 AS Decimal(18, 0)), NULL, N'LC15', N'GXP129', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP43', CAST(100000 AS Decimal(18, 0)), N'HD7', N'LC2', N'GXP43', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP430', CAST(100000 AS Decimal(18, 0)), NULL, N'LC15', N'GXP130', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP431', CAST(100000 AS Decimal(18, 0)), NULL, N'LC15', N'GXP131', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP432', CAST(100000 AS Decimal(18, 0)), NULL, N'LC15', N'GXP132', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP433', CAST(100000 AS Decimal(18, 0)), NULL, N'LC15', N'GXP133', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP434', CAST(100000 AS Decimal(18, 0)), NULL, N'LC15', N'GXP134', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP435', CAST(100000 AS Decimal(18, 0)), NULL, N'LC15', N'GXP135', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP436', CAST(100000 AS Decimal(18, 0)), NULL, N'LC15', N'GXP136', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP437', CAST(100000 AS Decimal(18, 0)), NULL, N'LC15', N'GXP137', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP438', CAST(100000 AS Decimal(18, 0)), NULL, N'LC15', N'GXP138', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP439', CAST(100000 AS Decimal(18, 0)), NULL, N'LC15', N'GXP139', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP44', CAST(100000 AS Decimal(18, 0)), N'HD7', N'LC2', N'GXP44', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP440', CAST(100000 AS Decimal(18, 0)), NULL, N'LC15', N'GXP140', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP441', CAST(100000 AS Decimal(18, 0)), NULL, N'LC15', N'GXP141', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP442', CAST(100000 AS Decimal(18, 0)), NULL, N'LC15', N'GXP142', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP443', CAST(100000 AS Decimal(18, 0)), NULL, N'LC15', N'GXP143', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP444', CAST(100000 AS Decimal(18, 0)), NULL, N'LC15', N'GXP144', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP445', CAST(100000 AS Decimal(18, 0)), NULL, N'LC15', N'GXP145', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP446', CAST(100000 AS Decimal(18, 0)), NULL, N'LC15', N'GXP146', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP447', CAST(100000 AS Decimal(18, 0)), NULL, N'LC15', N'GXP147', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP448', CAST(100000 AS Decimal(18, 0)), NULL, N'LC15', N'GXP148', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP449', CAST(100000 AS Decimal(18, 0)), NULL, N'LC15', N'GXP149', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP45', CAST(100000 AS Decimal(18, 0)), N'HD8', N'LC2', N'GXP45', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP450', CAST(100000 AS Decimal(18, 0)), NULL, N'LC15', N'GXP150', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP451', CAST(100000 AS Decimal(18, 0)), NULL, N'LC16', N'GXP1', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP452', CAST(100000 AS Decimal(18, 0)), NULL, N'LC16', N'GXP2', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP453', CAST(100000 AS Decimal(18, 0)), NULL, N'LC16', N'GXP3', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP454', CAST(100000 AS Decimal(18, 0)), NULL, N'LC16', N'GXP4', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP455', CAST(100000 AS Decimal(18, 0)), NULL, N'LC16', N'GXP5', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP456', CAST(100000 AS Decimal(18, 0)), NULL, N'LC16', N'GXP6', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP457', CAST(100000 AS Decimal(18, 0)), NULL, N'LC16', N'GXP7', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP458', CAST(100000 AS Decimal(18, 0)), NULL, N'LC16', N'GXP8', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP459', CAST(100000 AS Decimal(18, 0)), NULL, N'LC16', N'GXP9', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP46', CAST(100000 AS Decimal(18, 0)), N'HD8', N'LC2', N'GXP46', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP460', CAST(100000 AS Decimal(18, 0)), NULL, N'LC16', N'GXP10', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP461', CAST(100000 AS Decimal(18, 0)), NULL, N'LC16', N'GXP11', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP462', CAST(100000 AS Decimal(18, 0)), NULL, N'LC16', N'GXP12', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP463', CAST(100000 AS Decimal(18, 0)), NULL, N'LC16', N'GXP13', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP464', CAST(100000 AS Decimal(18, 0)), NULL, N'LC16', N'GXP14', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP465', CAST(100000 AS Decimal(18, 0)), NULL, N'LC16', N'GXP15', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP466', CAST(100000 AS Decimal(18, 0)), NULL, N'LC16', N'GXP16', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP467', CAST(100000 AS Decimal(18, 0)), NULL, N'LC16', N'GXP17', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP468', CAST(100000 AS Decimal(18, 0)), NULL, N'LC16', N'GXP18', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP469', CAST(100000 AS Decimal(18, 0)), NULL, N'LC16', N'GXP19', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP47', CAST(100000 AS Decimal(18, 0)), N'HD8', N'LC2', N'GXP47', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP470', CAST(100000 AS Decimal(18, 0)), NULL, N'LC16', N'GXP20', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP471', CAST(100000 AS Decimal(18, 0)), NULL, N'LC16', N'GXP21', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP472', CAST(100000 AS Decimal(18, 0)), NULL, N'LC16', N'GXP22', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP473', CAST(100000 AS Decimal(18, 0)), NULL, N'LC16', N'GXP23', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP474', CAST(100000 AS Decimal(18, 0)), NULL, N'LC16', N'GXP24', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP475', CAST(100000 AS Decimal(18, 0)), NULL, N'LC16', N'GXP25', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP476', CAST(100000 AS Decimal(18, 0)), NULL, N'LC16', N'GXP26', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP477', CAST(100000 AS Decimal(18, 0)), NULL, N'LC16', N'GXP27', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP478', CAST(100000 AS Decimal(18, 0)), NULL, N'LC16', N'GXP28', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP479', CAST(100000 AS Decimal(18, 0)), NULL, N'LC16', N'GXP29', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP48', CAST(100000 AS Decimal(18, 0)), N'HD9', N'LC2', N'GXP48', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP480', CAST(100000 AS Decimal(18, 0)), NULL, N'LC16', N'GXP30', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP481', CAST(100000 AS Decimal(18, 0)), NULL, N'LC17', N'GXP31', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP482', CAST(100000 AS Decimal(18, 0)), NULL, N'LC17', N'GXP32', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP483', CAST(100000 AS Decimal(18, 0)), NULL, N'LC17', N'GXP33', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP484', CAST(100000 AS Decimal(18, 0)), NULL, N'LC17', N'GXP34', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP485', CAST(100000 AS Decimal(18, 0)), NULL, N'LC17', N'GXP35', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP486', CAST(100000 AS Decimal(18, 0)), NULL, N'LC17', N'GXP36', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP487', CAST(100000 AS Decimal(18, 0)), NULL, N'LC17', N'GXP37', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP488', CAST(100000 AS Decimal(18, 0)), NULL, N'LC17', N'GXP38', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP489', CAST(100000 AS Decimal(18, 0)), NULL, N'LC17', N'GXP39', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP49', CAST(100000 AS Decimal(18, 0)), N'HD10', N'LC2', N'GXP49', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP490', CAST(100000 AS Decimal(18, 0)), NULL, N'LC17', N'GXP40', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP491', CAST(100000 AS Decimal(18, 0)), NULL, N'LC17', N'GXP41', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP492', CAST(100000 AS Decimal(18, 0)), NULL, N'LC17', N'GXP42', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP493', CAST(100000 AS Decimal(18, 0)), NULL, N'LC17', N'GXP43', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP494', CAST(100000 AS Decimal(18, 0)), NULL, N'LC17', N'GXP44', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP495', CAST(100000 AS Decimal(18, 0)), NULL, N'LC17', N'GXP45', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP496', CAST(100000 AS Decimal(18, 0)), NULL, N'LC17', N'GXP46', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP497', CAST(100000 AS Decimal(18, 0)), NULL, N'LC17', N'GXP47', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP498', CAST(100000 AS Decimal(18, 0)), NULL, N'LC17', N'GXP48', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP499', CAST(100000 AS Decimal(18, 0)), NULL, N'LC17', N'GXP49', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP5', CAST(100000 AS Decimal(18, 0)), N'HD2', N'LC1', N'GXP5', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP50', CAST(100000 AS Decimal(18, 0)), N'HD11', N'LC2', N'GXP50', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP500', CAST(100000 AS Decimal(18, 0)), NULL, N'LC17', N'GXP50', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP501', CAST(100000 AS Decimal(18, 0)), NULL, N'LC17', N'GXP51', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP502', CAST(100000 AS Decimal(18, 0)), NULL, N'LC17', N'GXP52', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP503', CAST(100000 AS Decimal(18, 0)), NULL, N'LC17', N'GXP53', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP504', CAST(100000 AS Decimal(18, 0)), NULL, N'LC17', N'GXP54', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP505', CAST(100000 AS Decimal(18, 0)), NULL, N'LC17', N'GXP55', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP506', CAST(100000 AS Decimal(18, 0)), NULL, N'LC17', N'GXP56', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP507', CAST(100000 AS Decimal(18, 0)), NULL, N'LC17', N'GXP57', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP508', CAST(100000 AS Decimal(18, 0)), NULL, N'LC17', N'GXP58', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP509', CAST(100000 AS Decimal(18, 0)), NULL, N'LC17', N'GXP59', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP51', CAST(100000 AS Decimal(18, 0)), N'HD12', N'LC2', N'GXP51', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP510', CAST(100000 AS Decimal(18, 0)), NULL, N'LC17', N'GXP60', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP511', CAST(100000 AS Decimal(18, 0)), NULL, N'LC18', N'GXP61', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP512', CAST(100000 AS Decimal(18, 0)), NULL, N'LC18', N'GXP62', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP513', CAST(100000 AS Decimal(18, 0)), NULL, N'LC18', N'GXP63', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP514', CAST(100000 AS Decimal(18, 0)), NULL, N'LC18', N'GXP64', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP515', CAST(100000 AS Decimal(18, 0)), NULL, N'LC18', N'GXP65', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP516', CAST(100000 AS Decimal(18, 0)), NULL, N'LC18', N'GXP66', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP517', CAST(100000 AS Decimal(18, 0)), NULL, N'LC18', N'GXP67', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP518', CAST(100000 AS Decimal(18, 0)), NULL, N'LC18', N'GXP68', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP519', CAST(100000 AS Decimal(18, 0)), NULL, N'LC18', N'GXP69', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP52', CAST(100000 AS Decimal(18, 0)), NULL, N'LC2', N'GXP52', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP520', CAST(100000 AS Decimal(18, 0)), NULL, N'LC18', N'GXP70', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP521', CAST(100000 AS Decimal(18, 0)), NULL, N'LC18', N'GXP71', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP522', CAST(100000 AS Decimal(18, 0)), NULL, N'LC18', N'GXP72', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP523', CAST(100000 AS Decimal(18, 0)), NULL, N'LC18', N'GXP73', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP524', CAST(100000 AS Decimal(18, 0)), NULL, N'LC18', N'GXP74', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP525', CAST(100000 AS Decimal(18, 0)), NULL, N'LC18', N'GXP75', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP526', CAST(100000 AS Decimal(18, 0)), NULL, N'LC18', N'GXP76', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP527', CAST(100000 AS Decimal(18, 0)), NULL, N'LC18', N'GXP77', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP528', CAST(100000 AS Decimal(18, 0)), NULL, N'LC18', N'GXP78', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP529', CAST(100000 AS Decimal(18, 0)), NULL, N'LC18', N'GXP79', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP53', CAST(100000 AS Decimal(18, 0)), NULL, N'LC2', N'GXP53', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP530', CAST(100000 AS Decimal(18, 0)), NULL, N'LC18', N'GXP80', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP531', CAST(100000 AS Decimal(18, 0)), NULL, N'LC18', N'GXP81', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP532', CAST(100000 AS Decimal(18, 0)), NULL, N'LC18', N'GXP82', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP533', CAST(100000 AS Decimal(18, 0)), NULL, N'LC18', N'GXP83', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP534', CAST(100000 AS Decimal(18, 0)), NULL, N'LC18', N'GXP84', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP535', CAST(100000 AS Decimal(18, 0)), NULL, N'LC18', N'GXP85', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP536', CAST(100000 AS Decimal(18, 0)), NULL, N'LC18', N'GXP86', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP537', CAST(100000 AS Decimal(18, 0)), NULL, N'LC18', N'GXP87', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP538', CAST(100000 AS Decimal(18, 0)), NULL, N'LC18', N'GXP88', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP539', CAST(100000 AS Decimal(18, 0)), NULL, N'LC18', N'GXP89', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP54', CAST(100000 AS Decimal(18, 0)), NULL, N'LC2', N'GXP54', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP540', CAST(100000 AS Decimal(18, 0)), NULL, N'LC18', N'GXP90', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP541', CAST(100000 AS Decimal(18, 0)), NULL, N'LC19', N'GXP91', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP542', CAST(100000 AS Decimal(18, 0)), NULL, N'LC19', N'GXP92', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP543', CAST(100000 AS Decimal(18, 0)), NULL, N'LC19', N'GXP93', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP544', CAST(100000 AS Decimal(18, 0)), NULL, N'LC19', N'GXP94', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP545', CAST(100000 AS Decimal(18, 0)), NULL, N'LC19', N'GXP95', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP546', CAST(100000 AS Decimal(18, 0)), NULL, N'LC19', N'GXP96', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP547', CAST(100000 AS Decimal(18, 0)), NULL, N'LC19', N'GXP97', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP548', CAST(100000 AS Decimal(18, 0)), NULL, N'LC19', N'GXP98', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP549', CAST(100000 AS Decimal(18, 0)), NULL, N'LC19', N'GXP99', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP55', CAST(100000 AS Decimal(18, 0)), NULL, N'LC2', N'GXP55', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP550', CAST(100000 AS Decimal(18, 0)), NULL, N'LC19', N'GXP100', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP551', CAST(100000 AS Decimal(18, 0)), NULL, N'LC19', N'GXP101', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP552', CAST(100000 AS Decimal(18, 0)), NULL, N'LC19', N'GXP102', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP553', CAST(100000 AS Decimal(18, 0)), NULL, N'LC19', N'GXP103', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP554', CAST(100000 AS Decimal(18, 0)), NULL, N'LC19', N'GXP104', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP555', CAST(100000 AS Decimal(18, 0)), NULL, N'LC19', N'GXP105', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP556', CAST(100000 AS Decimal(18, 0)), NULL, N'LC19', N'GXP106', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP557', CAST(100000 AS Decimal(18, 0)), NULL, N'LC19', N'GXP107', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP558', CAST(100000 AS Decimal(18, 0)), NULL, N'LC19', N'GXP108', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP559', CAST(100000 AS Decimal(18, 0)), NULL, N'LC19', N'GXP109', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP56', CAST(100000 AS Decimal(18, 0)), NULL, N'LC2', N'GXP56', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP560', CAST(100000 AS Decimal(18, 0)), NULL, N'LC19', N'GXP110', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP561', CAST(100000 AS Decimal(18, 0)), NULL, N'LC19', N'GXP111', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP562', CAST(100000 AS Decimal(18, 0)), NULL, N'LC19', N'GXP112', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP563', CAST(100000 AS Decimal(18, 0)), NULL, N'LC19', N'GXP113', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP564', CAST(100000 AS Decimal(18, 0)), NULL, N'LC19', N'GXP114', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP565', CAST(100000 AS Decimal(18, 0)), NULL, N'LC19', N'GXP115', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP566', CAST(100000 AS Decimal(18, 0)), NULL, N'LC19', N'GXP116', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP567', CAST(100000 AS Decimal(18, 0)), NULL, N'LC19', N'GXP117', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP568', CAST(100000 AS Decimal(18, 0)), NULL, N'LC19', N'GXP118', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP569', CAST(100000 AS Decimal(18, 0)), NULL, N'LC19', N'GXP119', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP57', CAST(100000 AS Decimal(18, 0)), NULL, N'LC2', N'GXP57', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP570', CAST(100000 AS Decimal(18, 0)), NULL, N'LC19', N'GXP120', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP571', CAST(100000 AS Decimal(18, 0)), N'HD26', N'LC20', N'GXP121', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP572', CAST(100000 AS Decimal(18, 0)), N'HD27', N'LC20', N'GXP122', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP573', CAST(100000 AS Decimal(18, 0)), N'HD28', N'LC20', N'GXP123', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP574', CAST(100000 AS Decimal(18, 0)), N'HD29', N'LC20', N'GXP124', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP575', CAST(100000 AS Decimal(18, 0)), N'HD30', N'LC20', N'GXP125', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP576', CAST(100000 AS Decimal(18, 0)), NULL, N'LC20', N'GXP126', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP577', CAST(100000 AS Decimal(18, 0)), NULL, N'LC20', N'GXP127', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP578', CAST(100000 AS Decimal(18, 0)), NULL, N'LC20', N'GXP128', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP579', CAST(100000 AS Decimal(18, 0)), NULL, N'LC20', N'GXP129', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP58', CAST(100000 AS Decimal(18, 0)), NULL, N'LC2', N'GXP58', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP580', CAST(100000 AS Decimal(18, 0)), NULL, N'LC20', N'GXP130', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP581', CAST(100000 AS Decimal(18, 0)), NULL, N'LC20', N'GXP131', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP582', CAST(100000 AS Decimal(18, 0)), NULL, N'LC20', N'GXP132', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP583', CAST(100000 AS Decimal(18, 0)), NULL, N'LC20', N'GXP133', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP584', CAST(100000 AS Decimal(18, 0)), NULL, N'LC20', N'GXP134', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP585', CAST(100000 AS Decimal(18, 0)), NULL, N'LC20', N'GXP135', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP586', CAST(100000 AS Decimal(18, 0)), NULL, N'LC20', N'GXP136', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP587', CAST(100000 AS Decimal(18, 0)), NULL, N'LC20', N'GXP137', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP588', CAST(100000 AS Decimal(18, 0)), NULL, N'LC20', N'GXP138', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP589', CAST(100000 AS Decimal(18, 0)), NULL, N'LC20', N'GXP139', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP59', CAST(100000 AS Decimal(18, 0)), NULL, N'LC2', N'GXP59', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP590', CAST(100000 AS Decimal(18, 0)), NULL, N'LC20', N'GXP140', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP591', CAST(100000 AS Decimal(18, 0)), NULL, N'LC20', N'GXP141', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP592', CAST(100000 AS Decimal(18, 0)), NULL, N'LC20', N'GXP142', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP593', CAST(100000 AS Decimal(18, 0)), NULL, N'LC20', N'GXP143', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP594', CAST(100000 AS Decimal(18, 0)), NULL, N'LC20', N'GXP144', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP595', CAST(100000 AS Decimal(18, 0)), NULL, N'LC20', N'GXP145', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP596', CAST(100000 AS Decimal(18, 0)), NULL, N'LC20', N'GXP146', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP597', CAST(100000 AS Decimal(18, 0)), NULL, N'LC20', N'GXP147', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP598', CAST(100000 AS Decimal(18, 0)), NULL, N'LC20', N'GXP148', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP599', CAST(100000 AS Decimal(18, 0)), NULL, N'LC20', N'GXP149', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP6', CAST(100000 AS Decimal(18, 0)), N'HD3', N'LC1', N'GXP6', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP60', CAST(100000 AS Decimal(18, 0)), NULL, N'LC2', N'GXP60', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP600', CAST(100000 AS Decimal(18, 0)), NULL, N'LC20', N'GXP150', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP601', CAST(100000 AS Decimal(18, 0)), N'HD31', N'LC21', N'GXP1', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP602', CAST(100000 AS Decimal(18, 0)), N'HD31', N'LC21', N'GXP2', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP603', CAST(100000 AS Decimal(18, 0)), N'HD31', N'LC21', N'GXP3', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP604', CAST(100000 AS Decimal(18, 0)), N'HD31', N'LC21', N'GXP4', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP605', CAST(100000 AS Decimal(18, 0)), N'HD31', N'LC21', N'GXP5', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP606', CAST(100000 AS Decimal(18, 0)), N'HD31', N'LC21', N'GXP6', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP607', CAST(100000 AS Decimal(18, 0)), N'HD31', N'LC21', N'GXP7', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP608', CAST(100000 AS Decimal(18, 0)), N'HD31', N'LC21', N'GXP8', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP609', CAST(100000 AS Decimal(18, 0)), N'HD31', N'LC21', N'GXP9', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP61', CAST(100000 AS Decimal(18, 0)), NULL, N'LC3', N'GXP61', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP610', CAST(100000 AS Decimal(18, 0)), N'HD31', N'LC21', N'GXP10', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP611', CAST(100000 AS Decimal(18, 0)), N'HD32', N'LC21', N'GXP11', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP612', CAST(100000 AS Decimal(18, 0)), N'HD32', N'LC21', N'GXP12', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP613', CAST(100000 AS Decimal(18, 0)), N'HD32', N'LC21', N'GXP13', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP614', CAST(100000 AS Decimal(18, 0)), N'HD32', N'LC21', N'GXP14', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP615', CAST(100000 AS Decimal(18, 0)), N'HD32', N'LC21', N'GXP15', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP616', CAST(100000 AS Decimal(18, 0)), N'HD32', N'LC21', N'GXP16', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP617', CAST(100000 AS Decimal(18, 0)), N'HD32', N'LC21', N'GXP17', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP618', CAST(100000 AS Decimal(18, 0)), N'HD32', N'LC21', N'GXP18', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP619', CAST(100000 AS Decimal(18, 0)), N'HD32', N'LC21', N'GXP19', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP62', CAST(100000 AS Decimal(18, 0)), NULL, N'LC3', N'GXP62', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP620', CAST(100000 AS Decimal(18, 0)), N'HD32', N'LC21', N'GXP20', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP621', CAST(100000 AS Decimal(18, 0)), N'HD32', N'LC21', N'GXP21', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP622', CAST(100000 AS Decimal(18, 0)), N'HD32', N'LC21', N'GXP22', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP623', CAST(100000 AS Decimal(18, 0)), N'HD32', N'LC21', N'GXP23', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP624', CAST(100000 AS Decimal(18, 0)), N'HD32', N'LC21', N'GXP24', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP625', CAST(100000 AS Decimal(18, 0)), N'HD32', N'LC21', N'GXP25', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP626', CAST(100000 AS Decimal(18, 0)), N'HD32', N'LC21', N'GXP26', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP627', CAST(100000 AS Decimal(18, 0)), N'HD32', N'LC21', N'GXP27', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP628', CAST(100000 AS Decimal(18, 0)), N'HD32', N'LC21', N'GXP28', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP629', CAST(100000 AS Decimal(18, 0)), N'HD32', N'LC21', N'GXP29', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP63', CAST(100000 AS Decimal(18, 0)), NULL, N'LC3', N'GXP63', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP630', CAST(100000 AS Decimal(18, 0)), N'HD32', N'LC21', N'GXP30', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP631', CAST(100000 AS Decimal(18, 0)), N'HD33', N'LC22', N'GXP31', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP632', CAST(100000 AS Decimal(18, 0)), N'HD33', N'LC22', N'GXP32', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP633', CAST(100000 AS Decimal(18, 0)), N'HD33', N'LC22', N'GXP33', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP634', CAST(100000 AS Decimal(18, 0)), N'HD33', N'LC22', N'GXP34', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP635', CAST(100000 AS Decimal(18, 0)), N'HD33', N'LC22', N'GXP35', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP636', CAST(100000 AS Decimal(18, 0)), N'HD33', N'LC22', N'GXP36', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP637', CAST(100000 AS Decimal(18, 0)), N'HD33', N'LC22', N'GXP37', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP638', CAST(100000 AS Decimal(18, 0)), N'HD33', N'LC22', N'GXP38', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP639', CAST(100000 AS Decimal(18, 0)), N'HD33', N'LC22', N'GXP39', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP64', CAST(100000 AS Decimal(18, 0)), NULL, N'LC3', N'GXP64', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP640', CAST(100000 AS Decimal(18, 0)), N'HD33', N'LC22', N'GXP40', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP641', CAST(100000 AS Decimal(18, 0)), N'HD33', N'LC22', N'GXP41', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP642', CAST(100000 AS Decimal(18, 0)), N'HD33', N'LC22', N'GXP42', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP643', CAST(100000 AS Decimal(18, 0)), N'HD33', N'LC22', N'GXP43', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP644', CAST(100000 AS Decimal(18, 0)), N'HD34', N'LC22', N'GXP44', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP645', CAST(100000 AS Decimal(18, 0)), N'HD34', N'LC22', N'GXP45', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP646', CAST(100000 AS Decimal(18, 0)), N'HD34', N'LC22', N'GXP46', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP647', CAST(100000 AS Decimal(18, 0)), N'HD34', N'LC22', N'GXP47', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP648', CAST(100000 AS Decimal(18, 0)), N'HD34', N'LC22', N'GXP48', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP649', CAST(100000 AS Decimal(18, 0)), NULL, N'LC22', N'GXP49', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP65', CAST(100000 AS Decimal(18, 0)), NULL, N'LC3', N'GXP65', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP650', CAST(100000 AS Decimal(18, 0)), NULL, N'LC22', N'GXP50', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP651', CAST(100000 AS Decimal(18, 0)), NULL, N'LC22', N'GXP51', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP652', CAST(100000 AS Decimal(18, 0)), NULL, N'LC22', N'GXP52', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP653', CAST(100000 AS Decimal(18, 0)), NULL, N'LC22', N'GXP53', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP654', CAST(100000 AS Decimal(18, 0)), NULL, N'LC22', N'GXP54', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP655', CAST(100000 AS Decimal(18, 0)), NULL, N'LC22', N'GXP55', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP656', CAST(100000 AS Decimal(18, 0)), NULL, N'LC22', N'GXP56', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP657', CAST(100000 AS Decimal(18, 0)), NULL, N'LC22', N'GXP57', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP658', CAST(100000 AS Decimal(18, 0)), NULL, N'LC22', N'GXP58', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP659', CAST(100000 AS Decimal(18, 0)), NULL, N'LC22', N'GXP59', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP66', CAST(100000 AS Decimal(18, 0)), NULL, N'LC3', N'GXP66', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP660', CAST(100000 AS Decimal(18, 0)), NULL, N'LC22', N'GXP60', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP661', CAST(100000 AS Decimal(18, 0)), NULL, N'LC23', N'GXP61', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP662', CAST(100000 AS Decimal(18, 0)), NULL, N'LC23', N'GXP62', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP663', CAST(100000 AS Decimal(18, 0)), NULL, N'LC23', N'GXP63', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP664', CAST(100000 AS Decimal(18, 0)), NULL, N'LC23', N'GXP64', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP665', CAST(100000 AS Decimal(18, 0)), NULL, N'LC23', N'GXP65', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP666', CAST(100000 AS Decimal(18, 0)), N'HD35', N'LC23', N'GXP66', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP667', CAST(100000 AS Decimal(18, 0)), N'HD35', N'LC23', N'GXP67', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP668', CAST(100000 AS Decimal(18, 0)), N'HD35', N'LC23', N'GXP68', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP669', CAST(100000 AS Decimal(18, 0)), N'HD35', N'LC23', N'GXP69', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP67', CAST(100000 AS Decimal(18, 0)), NULL, N'LC3', N'GXP67', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP670', CAST(100000 AS Decimal(18, 0)), N'HD35', N'LC23', N'GXP70', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP671', CAST(100000 AS Decimal(18, 0)), N'HD36', N'LC23', N'GXP71', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP672', CAST(100000 AS Decimal(18, 0)), N'HD36', N'LC23', N'GXP72', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP673', CAST(100000 AS Decimal(18, 0)), N'HD37', N'LC23', N'GXP73', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP674', CAST(100000 AS Decimal(18, 0)), N'HD38', N'LC23', N'GXP74', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP675', CAST(100000 AS Decimal(18, 0)), N'HD39', N'LC23', N'GXP75', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP676', CAST(100000 AS Decimal(18, 0)), N'HD40', N'LC23', N'GXP76', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP677', CAST(100000 AS Decimal(18, 0)), NULL, N'LC23', N'GXP77', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP678', CAST(100000 AS Decimal(18, 0)), NULL, N'LC23', N'GXP78', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP679', CAST(100000 AS Decimal(18, 0)), NULL, N'LC23', N'GXP79', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP68', CAST(100000 AS Decimal(18, 0)), NULL, N'LC3', N'GXP68', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP680', CAST(100000 AS Decimal(18, 0)), NULL, N'LC23', N'GXP80', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP681', CAST(100000 AS Decimal(18, 0)), NULL, N'LC23', N'GXP81', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP682', CAST(100000 AS Decimal(18, 0)), NULL, N'LC23', N'GXP82', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP683', CAST(100000 AS Decimal(18, 0)), NULL, N'LC23', N'GXP83', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP684', CAST(100000 AS Decimal(18, 0)), NULL, N'LC23', N'GXP84', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP685', CAST(100000 AS Decimal(18, 0)), NULL, N'LC23', N'GXP85', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP686', CAST(100000 AS Decimal(18, 0)), NULL, N'LC23', N'GXP86', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP687', CAST(100000 AS Decimal(18, 0)), NULL, N'LC23', N'GXP87', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP688', CAST(100000 AS Decimal(18, 0)), NULL, N'LC23', N'GXP88', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP689', CAST(100000 AS Decimal(18, 0)), NULL, N'LC23', N'GXP89', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP69', CAST(100000 AS Decimal(18, 0)), NULL, N'LC3', N'GXP69', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP690', CAST(100000 AS Decimal(18, 0)), NULL, N'LC23', N'GXP90', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP691', CAST(100000 AS Decimal(18, 0)), NULL, N'LC24', N'GXP91', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP692', CAST(100000 AS Decimal(18, 0)), NULL, N'LC24', N'GXP92', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP693', CAST(100000 AS Decimal(18, 0)), NULL, N'LC24', N'GXP93', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP694', CAST(100000 AS Decimal(18, 0)), NULL, N'LC24', N'GXP94', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP695', CAST(100000 AS Decimal(18, 0)), NULL, N'LC24', N'GXP95', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP696', CAST(100000 AS Decimal(18, 0)), NULL, N'LC24', N'GXP96', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP697', CAST(100000 AS Decimal(18, 0)), NULL, N'LC24', N'GXP97', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP698', CAST(100000 AS Decimal(18, 0)), NULL, N'LC24', N'GXP98', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP699', CAST(100000 AS Decimal(18, 0)), NULL, N'LC24', N'GXP99', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP7', CAST(100000 AS Decimal(18, 0)), NULL, N'LC1', N'GXP7', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP70', CAST(100000 AS Decimal(18, 0)), NULL, N'LC3', N'GXP70', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP700', CAST(100000 AS Decimal(18, 0)), NULL, N'LC24', N'GXP100', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP701', CAST(100000 AS Decimal(18, 0)), NULL, N'LC24', N'GXP101', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP702', CAST(100000 AS Decimal(18, 0)), NULL, N'LC24', N'GXP102', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP703', CAST(100000 AS Decimal(18, 0)), NULL, N'LC24', N'GXP103', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP704', CAST(100000 AS Decimal(18, 0)), NULL, N'LC24', N'GXP104', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP705', CAST(100000 AS Decimal(18, 0)), NULL, N'LC24', N'GXP105', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP706', CAST(100000 AS Decimal(18, 0)), NULL, N'LC24', N'GXP106', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP707', CAST(100000 AS Decimal(18, 0)), NULL, N'LC24', N'GXP107', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP708', CAST(100000 AS Decimal(18, 0)), NULL, N'LC24', N'GXP108', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP709', CAST(100000 AS Decimal(18, 0)), NULL, N'LC24', N'GXP109', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP71', CAST(100000 AS Decimal(18, 0)), NULL, N'LC3', N'GXP71', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP710', CAST(100000 AS Decimal(18, 0)), NULL, N'LC24', N'GXP110', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP711', CAST(100000 AS Decimal(18, 0)), NULL, N'LC24', N'GXP111', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP712', CAST(100000 AS Decimal(18, 0)), NULL, N'LC24', N'GXP112', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP713', CAST(100000 AS Decimal(18, 0)), NULL, N'LC24', N'GXP113', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP714', CAST(100000 AS Decimal(18, 0)), NULL, N'LC24', N'GXP114', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP715', CAST(100000 AS Decimal(18, 0)), NULL, N'LC24', N'GXP115', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP716', CAST(100000 AS Decimal(18, 0)), NULL, N'LC24', N'GXP116', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP717', CAST(100000 AS Decimal(18, 0)), NULL, N'LC24', N'GXP117', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP718', CAST(100000 AS Decimal(18, 0)), NULL, N'LC24', N'GXP118', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP719', CAST(100000 AS Decimal(18, 0)), NULL, N'LC24', N'GXP119', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP72', CAST(100000 AS Decimal(18, 0)), NULL, N'LC3', N'GXP72', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP720', CAST(100000 AS Decimal(18, 0)), NULL, N'LC24', N'GXP120', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP721', CAST(100000 AS Decimal(18, 0)), NULL, N'LC25', N'GXP121', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP722', CAST(100000 AS Decimal(18, 0)), NULL, N'LC25', N'GXP122', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP723', CAST(100000 AS Decimal(18, 0)), NULL, N'LC25', N'GXP123', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP724', CAST(100000 AS Decimal(18, 0)), NULL, N'LC25', N'GXP124', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP725', CAST(100000 AS Decimal(18, 0)), NULL, N'LC25', N'GXP125', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP726', CAST(100000 AS Decimal(18, 0)), NULL, N'LC25', N'GXP126', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP727', CAST(100000 AS Decimal(18, 0)), NULL, N'LC25', N'GXP127', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP728', CAST(100000 AS Decimal(18, 0)), NULL, N'LC25', N'GXP128', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP729', CAST(100000 AS Decimal(18, 0)), NULL, N'LC25', N'GXP129', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP73', CAST(100000 AS Decimal(18, 0)), NULL, N'LC3', N'GXP73', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP730', CAST(100000 AS Decimal(18, 0)), NULL, N'LC25', N'GXP130', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP731', CAST(100000 AS Decimal(18, 0)), NULL, N'LC25', N'GXP131', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP732', CAST(100000 AS Decimal(18, 0)), NULL, N'LC25', N'GXP132', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP733', CAST(100000 AS Decimal(18, 0)), NULL, N'LC25', N'GXP133', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP734', CAST(100000 AS Decimal(18, 0)), NULL, N'LC25', N'GXP134', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP735', CAST(100000 AS Decimal(18, 0)), NULL, N'LC25', N'GXP135', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP736', CAST(100000 AS Decimal(18, 0)), NULL, N'LC25', N'GXP136', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP737', CAST(100000 AS Decimal(18, 0)), NULL, N'LC25', N'GXP137', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP738', CAST(100000 AS Decimal(18, 0)), NULL, N'LC25', N'GXP138', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP739', CAST(100000 AS Decimal(18, 0)), NULL, N'LC25', N'GXP139', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP74', CAST(100000 AS Decimal(18, 0)), NULL, N'LC3', N'GXP74', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP740', CAST(100000 AS Decimal(18, 0)), NULL, N'LC25', N'GXP140', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP741', CAST(100000 AS Decimal(18, 0)), NULL, N'LC25', N'GXP141', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP742', CAST(100000 AS Decimal(18, 0)), NULL, N'LC25', N'GXP142', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP743', CAST(100000 AS Decimal(18, 0)), NULL, N'LC25', N'GXP143', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP744', CAST(100000 AS Decimal(18, 0)), NULL, N'LC25', N'GXP144', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP745', CAST(100000 AS Decimal(18, 0)), NULL, N'LC25', N'GXP145', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP746', CAST(100000 AS Decimal(18, 0)), NULL, N'LC25', N'GXP146', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP747', CAST(100000 AS Decimal(18, 0)), NULL, N'LC25', N'GXP147', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP748', CAST(100000 AS Decimal(18, 0)), NULL, N'LC25', N'GXP148', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP749', CAST(100000 AS Decimal(18, 0)), NULL, N'LC25', N'GXP149', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP75', CAST(100000 AS Decimal(18, 0)), NULL, N'LC3', N'GXP75', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP750', CAST(100000 AS Decimal(18, 0)), NULL, N'LC25', N'GXP150', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP751', CAST(100000 AS Decimal(18, 0)), NULL, N'LC26', N'GXP1', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP752', CAST(100000 AS Decimal(18, 0)), NULL, N'LC26', N'GXP2', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP753', CAST(100000 AS Decimal(18, 0)), NULL, N'LC26', N'GXP3', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP754', CAST(100000 AS Decimal(18, 0)), NULL, N'LC26', N'GXP4', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP755', CAST(100000 AS Decimal(18, 0)), NULL, N'LC26', N'GXP5', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP756', CAST(100000 AS Decimal(18, 0)), NULL, N'LC26', N'GXP6', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP757', CAST(100000 AS Decimal(18, 0)), NULL, N'LC26', N'GXP7', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP758', CAST(100000 AS Decimal(18, 0)), NULL, N'LC26', N'GXP8', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP759', CAST(100000 AS Decimal(18, 0)), NULL, N'LC26', N'GXP9', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP76', CAST(100000 AS Decimal(18, 0)), NULL, N'LC3', N'GXP76', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP760', CAST(100000 AS Decimal(18, 0)), NULL, N'LC26', N'GXP10', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP761', CAST(100000 AS Decimal(18, 0)), NULL, N'LC26', N'GXP11', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP762', CAST(100000 AS Decimal(18, 0)), NULL, N'LC26', N'GXP12', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP763', CAST(100000 AS Decimal(18, 0)), NULL, N'LC26', N'GXP13', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP764', CAST(100000 AS Decimal(18, 0)), NULL, N'LC26', N'GXP14', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP765', CAST(100000 AS Decimal(18, 0)), NULL, N'LC26', N'GXP15', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP766', CAST(100000 AS Decimal(18, 0)), NULL, N'LC26', N'GXP16', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP767', CAST(100000 AS Decimal(18, 0)), NULL, N'LC26', N'GXP17', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP768', CAST(100000 AS Decimal(18, 0)), NULL, N'LC26', N'GXP18', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP769', CAST(100000 AS Decimal(18, 0)), NULL, N'LC26', N'GXP19', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP77', CAST(100000 AS Decimal(18, 0)), NULL, N'LC3', N'GXP77', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP770', CAST(100000 AS Decimal(18, 0)), NULL, N'LC26', N'GXP20', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP771', CAST(100000 AS Decimal(18, 0)), NULL, N'LC26', N'GXP21', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP772', CAST(100000 AS Decimal(18, 0)), NULL, N'LC26', N'GXP22', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP773', CAST(100000 AS Decimal(18, 0)), NULL, N'LC26', N'GXP23', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP774', CAST(100000 AS Decimal(18, 0)), NULL, N'LC26', N'GXP24', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP775', CAST(100000 AS Decimal(18, 0)), NULL, N'LC26', N'GXP25', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP776', CAST(100000 AS Decimal(18, 0)), NULL, N'LC26', N'GXP26', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP777', CAST(100000 AS Decimal(18, 0)), NULL, N'LC26', N'GXP27', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP778', CAST(100000 AS Decimal(18, 0)), NULL, N'LC26', N'GXP28', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP779', CAST(100000 AS Decimal(18, 0)), NULL, N'LC26', N'GXP29', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP78', CAST(100000 AS Decimal(18, 0)), NULL, N'LC3', N'GXP78', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP780', CAST(100000 AS Decimal(18, 0)), NULL, N'LC26', N'GXP30', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP781', CAST(100000 AS Decimal(18, 0)), NULL, N'LC27', N'GXP31', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP782', CAST(100000 AS Decimal(18, 0)), NULL, N'LC27', N'GXP32', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP783', CAST(100000 AS Decimal(18, 0)), NULL, N'LC27', N'GXP33', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP784', CAST(100000 AS Decimal(18, 0)), NULL, N'LC27', N'GXP34', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP785', CAST(100000 AS Decimal(18, 0)), NULL, N'LC27', N'GXP35', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP786', CAST(100000 AS Decimal(18, 0)), NULL, N'LC27', N'GXP36', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP787', CAST(100000 AS Decimal(18, 0)), NULL, N'LC27', N'GXP37', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP788', CAST(100000 AS Decimal(18, 0)), NULL, N'LC27', N'GXP38', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP789', CAST(100000 AS Decimal(18, 0)), NULL, N'LC27', N'GXP39', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP79', CAST(100000 AS Decimal(18, 0)), NULL, N'LC3', N'GXP79', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP790', CAST(100000 AS Decimal(18, 0)), NULL, N'LC27', N'GXP40', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP791', CAST(100000 AS Decimal(18, 0)), NULL, N'LC27', N'GXP41', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP792', CAST(100000 AS Decimal(18, 0)), NULL, N'LC27', N'GXP42', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP793', CAST(100000 AS Decimal(18, 0)), NULL, N'LC27', N'GXP43', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP794', CAST(100000 AS Decimal(18, 0)), NULL, N'LC27', N'GXP44', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP795', CAST(100000 AS Decimal(18, 0)), NULL, N'LC27', N'GXP45', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP796', CAST(100000 AS Decimal(18, 0)), NULL, N'LC27', N'GXP46', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP797', CAST(100000 AS Decimal(18, 0)), NULL, N'LC27', N'GXP47', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP798', CAST(100000 AS Decimal(18, 0)), NULL, N'LC27', N'GXP48', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP799', CAST(100000 AS Decimal(18, 0)), NULL, N'LC27', N'GXP49', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP8', CAST(100000 AS Decimal(18, 0)), NULL, N'LC1', N'GXP8', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP80', CAST(100000 AS Decimal(18, 0)), NULL, N'LC3', N'GXP80', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP800', CAST(100000 AS Decimal(18, 0)), NULL, N'LC27', N'GXP50', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP801', CAST(100000 AS Decimal(18, 0)), NULL, N'LC27', N'GXP51', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP802', CAST(100000 AS Decimal(18, 0)), NULL, N'LC27', N'GXP52', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP803', CAST(100000 AS Decimal(18, 0)), NULL, N'LC27', N'GXP53', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP804', CAST(100000 AS Decimal(18, 0)), NULL, N'LC27', N'GXP54', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP805', CAST(100000 AS Decimal(18, 0)), NULL, N'LC27', N'GXP55', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP806', CAST(100000 AS Decimal(18, 0)), NULL, N'LC27', N'GXP56', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP807', CAST(100000 AS Decimal(18, 0)), NULL, N'LC27', N'GXP57', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP808', CAST(100000 AS Decimal(18, 0)), NULL, N'LC27', N'GXP58', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP809', CAST(100000 AS Decimal(18, 0)), NULL, N'LC27', N'GXP59', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP81', CAST(100000 AS Decimal(18, 0)), NULL, N'LC3', N'GXP81', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP810', CAST(100000 AS Decimal(18, 0)), NULL, N'LC27', N'GXP60', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP811', CAST(100000 AS Decimal(18, 0)), NULL, N'LC28', N'GXP61', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP812', CAST(100000 AS Decimal(18, 0)), NULL, N'LC28', N'GXP62', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP813', CAST(100000 AS Decimal(18, 0)), NULL, N'LC28', N'GXP63', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP814', CAST(100000 AS Decimal(18, 0)), NULL, N'LC28', N'GXP64', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP815', CAST(100000 AS Decimal(18, 0)), NULL, N'LC28', N'GXP65', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP816', CAST(100000 AS Decimal(18, 0)), NULL, N'LC28', N'GXP66', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP817', CAST(100000 AS Decimal(18, 0)), NULL, N'LC28', N'GXP67', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP818', CAST(100000 AS Decimal(18, 0)), NULL, N'LC28', N'GXP68', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP819', CAST(100000 AS Decimal(18, 0)), NULL, N'LC28', N'GXP69', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP82', CAST(100000 AS Decimal(18, 0)), NULL, N'LC3', N'GXP82', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP820', CAST(100000 AS Decimal(18, 0)), NULL, N'LC28', N'GXP70', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP821', CAST(100000 AS Decimal(18, 0)), NULL, N'LC28', N'GXP71', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP822', CAST(100000 AS Decimal(18, 0)), NULL, N'LC28', N'GXP72', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP823', CAST(100000 AS Decimal(18, 0)), NULL, N'LC28', N'GXP73', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP824', CAST(100000 AS Decimal(18, 0)), NULL, N'LC28', N'GXP74', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP825', CAST(100000 AS Decimal(18, 0)), NULL, N'LC28', N'GXP75', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP826', CAST(100000 AS Decimal(18, 0)), NULL, N'LC28', N'GXP76', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP827', CAST(100000 AS Decimal(18, 0)), NULL, N'LC28', N'GXP77', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP828', CAST(100000 AS Decimal(18, 0)), NULL, N'LC28', N'GXP78', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP829', CAST(100000 AS Decimal(18, 0)), NULL, N'LC28', N'GXP79', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP83', CAST(100000 AS Decimal(18, 0)), NULL, N'LC3', N'GXP83', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP830', CAST(100000 AS Decimal(18, 0)), NULL, N'LC28', N'GXP80', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP831', CAST(100000 AS Decimal(18, 0)), NULL, N'LC28', N'GXP81', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP832', CAST(100000 AS Decimal(18, 0)), NULL, N'LC28', N'GXP82', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP833', CAST(100000 AS Decimal(18, 0)), NULL, N'LC28', N'GXP83', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP834', CAST(100000 AS Decimal(18, 0)), NULL, N'LC28', N'GXP84', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP835', CAST(100000 AS Decimal(18, 0)), NULL, N'LC28', N'GXP85', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP836', CAST(100000 AS Decimal(18, 0)), NULL, N'LC28', N'GXP86', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP837', CAST(100000 AS Decimal(18, 0)), NULL, N'LC28', N'GXP87', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP838', CAST(100000 AS Decimal(18, 0)), NULL, N'LC28', N'GXP88', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP839', CAST(100000 AS Decimal(18, 0)), NULL, N'LC28', N'GXP89', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP84', CAST(100000 AS Decimal(18, 0)), NULL, N'LC3', N'GXP84', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP840', CAST(100000 AS Decimal(18, 0)), NULL, N'LC28', N'GXP90', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP841', CAST(100000 AS Decimal(18, 0)), NULL, N'LC29', N'GXP91', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP842', CAST(100000 AS Decimal(18, 0)), NULL, N'LC29', N'GXP92', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP843', CAST(100000 AS Decimal(18, 0)), NULL, N'LC29', N'GXP93', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP844', CAST(100000 AS Decimal(18, 0)), NULL, N'LC29', N'GXP94', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP845', CAST(100000 AS Decimal(18, 0)), NULL, N'LC29', N'GXP95', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP846', CAST(100000 AS Decimal(18, 0)), NULL, N'LC29', N'GXP96', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP847', CAST(100000 AS Decimal(18, 0)), NULL, N'LC29', N'GXP97', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP848', CAST(100000 AS Decimal(18, 0)), NULL, N'LC29', N'GXP98', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP849', CAST(100000 AS Decimal(18, 0)), NULL, N'LC29', N'GXP99', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP85', CAST(100000 AS Decimal(18, 0)), NULL, N'LC3', N'GXP85', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP850', CAST(100000 AS Decimal(18, 0)), NULL, N'LC29', N'GXP100', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP851', CAST(100000 AS Decimal(18, 0)), NULL, N'LC29', N'GXP101', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP852', CAST(100000 AS Decimal(18, 0)), NULL, N'LC29', N'GXP102', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP853', CAST(100000 AS Decimal(18, 0)), NULL, N'LC29', N'GXP103', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP854', CAST(100000 AS Decimal(18, 0)), NULL, N'LC29', N'GXP104', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP855', CAST(100000 AS Decimal(18, 0)), NULL, N'LC29', N'GXP105', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP856', CAST(100000 AS Decimal(18, 0)), NULL, N'LC29', N'GXP106', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP857', CAST(100000 AS Decimal(18, 0)), NULL, N'LC29', N'GXP107', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP858', CAST(100000 AS Decimal(18, 0)), NULL, N'LC29', N'GXP108', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP859', CAST(100000 AS Decimal(18, 0)), NULL, N'LC29', N'GXP109', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP86', CAST(100000 AS Decimal(18, 0)), NULL, N'LC3', N'GXP86', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP860', CAST(100000 AS Decimal(18, 0)), NULL, N'LC29', N'GXP110', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP861', CAST(100000 AS Decimal(18, 0)), NULL, N'LC29', N'GXP111', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP862', CAST(100000 AS Decimal(18, 0)), NULL, N'LC29', N'GXP112', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP863', CAST(100000 AS Decimal(18, 0)), NULL, N'LC29', N'GXP113', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP864', CAST(100000 AS Decimal(18, 0)), NULL, N'LC29', N'GXP114', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP865', CAST(100000 AS Decimal(18, 0)), NULL, N'LC29', N'GXP115', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP866', CAST(100000 AS Decimal(18, 0)), NULL, N'LC29', N'GXP116', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP867', CAST(100000 AS Decimal(18, 0)), NULL, N'LC29', N'GXP117', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP868', CAST(100000 AS Decimal(18, 0)), NULL, N'LC29', N'GXP118', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP869', CAST(100000 AS Decimal(18, 0)), NULL, N'LC29', N'GXP119', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP87', CAST(100000 AS Decimal(18, 0)), NULL, N'LC3', N'GXP87', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP870', CAST(100000 AS Decimal(18, 0)), NULL, N'LC29', N'GXP120', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP871', CAST(100000 AS Decimal(18, 0)), NULL, N'LC30', N'GXP121', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP872', CAST(100000 AS Decimal(18, 0)), NULL, N'LC30', N'GXP122', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP873', CAST(100000 AS Decimal(18, 0)), NULL, N'LC30', N'GXP123', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP874', CAST(100000 AS Decimal(18, 0)), NULL, N'LC30', N'GXP124', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP875', CAST(100000 AS Decimal(18, 0)), NULL, N'LC30', N'GXP125', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP876', CAST(100000 AS Decimal(18, 0)), NULL, N'LC30', N'GXP126', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP877', CAST(100000 AS Decimal(18, 0)), NULL, N'LC30', N'GXP127', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP878', CAST(100000 AS Decimal(18, 0)), NULL, N'LC30', N'GXP128', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP879', CAST(100000 AS Decimal(18, 0)), NULL, N'LC30', N'GXP129', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP88', CAST(100000 AS Decimal(18, 0)), NULL, N'LC3', N'GXP88', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP880', CAST(100000 AS Decimal(18, 0)), NULL, N'LC30', N'GXP130', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP881', CAST(100000 AS Decimal(18, 0)), NULL, N'LC30', N'GXP131', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP882', CAST(100000 AS Decimal(18, 0)), NULL, N'LC30', N'GXP132', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP883', CAST(100000 AS Decimal(18, 0)), NULL, N'LC30', N'GXP133', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP884', CAST(100000 AS Decimal(18, 0)), NULL, N'LC30', N'GXP134', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP885', CAST(100000 AS Decimal(18, 0)), NULL, N'LC30', N'GXP135', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP886', CAST(100000 AS Decimal(18, 0)), NULL, N'LC30', N'GXP136', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP887', CAST(100000 AS Decimal(18, 0)), NULL, N'LC30', N'GXP137', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP888', CAST(100000 AS Decimal(18, 0)), NULL, N'LC30', N'GXP138', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP889', CAST(100000 AS Decimal(18, 0)), NULL, N'LC30', N'GXP139', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP89', CAST(100000 AS Decimal(18, 0)), NULL, N'LC3', N'GXP89', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP890', CAST(100000 AS Decimal(18, 0)), NULL, N'LC30', N'GXP140', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP891', CAST(100000 AS Decimal(18, 0)), NULL, N'LC30', N'GXP141', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP892', CAST(100000 AS Decimal(18, 0)), NULL, N'LC30', N'GXP142', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP893', CAST(100000 AS Decimal(18, 0)), NULL, N'LC30', N'GXP143', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP894', CAST(100000 AS Decimal(18, 0)), NULL, N'LC30', N'GXP144', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP895', CAST(100000 AS Decimal(18, 0)), NULL, N'LC30', N'GXP145', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP896', CAST(100000 AS Decimal(18, 0)), NULL, N'LC30', N'GXP146', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP897', CAST(100000 AS Decimal(18, 0)), NULL, N'LC30', N'GXP147', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP898', CAST(100000 AS Decimal(18, 0)), NULL, N'LC30', N'GXP148', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP899', CAST(100000 AS Decimal(18, 0)), NULL, N'LC30', N'GXP149', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP9', CAST(100000 AS Decimal(18, 0)), NULL, N'LC1', N'GXP9', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP90', CAST(100000 AS Decimal(18, 0)), NULL, N'LC3', N'GXP90', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP900', CAST(100000 AS Decimal(18, 0)), NULL, N'LC30', N'GXP150', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP901', CAST(100000 AS Decimal(18, 0)), N'HD41', N'LC31', N'GXP1', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP902', CAST(100000 AS Decimal(18, 0)), N'HD42', N'LC31', N'GXP2', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP903', CAST(100000 AS Decimal(18, 0)), N'HD43', N'LC31', N'GXP3', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP904', CAST(100000 AS Decimal(18, 0)), N'HD44', N'LC31', N'GXP4', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP905', CAST(100000 AS Decimal(18, 0)), N'HD45', N'LC31', N'GXP5', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP906', CAST(100000 AS Decimal(18, 0)), N'HD45', N'LC31', N'GXP6', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP907', CAST(100000 AS Decimal(18, 0)), N'HD45', N'LC31', N'GXP7', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP908', CAST(100000 AS Decimal(18, 0)), NULL, N'LC31', N'GXP8', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP909', CAST(100000 AS Decimal(18, 0)), NULL, N'LC31', N'GXP9', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP91', CAST(100000 AS Decimal(18, 0)), N'HD13', N'LC4', N'GXP91', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP910', CAST(100000 AS Decimal(18, 0)), NULL, N'LC31', N'GXP10', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP911', CAST(100000 AS Decimal(18, 0)), NULL, N'LC31', N'GXP11', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP912', CAST(100000 AS Decimal(18, 0)), NULL, N'LC31', N'GXP12', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP913', CAST(100000 AS Decimal(18, 0)), NULL, N'LC31', N'GXP13', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP914', CAST(100000 AS Decimal(18, 0)), NULL, N'LC31', N'GXP14', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP915', CAST(100000 AS Decimal(18, 0)), NULL, N'LC31', N'GXP15', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP916', CAST(100000 AS Decimal(18, 0)), NULL, N'LC31', N'GXP16', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP917', CAST(100000 AS Decimal(18, 0)), NULL, N'LC31', N'GXP17', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP918', CAST(100000 AS Decimal(18, 0)), NULL, N'LC31', N'GXP18', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP919', CAST(100000 AS Decimal(18, 0)), NULL, N'LC31', N'GXP19', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP92', CAST(100000 AS Decimal(18, 0)), N'HD13', N'LC4', N'GXP92', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP920', CAST(100000 AS Decimal(18, 0)), NULL, N'LC31', N'GXP20', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP921', CAST(100000 AS Decimal(18, 0)), NULL, N'LC31', N'GXP21', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP922', CAST(100000 AS Decimal(18, 0)), NULL, N'LC31', N'GXP22', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP923', CAST(100000 AS Decimal(18, 0)), NULL, N'LC31', N'GXP23', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP924', CAST(100000 AS Decimal(18, 0)), NULL, N'LC31', N'GXP24', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP925', CAST(100000 AS Decimal(18, 0)), NULL, N'LC31', N'GXP25', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP926', CAST(100000 AS Decimal(18, 0)), NULL, N'LC31', N'GXP26', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP927', CAST(100000 AS Decimal(18, 0)), NULL, N'LC31', N'GXP27', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP928', CAST(100000 AS Decimal(18, 0)), NULL, N'LC31', N'GXP28', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP929', CAST(100000 AS Decimal(18, 0)), NULL, N'LC31', N'GXP29', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP93', CAST(100000 AS Decimal(18, 0)), N'HD13', N'LC4', N'GXP93', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP930', CAST(100000 AS Decimal(18, 0)), NULL, N'LC31', N'GXP30', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP931', CAST(100000 AS Decimal(18, 0)), NULL, N'LC32', N'GXP31', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP932', CAST(100000 AS Decimal(18, 0)), NULL, N'LC32', N'GXP32', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP933', CAST(100000 AS Decimal(18, 0)), NULL, N'LC32', N'GXP33', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP934', CAST(100000 AS Decimal(18, 0)), NULL, N'LC32', N'GXP34', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP935', CAST(100000 AS Decimal(18, 0)), NULL, N'LC32', N'GXP35', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP936', CAST(100000 AS Decimal(18, 0)), NULL, N'LC32', N'GXP36', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP937', CAST(100000 AS Decimal(18, 0)), NULL, N'LC32', N'GXP37', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP938', CAST(100000 AS Decimal(18, 0)), NULL, N'LC32', N'GXP38', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP939', CAST(100000 AS Decimal(18, 0)), NULL, N'LC32', N'GXP39', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP94', CAST(100000 AS Decimal(18, 0)), N'HD13', N'LC4', N'GXP94', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP940', CAST(100000 AS Decimal(18, 0)), NULL, N'LC32', N'GXP40', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP941', CAST(100000 AS Decimal(18, 0)), NULL, N'LC32', N'GXP41', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP942', CAST(100000 AS Decimal(18, 0)), NULL, N'LC32', N'GXP42', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP943', CAST(100000 AS Decimal(18, 0)), NULL, N'LC32', N'GXP43', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP944', CAST(100000 AS Decimal(18, 0)), NULL, N'LC32', N'GXP44', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP945', CAST(100000 AS Decimal(18, 0)), NULL, N'LC32', N'GXP45', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP946', CAST(100000 AS Decimal(18, 0)), NULL, N'LC32', N'GXP46', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP947', CAST(100000 AS Decimal(18, 0)), NULL, N'LC32', N'GXP47', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP948', CAST(100000 AS Decimal(18, 0)), NULL, N'LC32', N'GXP48', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP949', CAST(100000 AS Decimal(18, 0)), NULL, N'LC32', N'GXP49', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP95', CAST(100000 AS Decimal(18, 0)), N'HD13', N'LC4', N'GXP95', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP950', CAST(100000 AS Decimal(18, 0)), NULL, N'LC32', N'GXP50', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP951', CAST(100000 AS Decimal(18, 0)), NULL, N'LC32', N'GXP51', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP952', CAST(100000 AS Decimal(18, 0)), NULL, N'LC32', N'GXP52', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP953', CAST(100000 AS Decimal(18, 0)), NULL, N'LC32', N'GXP53', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP954', CAST(100000 AS Decimal(18, 0)), NULL, N'LC32', N'GXP54', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP955', CAST(100000 AS Decimal(18, 0)), NULL, N'LC32', N'GXP55', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP956', CAST(100000 AS Decimal(18, 0)), NULL, N'LC32', N'GXP56', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP957', CAST(100000 AS Decimal(18, 0)), NULL, N'LC32', N'GXP57', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP958', CAST(100000 AS Decimal(18, 0)), NULL, N'LC32', N'GXP58', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP959', CAST(100000 AS Decimal(18, 0)), NULL, N'LC32', N'GXP59', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP96', CAST(100000 AS Decimal(18, 0)), N'HD13', N'LC4', N'GXP96', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP960', CAST(100000 AS Decimal(18, 0)), NULL, N'LC32', N'GXP60', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP961', CAST(100000 AS Decimal(18, 0)), NULL, N'LC33', N'GXP61', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP962', CAST(100000 AS Decimal(18, 0)), NULL, N'LC33', N'GXP62', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP963', CAST(100000 AS Decimal(18, 0)), NULL, N'LC33', N'GXP63', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP964', CAST(100000 AS Decimal(18, 0)), NULL, N'LC33', N'GXP64', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP965', CAST(100000 AS Decimal(18, 0)), NULL, N'LC33', N'GXP65', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP966', CAST(100000 AS Decimal(18, 0)), NULL, N'LC33', N'GXP66', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP967', CAST(100000 AS Decimal(18, 0)), NULL, N'LC33', N'GXP67', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP968', CAST(100000 AS Decimal(18, 0)), NULL, N'LC33', N'GXP68', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP969', CAST(100000 AS Decimal(18, 0)), NULL, N'LC33', N'GXP69', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP97', CAST(100000 AS Decimal(18, 0)), N'HD13', N'LC4', N'GXP97', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP970', CAST(100000 AS Decimal(18, 0)), NULL, N'LC33', N'GXP70', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP971', CAST(100000 AS Decimal(18, 0)), NULL, N'LC33', N'GXP71', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP972', CAST(100000 AS Decimal(18, 0)), NULL, N'LC33', N'GXP72', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP973', CAST(100000 AS Decimal(18, 0)), NULL, N'LC33', N'GXP73', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP974', CAST(100000 AS Decimal(18, 0)), NULL, N'LC33', N'GXP74', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP975', CAST(100000 AS Decimal(18, 0)), NULL, N'LC33', N'GXP75', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP976', CAST(100000 AS Decimal(18, 0)), NULL, N'LC33', N'GXP76', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP977', CAST(100000 AS Decimal(18, 0)), NULL, N'LC33', N'GXP77', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP978', CAST(100000 AS Decimal(18, 0)), NULL, N'LC33', N'GXP78', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP979', CAST(100000 AS Decimal(18, 0)), NULL, N'LC33', N'GXP79', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP98', CAST(100000 AS Decimal(18, 0)), N'HD13', N'LC4', N'GXP98', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP980', CAST(100000 AS Decimal(18, 0)), NULL, N'LC33', N'GXP80', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP981', CAST(100000 AS Decimal(18, 0)), NULL, N'LC33', N'GXP81', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP982', CAST(100000 AS Decimal(18, 0)), NULL, N'LC33', N'GXP82', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP983', CAST(100000 AS Decimal(18, 0)), NULL, N'LC33', N'GXP83', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP984', CAST(100000 AS Decimal(18, 0)), NULL, N'LC33', N'GXP84', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP985', CAST(100000 AS Decimal(18, 0)), NULL, N'LC33', N'GXP85', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP986', CAST(100000 AS Decimal(18, 0)), NULL, N'LC33', N'GXP86', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP987', CAST(100000 AS Decimal(18, 0)), NULL, N'LC33', N'GXP87', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP988', CAST(100000 AS Decimal(18, 0)), NULL, N'LC33', N'GXP88', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP989', CAST(100000 AS Decimal(18, 0)), NULL, N'LC33', N'GXP89', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP99', CAST(100000 AS Decimal(18, 0)), N'HD13', N'LC4', N'GXP99', 1)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP990', CAST(100000 AS Decimal(18, 0)), NULL, N'LC33', N'GXP90', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP991', CAST(100000 AS Decimal(18, 0)), NULL, N'LC34', N'GXP91', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP992', CAST(100000 AS Decimal(18, 0)), NULL, N'LC34', N'GXP92', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP993', CAST(100000 AS Decimal(18, 0)), NULL, N'LC34', N'GXP93', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP994', CAST(100000 AS Decimal(18, 0)), NULL, N'LC34', N'GXP94', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP995', CAST(100000 AS Decimal(18, 0)), NULL, N'LC34', N'GXP95', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP996', CAST(100000 AS Decimal(18, 0)), NULL, N'LC34', N'GXP96', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP997', CAST(100000 AS Decimal(18, 0)), NULL, N'LC34', N'GXP97', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP998', CAST(100000 AS Decimal(18, 0)), NULL, N'LC34', N'GXP98', 0)
GO
INSERT [dbo].[VeXemPhim] ([MaVXP], [GiaVe], [MaHD], [MaLC], [MaGXP], [TrangThai]) VALUES (N'VXP999', CAST(100000 AS Decimal(18, 0)), NULL, N'LC34', N'GXP99', 0)
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
ALTER TABLE [dbo].[VeXemPhim]  WITH CHECK ADD  CONSTRAINT [FK_VeXemPhim_LichChieu] FOREIGN KEY([MaLC])
REFERENCES [dbo].[LichChieu] ([MaLC])
GO
ALTER TABLE [dbo].[VeXemPhim] CHECK CONSTRAINT [FK_VeXemPhim_LichChieu]
GO
