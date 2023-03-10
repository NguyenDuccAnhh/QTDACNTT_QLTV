USE [master]
GO
/****** Object:  Database [MHHDL_DoAnQLTV]    Script Date: 12/01/2023 04:12:28 ******/
CREATE DATABASE [MHHDL_DoAnQLTV]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MHHDL_DoAnQLTV', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\MHHDL_DoAnQLTV.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MHHDL_DoAnQLTV_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\MHHDL_DoAnQLTV_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MHHDL_DoAnQLTV] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MHHDL_DoAnQLTV].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MHHDL_DoAnQLTV] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MHHDL_DoAnQLTV] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MHHDL_DoAnQLTV] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MHHDL_DoAnQLTV] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MHHDL_DoAnQLTV] SET ARITHABORT OFF 
GO
ALTER DATABASE [MHHDL_DoAnQLTV] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [MHHDL_DoAnQLTV] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MHHDL_DoAnQLTV] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MHHDL_DoAnQLTV] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MHHDL_DoAnQLTV] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MHHDL_DoAnQLTV] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MHHDL_DoAnQLTV] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MHHDL_DoAnQLTV] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MHHDL_DoAnQLTV] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MHHDL_DoAnQLTV] SET  ENABLE_BROKER 
GO
ALTER DATABASE [MHHDL_DoAnQLTV] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MHHDL_DoAnQLTV] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MHHDL_DoAnQLTV] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MHHDL_DoAnQLTV] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MHHDL_DoAnQLTV] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MHHDL_DoAnQLTV] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MHHDL_DoAnQLTV] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MHHDL_DoAnQLTV] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MHHDL_DoAnQLTV] SET  MULTI_USER 
GO
ALTER DATABASE [MHHDL_DoAnQLTV] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MHHDL_DoAnQLTV] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MHHDL_DoAnQLTV] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MHHDL_DoAnQLTV] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MHHDL_DoAnQLTV] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MHHDL_DoAnQLTV] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [MHHDL_DoAnQLTV] SET QUERY_STORE = OFF
GO
USE [MHHDL_DoAnQLTV]
GO
/****** Object:  Table [dbo].[tblDocGia]    Script Date: 12/01/2023 04:12:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDocGia](
	[MaDG] [varchar](10) NOT NULL,
	[TenDG] [nvarchar](30) NULL,
	[GioiTinhDG] [nvarchar](5) NULL,
	[NgaySinhDG] [varchar](10) NULL,
	[SDTDG] [int] NULL,
	[DiaChiDG] [nvarchar](50) NULL,
	[LoaiDG] [nvarchar](20) NULL,
	[GhiChu] [nvarchar](30) NULL,
	[TenTaiKhoanDG] [varchar](10) NULL,
	[MatKhauDG] [varchar](100) NULL,
 CONSTRAINT [pk_tblDocGia] PRIMARY KEY CLUSTERED 
(
	[MaDG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblHSPhieuMuon]    Script Date: 12/01/2023 04:12:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblHSPhieuMuon](
	[MaPhieu] [varchar](10) NOT NULL,
	[MaDG] [varchar](10) NULL,
	[MaSach] [varchar](10) NULL,
	[NgayMuon] [nvarchar](10) NULL,
	[NgayTra] [nvarchar](10) NULL,
	[SLMuon] [int] NULL,
	[TinhTrang] [nvarchar](20) NULL,
	[GhiChu] [nvarchar](75) NULL,
 CONSTRAINT [pk_tblMuonTra] PRIMARY KEY CLUSTERED 
(
	[MaPhieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSach]    Script Date: 12/01/2023 04:12:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSach](
	[MaSach] [varchar](10) NOT NULL,
	[TenSach] [nvarchar](50) NULL,
	[ChuDe] [nvarchar](30) NULL,
	[TacGia] [nvarchar](30) NULL,
	[NXB] [nvarchar](30) NULL,
	[NamXB] [int] NULL,
	[SLNhap] [int] NULL,
	[DonGia] [int] NULL,
	[TinhTrang] [nvarchar](20) NULL,
	[Ghichu] [nvarchar](30) NULL,
 CONSTRAINT [pk_tblSach] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblThuThu]    Script Date: 12/01/2023 04:12:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblThuThu](
	[MaTT] [varchar](10) NOT NULL,
	[TenTT] [nvarchar](30) NULL,
	[GioiTinhTT] [nvarchar](5) NULL,
	[NgaySinhTT] [varchar](10) NULL,
	[SDTTT] [int] NULL,
	[DiaChiTT] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](30) NULL,
	[TenTaiKhoanTT] [varchar](10) NULL,
	[MatKhauTT] [varchar](100) NULL,
 CONSTRAINT [pk_tblThuThu] PRIMARY KEY CLUSTERED 
(
	[MaTT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblDocGia] ([MaDG], [TenDG], [GioiTinhDG], [NgaySinhDG], [SDTDG], [DiaChiDG], [LoaiDG], [GhiChu], [TenTaiKhoanDG], [MatKhauDG]) VALUES (N'DG000001', N'ĐG 1', N'Nam', N'12/01/2023', 1, N'1', N'Sinh viên', N'1', N'DG000001', N'C4CA4238A0B923820DCC509A6F75849B')
INSERT [dbo].[tblDocGia] ([MaDG], [TenDG], [GioiTinhDG], [NgaySinhDG], [SDTDG], [DiaChiDG], [LoaiDG], [GhiChu], [TenTaiKhoanDG], [MatKhauDG]) VALUES (N'DG000002', N'đg2', N'Nam', N'12/01/2023', 1, N'1', N'Sinh viên', N'1', N'DG000002', N'C4CA4238A0B923820DCC509A6F75849B')
GO
INSERT [dbo].[tblHSPhieuMuon] ([MaPhieu], [MaDG], [MaSach], [NgayMuon], [NgayTra], [SLMuon], [TinhTrang], [GhiChu]) VALUES (N'MP000001', N'DG000001', N'MS000001', N'12/01/2023', N'02/02/2023', 1, N'Mới ', N'')
INSERT [dbo].[tblHSPhieuMuon] ([MaPhieu], [MaDG], [MaSach], [NgayMuon], [NgayTra], [SLMuon], [TinhTrang], [GhiChu]) VALUES (N'MP000002', N'DG000002', N'MS000001', N'12/01/2023', N'02/02/2023', 2, N'Mới ', N'')
INSERT [dbo].[tblHSPhieuMuon] ([MaPhieu], [MaDG], [MaSach], [NgayMuon], [NgayTra], [SLMuon], [TinhTrang], [GhiChu]) VALUES (N'MP000003', N'DG000001', N'MS000001', N'12/01/2023', N'02/02/2023', 2, N'Mới ', N'')
GO
INSERT [dbo].[tblSach] ([MaSach], [TenSach], [ChuDe], [TacGia], [NXB], [NamXB], [SLNhap], [DonGia], [TinhTrang], [Ghichu]) VALUES (N'MS000001', N'Lập trình Windown', N'Lập trình', N'Nguyễn Xuân Nam', N'NXB Hồng Bàng', 2000, 95, 50000, N'Mới', N'...')
INSERT [dbo].[tblSach] ([MaSach], [TenSach], [ChuDe], [TacGia], [NXB], [NamXB], [SLNhap], [DonGia], [TinhTrang], [Ghichu]) VALUES (N'MS000002', N'Lập trình Web', N'Lập trình', N'Lê Hồng Nhân', N'NXB Giáo Dục', 2001, 101, 50000, N'Mới', N'...')
INSERT [dbo].[tblSach] ([MaSach], [TenSach], [ChuDe], [TacGia], [NXB], [NamXB], [SLNhap], [DonGia], [TinhTrang], [Ghichu]) VALUES (N'MS000003', N'Lập trình HDT', N'Lập trình', N'Nguyễn Đức Phương', N'NXB Hồng Bàng', 2002, 100, 30000, N'Mới', N'...')
INSERT [dbo].[tblSach] ([MaSach], [TenSach], [ChuDe], [TacGia], [NXB], [NamXB], [SLNhap], [DonGia], [TinhTrang], [Ghichu]) VALUES (N'MS000004', N'Lập trình SQL', N'Lập trình', N'Nguyễn Xuân Nam', N'NXB Hồng Bàng', 2004, 100, 40000, N'Mới', N'...')
INSERT [dbo].[tblSach] ([MaSach], [TenSach], [ChuDe], [TacGia], [NXB], [NamXB], [SLNhap], [DonGia], [TinhTrang], [Ghichu]) VALUES (N'MS000005', N'Thiết bị công nghệ hiện đại', N'Công nghệ', N'Trần Xuân Bách', N'NXB Thanh Niên', 2004, 100, 60000, N'Mới', N'...')
INSERT [dbo].[tblSach] ([MaSach], [TenSach], [ChuDe], [TacGia], [NXB], [NamXB], [SLNhap], [DonGia], [TinhTrang], [Ghichu]) VALUES (N'MS000006', N'Khoa học quanh ta', N'Công nghệ', N'Trần Văn Chung', N'NXB Giáo Dục', 2002, 100, 40000, N'Mới', N'...')
INSERT [dbo].[tblSach] ([MaSach], [TenSach], [ChuDe], [TacGia], [NXB], [NamXB], [SLNhap], [DonGia], [TinhTrang], [Ghichu]) VALUES (N'MS000007', N'Úng dụng công nghệ', N'Công nghệ', N'Nguyễn Hoài Nhâm', N'NXB Hồng Bàng', 2009, 100, 50000, N'Mới', N'...')
INSERT [dbo].[tblSach] ([MaSach], [TenSach], [ChuDe], [TacGia], [NXB], [NamXB], [SLNhap], [DonGia], [TinhTrang], [Ghichu]) VALUES (N'MS000008', N'Bạn và Tôi', N'Tiểu thuyết', N'Lệ Thu', N'NXB Trẻ', 2007, 100, 50000, N'Mới', N'...')
INSERT [dbo].[tblSach] ([MaSach], [TenSach], [ChuDe], [TacGia], [NXB], [NamXB], [SLNhap], [DonGia], [TinhTrang], [Ghichu]) VALUES (N'MS000009', N'Ngày Ấy', N'Tiểu thuyết', N'Nguyễn Hoài Nhớ', N'NXB Thanh Niên', 2010, 99, 40000, N'Mới', N'...')
INSERT [dbo].[tblSach] ([MaSach], [TenSach], [ChuDe], [TacGia], [NXB], [NamXB], [SLNhap], [DonGia], [TinhTrang], [Ghichu]) VALUES (N'MS000010', N'Tôi đi tìm tôi', N'Tiểu thuyết', N'Phạm Đức', N'NXB Thanh Niên', 2004, 100, 20000, N'Mới', N'...')
GO
INSERT [dbo].[tblThuThu] ([MaTT], [TenTT], [GioiTinhTT], [NgaySinhTT], [SDTTT], [DiaChiTT], [GhiChu], [TenTaiKhoanTT], [MatKhauTT]) VALUES (N'TT000001', N'Admin', N'Nam', N'27/11/2000', 989461084, N'Hà Nội', N'Administrator', N'TT000001', N'21232F297A57A5A743894A0E4A801FC3')
INSERT [dbo].[tblThuThu] ([MaTT], [TenTT], [GioiTinhTT], [NgaySinhTT], [SDTTT], [DiaChiTT], [GhiChu], [TenTaiKhoanTT], [MatKhauTT]) VALUES (N'TT000002', N'Thủ thư 2', N'Nam', N'05/10/2000', 836565396, N'Nam Định', N'Thủ thư mới', N'TT000002', N'C81E728D9D4C2F636F067F89CC14862C')
GO
ALTER TABLE [dbo].[tblHSPhieuMuon]  WITH CHECK ADD  CONSTRAINT [fk_tblMuonTra_tblDocGia] FOREIGN KEY([MaDG])
REFERENCES [dbo].[tblDocGia] ([MaDG])
GO
ALTER TABLE [dbo].[tblHSPhieuMuon] CHECK CONSTRAINT [fk_tblMuonTra_tblDocGia]
GO
ALTER TABLE [dbo].[tblHSPhieuMuon]  WITH CHECK ADD  CONSTRAINT [fk_tblMuonTra_tblSach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[tblSach] ([MaSach])
GO
ALTER TABLE [dbo].[tblHSPhieuMuon] CHECK CONSTRAINT [fk_tblMuonTra_tblSach]
GO
USE [master]
GO
ALTER DATABASE [MHHDL_DoAnQLTV] SET  READ_WRITE 
GO
