/****** Object:  Database [DecorPhong]    Script Date: 05/07/2022 16:11:05 ******/
CREATE DATABASE [DecorPhong]

ALTER DATABASE [DecorPhong] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DecorPhong] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DecorPhong] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DecorPhong] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DecorPhong] SET ARITHABORT OFF 
GO
ALTER DATABASE [DecorPhong] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DecorPhong] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DecorPhong] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DecorPhong] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DecorPhong] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DecorPhong] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DecorPhong] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DecorPhong] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DecorPhong] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DecorPhong] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DecorPhong] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DecorPhong] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DecorPhong] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DecorPhong] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DecorPhong] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DecorPhong] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DecorPhong] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DecorPhong] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DecorPhong] SET  MULTI_USER 
GO
ALTER DATABASE [DecorPhong] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DecorPhong] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DecorPhong] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DecorPhong] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DecorPhong] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DecorPhong] SET QUERY_STORE = OFF
GO
USE [DecorPhong]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 05/07/2022 16:11:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[MaChiTietHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[MaHoaDon] [varchar](50) NULL,
	[MaSP] [int] NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_ChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[MaChiTietHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 05/07/2022 16:11:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHoaDon] [varchar](50) NOT NULL,
	[HoTen] [nvarchar](250) NULL,
	[DiaChi] [nvarchar](250) NULL,
	[CongTy] [nvarchar](250) NULL,
	[NgayGui] [datetime] NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSP]    Script Date: 05/07/2022 16:11:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSP](
	[MaLoaiSP] [int] IDENTITY(1,1) NOT NULL,
	[MaLoaiCha] [int] NULL,
	[TenLoai] [nvarchar](200) NULL,
	[Anh] [ntext] NULL,
	[MaMenu] [text] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_LoaiSP] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 05/07/2022 16:11:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](150) NULL,
	[Gia] [int] NULL,
	[Anh] [varchar](250) NULL,
	[BaoHanh] [int] NULL,
	[MoTa] [ntext] NULL,
	[MaLoaiSP] [int] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TinTuc]    Script Date: 05/07/2022 16:11:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinTuc](
	[MaTT] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [ntext] NULL,
	[NoiDung] [ntext] NULL,
 CONSTRAINT [PK_TinTuc] PRIMARY KEY CLUSTERED 
(
	[MaTT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[HoaDon] ([MaHoaDon], [HoTen], [DiaChi], [CongTy], [NgayGui]) VALUES (N'0fd19bcf-bd99-45de-ad59-7c3da0b0d8d6', NULL, NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [HoTen], [DiaChi], [CongTy], [NgayGui]) VALUES (N'230d166a-c900-4da6-ba7d-be7dbd4b05d3', NULL, NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [HoTen], [DiaChi], [CongTy], [NgayGui]) VALUES (N'2bdbeab1-878e-4067-8cc0-a5226a1656ee', NULL, NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [HoTen], [DiaChi], [CongTy], [NgayGui]) VALUES (N'3034d35b-1e88-41fe-bb15-6eeeded0f918', NULL, NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [HoTen], [DiaChi], [CongTy], [NgayGui]) VALUES (N'3bea0ca8-3b43-4c8f-b3e5-27597716402e', NULL, NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [HoTen], [DiaChi], [CongTy], [NgayGui]) VALUES (N'4993fef8-aa3e-4b2c-8d67-50c8b02d0c33', N'vu thang', N'hung yen', NULL, NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [HoTen], [DiaChi], [CongTy], [NgayGui]) VALUES (N'533ffc77-5008-4d05-b36f-3159db25e573', NULL, NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [HoTen], [DiaChi], [CongTy], [NgayGui]) VALUES (N'53c8e595-7905-46d4-9115-c5b8243c05fc', NULL, NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [HoTen], [DiaChi], [CongTy], [NgayGui]) VALUES (N'64b5bad8-663b-4ccd-b935-efd888c51e95', NULL, NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [HoTen], [DiaChi], [CongTy], [NgayGui]) VALUES (N'6e971aa5-1344-4505-9fbd-25ffb0ff0635', NULL, NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [HoTen], [DiaChi], [CongTy], [NgayGui]) VALUES (N'741efb9d-bfd5-4be4-9b62-2a45e541a9d5', NULL, NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [HoTen], [DiaChi], [CongTy], [NgayGui]) VALUES (N'a12db37b-7eee-4de7-b0e2-8f8ec235a757', N'vu thang', N'hung yen', NULL, NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [HoTen], [DiaChi], [CongTy], [NgayGui]) VALUES (N'a66015e0-67c2-4fbf-9b19-402a5c58fc78', NULL, NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [HoTen], [DiaChi], [CongTy], [NgayGui]) VALUES (N'b5094846-97c2-476e-8f42-b35c0a888032', NULL, NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [HoTen], [DiaChi], [CongTy], [NgayGui]) VALUES (N'c0558444-69a5-4ff9-943f-93f41ddf1e7b', NULL, NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [HoTen], [DiaChi], [CongTy], [NgayGui]) VALUES (N'c1d3fa95-3592-4c0f-b287-d775fa29d18f', N'vu thang', N'hung yen', NULL, NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [HoTen], [DiaChi], [CongTy], [NgayGui]) VALUES (N'c203d3f3-6654-4d5d-b4c5-b83f3a4bd442', N'vu thang', N'hung yen', NULL, NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [HoTen], [DiaChi], [CongTy], [NgayGui]) VALUES (N'c3a7c8d6-d106-49ff-af7d-72f60c1f991c', NULL, NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [HoTen], [DiaChi], [CongTy], [NgayGui]) VALUES (N'cc7274eb-ec35-4c1d-9378-f8033770ed65', NULL, NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [HoTen], [DiaChi], [CongTy], [NgayGui]) VALUES (N'cdbe6d5a-dcb3-4944-92ec-c1963769697e', N'vu thang', N'hung yen', NULL, NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [HoTen], [DiaChi], [CongTy], [NgayGui]) VALUES (N'cf4e74fa-c59d-4922-8a08-7e49e7cd8265', N'vu thang', N'hung yen', NULL, NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [HoTen], [DiaChi], [CongTy], [NgayGui]) VALUES (N'e18e996d-f0ae-46e4-a54c-632aa39fc048', NULL, NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [HoTen], [DiaChi], [CongTy], [NgayGui]) VALUES (N'f11f7072-46e7-46b5-b0ce-18ba3da9851f', NULL, NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [HoTen], [DiaChi], [CongTy], [NgayGui]) VALUES (N'f2607fe2-6762-4ea9-b9a6-80a61ca40589', NULL, NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [HoTen], [DiaChi], [CongTy], [NgayGui]) VALUES (N'f46487cd-9731-4400-9d0f-4823b0c84474', NULL, NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [HoTen], [DiaChi], [CongTy], [NgayGui]) VALUES (N'fc18a3ed-a964-4f0a-9a0e-eb0622f6afc9', N'', NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[LoaiSP] ON 

INSERT [dbo].[LoaiSP] ([MaLoaiSP], [MaLoaiCha], [TenLoai], [Anh], [MaMenu], [IsDeleted]) VALUES (1, NULL, N'ĐỒ TREO TƯỜNG', NULL, NULL, NULL)
INSERT [dbo].[LoaiSP] ([MaLoaiSP], [MaLoaiCha], [TenLoai], [Anh], [MaMenu], [IsDeleted]) VALUES (2, NULL, N'ĐỒ ĐỂ BÀN', NULL, NULL, NULL)
INSERT [dbo].[LoaiSP] ([MaLoaiSP], [MaLoaiCha], [TenLoai], [Anh], [MaMenu], [IsDeleted]) VALUES (3, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LoaiSP] ([MaLoaiSP], [MaLoaiCha], [TenLoai], [Anh], [MaMenu], [IsDeleted]) VALUES (4, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[LoaiSP] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (1, N'Đèn bàn phong cách Bắc Âu', 1599000, N'/assets/img/product/product01.jpg', 2, N'có công tắc điều chỉnh độ sáng', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (2, N'Đèn bàn Rocker độc đáo', 980000, N'/assets/img/product/product2.jpg', 4, N'có công tắc điều chỉnh độ sáng', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (3, N'Đồng hồ treo tường hiện đại', 999000, N'/assets/img/product/product3.jpg', 5, N'Hợp kim mạ', 2)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (4, N'Đồng hồ treo tường chữ số la mã độc đáo', 340000, N'/assets/img/product/product4.jpg', 6, N'Hợp kim mạ', 2)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (5, N'Bộ 3 tranh tráng gương cao cấp', 1500000, N'/assets/img/product/product5.jpg', 2, N'Tranh tráng gương kết hợp khung tranh hợp kim nhôm 3 màu', 3)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (6, N'Tranh tráng gương 5D', 900000, N'/assets/img/product/product6.jpg', 4, N'Tranh tráng gương kết hợp khung tranh hợp kim nhôm 3 màu', 4)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (7, N'Đèn bàn Rocker độc đáo', 980000, N'/assets/img/product/product2.jpg', 7, N'có công tắc điều chỉnh độ sáng', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (8, N'Bộ 3 tranh tráng gương cao cấp', 1500000, N'/assets/img/product/product5.jpg', 8, N'Tranh tráng gương kết hợp khung tranh hợp kim nhôm 3 màu', 3)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (9, N'Đèn bàn phong cách Bắc Âu', 1599000, N'/assets/img/product/product01.jpg', 3, N'có công tắc điều chỉnh độ sáng', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (10, N'Tranh tráng gương 5D', 900000, N'/assets/img/product/product6.jpg', 2, N'Tranh tráng gương kết hợp khung tranh hợp kim nhôm 3 màu', 4)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (14, N'Gấu Bear ngụy trang cá mập 28cm', 2000000, N'/assets/img/product/product10.jpg', 3, N'+ Bearbrick 200% (kích thước 145mm): là kích thước rất hiếm được sản xuất.', 3)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (15, N'Gấu phản diện', 2220000, N'/assets/img/product/product7.jpg', 3, N'+ Bearbrick 200% (kích thước 145mm): là kích thước rất hiếm được sản xuất.', 3)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (16, N'Gấu bưng khay', 3000000, N'/assets/img/product/product8.jpg', 3, N'+ Bearbrick 200% (kích thước 145mm): là kích thước rất hiếm được sản xuất.', 2)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (17, N'Gấu xám', 2000000, N'/assets/img/product/product9.jpg', 3, N'+ Bearbrick 200% (kích thước 145mm): là kích thước rất hiếm được sản xuất.', 3)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (18, N'Gấu ngụy trang bape', 4120000, N'/assets/img/product/product11.jpg', 3, N'+ Bearbrick 200% (kích thước 145mm): là kích thước rất hiếm được sản xuất.', 2)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (19, N'Gấu xám mắt bé', 3400000, N'/assets/img/product/product12.jpg', 3, N'+ Bearbrick 200% (kích thước 145mm): là kích thước rất hiếm được sản xuất.', 3)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (21, N'Gấu Bear vân đá xinh xắn', 2220000, N'/assets/img/product/product13.jpg', NULL, NULL, 2)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (22, N'Gấu Bear Bling Bling', 1500000, N'/assets/img/product/product14.jpg', NULL, NULL, 3)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (23, N'Gấu Bear vua quyền anh Ali', 1000000, N'/assets/img/product/product16.jpg', NULL, NULL, 2)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (24, N'Gấu Bear Basquiat', 200000, N'/assets/img/product/product17.jpg', NULL, NULL, 2)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (25, N'Gấu Bear Baby', 2220000, N'/assets/img/product/product18.jpg', NULL, NULL, 4)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (26, N'Đá hình học trang trí tủ kệ', 1500000, N'/assets/img/product/product19.jpg', NULL, NULL, 2)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (27, N'Cặp đá mã não cao cấp để bàn', 980000, N'/assets/img/product/product20.jpg', NULL, NULL, 4)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (28, N'Bộ 3 viên đá mã não xanh dương', 2000000, N'/assets/img/product/product21.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (29, N'Mô hình chim én đá pha lê', 450000, N'/assets/img/product/product22.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (30, N'Đá thạch anh tự nhiên', 980000, N'/assets/img/product/product23.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (31, N'Hoa pha lê để bàn sang trọng', 2220000, N'/assets/img/product/product24.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (32, N'Đá pha lê tự nhiên', 9800000, N'/assets/img/product/product25.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (33, N'Mô hình hành tinh để bàn', 980000, N'/assets/img/product/product26.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (34, N'Kèn bay trang trí kệ tủ', 700000, N'/assets/img/product/product27.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (35, N'Gấu Bear sao hỏa', 1500000, N'/assets/img/product/product28.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (36, N'Khay mứt kính 6 hộp vuông', 670000, N'/assets/img/product/product29.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (37, N'Khay mứt kính 6 hộp tròn', 580000, N'/assets/img/product/product30.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (38, N'Cây nhân sâm mơ trang trí', 2500000, N'/assets/img/product/product35.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (39, N'Khay mứt 2 tầng bằng gốm sứ', 600000, N'/assets/img/product/product32.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (40, N'Hồ Lô may mắn', 1500000, N'/assets/img/product/product33.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (41, N'Đôi chim uyên ương', 6700000, N'/assets/img/product/product34.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (42, N'Cây nhân sâm mơ trang trí', 2500000, N'/assets/img/product/product35.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (43, N'Mô hình lá sen vàng', 1500000, N'/assets/img/product/product36.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (44, N'Cặp quả cầu pha lê hồ', 980000, N'/assets/img/product/product37.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (45, N'Cặp cây tài lộc bằng đồng', 999000, N'/assets/img/product/product38.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (46, N'Cặp mô hình mái hiên', 2500000, N'/assets/img/product/product39.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (47, N'Cặp lá vàng trang trí', 1000000, N'/assets/img/product/product40.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (48, N'Cặp cây tài lộc trang trí', 3400000, N'/assets/img/product/product41.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (49, N'Quả địa cầu kim loại', 1599000, N'/assets/img/product/product42.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (50, N'Hòn non bộ trong suốt', 1500000, N'/assets/img/product/product43.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (51, N'Cặp mắt pha lê độc đáo', 2220000, N'/assets/img/product/product44.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (52, N'Mẫu lựu đá thạch anh', 3000000, N'/assets/img/product/product45.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (53, N'Mẫu chim pha lê để tủ', 2500000, N'/assets/img/product/product46.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (54, N'Đồ trang trí phòng', 2500000, N'/assets/img/product/product47.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (55, N'Quả cầu pha lê để bàn', 1000000, N'/assets/img/product/product48.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (56, N'Gấu Kaws trang trí', 1500000, N'/assets/img/product/product49.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (57, N'Tượng thỏ Bunny', 2500000, N'/assets/img/product/product51.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (58, N'Quả địa cầu bản đồ thế giới', 450000, N'/assets/img/product/product52.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (59, N'Quả địa cầu trang trí', 700000, N'/assets/img/product/product53.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (60, N'Tượng phi hành gia', 2900000, N'/assets/img/product/product54.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (61, N'Tượng phi hành gia', 3400000, N'/assets/img/product/product55.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (62, N'Bộ tượng suy nghĩ', 1000000, N'/assets/img/product/product56.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (63, N'Cặp thuyền buồm', 980000, N'/assets/img/product/product57.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (64, N'Cặp mô hình tòa tháp', 2900000, N'/assets/img/product/product58.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (65, N'Decor để bàn quả địa', 450000, N'/assets/img/product/product59.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (66, N'Quả cầu pha lê trang trí', 750000, N'/assets/img/product/product60.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (67, N'Cặp quả địa cầu kim loại', 980000, N'/assets/img/product/product61.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (68, N'Decor để bàn mặt trăng', 1599000, N'/assets/img/product/product62.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (69, N'Decor để bàn cao cấp', 2500000, N'/assets/img/product/product63.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (70, N'Decor để bàn cao cấp', 2500000, N'/assets/img/product/product64.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (71, N'Cặp khóa son để bàn', 1500000, N'/assets/img/product/product65.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (72, N'Bộ 3 lá sen vàng trang trí', 2500000, N'/assets/img/product/product66.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (73, N'Bộ 3 đĩa thủy tinh cao cấp', 1500000, N'/assets/img/product/product67.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (74, N'Khay đựng bánh kẹo', 1500000, N'/assets/img/product/product68.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (75, N'Decor để bàn khay', 980000, N'/assets/img/product/product69.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (76, N'Decor để bàn khay', 600000, N'/assets/img/product/product70.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (77, N'Decor để bàn khay', 750000, N'/assets/img/product/product71.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (78, N'Mẫu gương decor', 3000000, N'/assets/img/product/product72.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (79, N'Cặp giá đỡ nến thơm', 580000, N'/assets/img/product/product73.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (80, N'Decor để bàn gấu', 980000, N'/assets/img/product/product74.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (81, N'Cặp mèo robot để bàn', 1500000, N'/assets/img/product/product75.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (82, N'Cặp lốc xoáy trang trí', 1500000, N'/assets/img/product/product76.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (83, N'Căp san hô trang trí', 1500000, N'/assets/img/product/product77.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (84, N'Cặp quả cầu pha lê', 1500000, N'/assets/img/product/product78.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (85, N'Cặp ốc biển gắn đá', 2500000, N'/assets/img/product/product79.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (86, N'Cặp động vật đá', 2220000, N'/assets/img/product/product80.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (87, N'Cặp xích đu xích đu', 980000, N'/assets/img/product/product81.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (88, N'Thang cân bằng trang trí', 1500000, N'/assets/img/product/product82.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (89, N'Decor trang trí phòng', 1500000, N'/assets/img/product/product83.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (90, N'Mẫu hình học đá cẩm thạch', 980000, N'/assets/img/product/product84.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (91, N'Bộ 3 hạc giấy mạ vàng', 3400000, N'/assets/img/product/product85.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (92, N'Cặp đàn trang trí', 1500000, N'/assets/img/product/product86.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (93, N'Bàn cún dùng để tách cafe', 2500000, N'/assets/img/product/product87.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (94, N'Cặp bướm nối đuôi decor', 2220000, N'/assets/img/product/product88.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (95, N'Cặp cây san hô đá', 2000000, N'/assets/img/product/product89.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [BaoHanh], [MoTa], [MaLoaiSP]) VALUES (97, N'Cây tùng bằng đồng', 1500000, N'/assets/img/product/product90.jpg', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[TinTuc] ON 

INSERT [dbo].[TinTuc] ([MaTT], [TieuDe], [NoiDung]) VALUES (14, N'Sở Hữu Không Gian Sống Mơ Ước Với Dịch Vụ Decor Nhà Ở Trọn Gói', N'Đối với người Việt Nam, sở hữu một ngôi nhà không chỉ là ước mơ mà còn là sự nỗ lực, cố gắng chăm chỉ lao động và tích lũy suốt một thời gian dài. Vì thế, nhà không đơn thuần là một tài sản giá trị mà còn gửi gắm ước mơ về một không gian sống có gu và mang cá tính của chính mình! Thấu hiểu những điều đó, Decor Việt mang tới dịch vụ decor nhà ở trọn gói, vừa giúp bạn hoàn thiện không gian sống mơ ước vừa giúp tối đa hóa không gian sử dụng giúp mang lại hiệu quả thẩm mỹ cao nhất và thể hiện dấu ấn cá nhân của gia chủ.          ')
INSERT [dbo].[TinTuc] ([MaTT], [TieuDe], [NoiDung]) VALUES (20, N'Sở Hữu Không Gian Sống Mơ Ước Với Dịch Vụ Decor Nhà Ở Trọn Gói', N'Đối với người Việt Nam, sở hữu một ngôi nhà không chỉ là ước mơ mà còn là sự nỗ lực, cố gắng chăm chỉ lao động và tích lũy suốt một thời gian dài. Vì thế, nhà không đơn thuần là một tài sản giá trị mà còn gửi gắm ước mơ về một không gian sống có gu và mang cá tính của chính mình! Thấu hiểu những điều đó, Decor Việt mang tới dịch vụ decor nhà ở trọn gói, vừa giúp bạn hoàn thiện không gian sống mơ ước vừa giúp tối đa hóa không gian sử dụng giúp mang lại hiệu quả thẩm mỹ cao nhất và thể hiện dấu ấn cá nhân của gia chủ.          ')
INSERT [dbo].[TinTuc] ([MaTT], [TieuDe], [NoiDung]) VALUES (26, N'Sở Hữu Không Gian Sống Mơ Ước Với Dịch Vụ Decor Nhà Ở Trọn Gói', N'Đối với người Việt Nam, sở hữu một ngôi nhà không chỉ là ước mơ mà còn là sự nỗ lực, cố gắng chăm chỉ lao động và tích lũy suốt một thời gian dài. Vì thế, nhà không đơn thuần là một tài sản giá trị mà còn gửi gắm ước mơ về một không gian sống có gu và mang cá tính của chính mình! Thấu hiểu những điều đó, Decor Việt mang tới dịch vụ decor nhà ở trọn gói, vừa giúp bạn hoàn thiện không gian sống mơ ước vừa giúp tối đa hóa không gian sử dụng giúp mang lại hiệu quả thẩm mỹ cao nhất và thể hiện dấu ấn cá nhân của gia chủ.          ')
INSERT [dbo].[TinTuc] ([MaTT], [TieuDe], [NoiDung]) VALUES (29, N'Sở Hữu Không Gian Sống Mơ Ước Với Dịch Vụ Decor Nhà Ở Trọn Gói', N'không gian sống có gu và mang cá tính của chính mình! Thấu hiểu những đi')
INSERT [dbo].[TinTuc] ([MaTT], [TieuDe], [NoiDung]) VALUES (31, N'ddasfafaf', N'afassfasffasf')
INSERT [dbo].[TinTuc] ([MaTT], [TieuDe], [NoiDung]) VALUES (32, N'adadff', N'dasdaffaw')
INSERT [dbo].[TinTuc] ([MaTT], [TieuDe], [NoiDung]) VALUES (33, N'', N'')
SET IDENTITY_INSERT [dbo].[TinTuc] OFF
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_HoaDon] FOREIGN KEY([MaHoaDon])
REFERENCES [dbo].[HoaDon] ([MaHoaDon])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_HoaDon]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_SanPham]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSP] FOREIGN KEY([MaLoaiSP])
REFERENCES [dbo].[LoaiSP] ([MaLoaiSP])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSP]
GO
/****** Object:  StoredProcedure [dbo].[add_ltt]    Script Date: 05/07/2022 16:11:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[add_ltt]
@TieuDe ntext ,
@NoiDung ntext
as
begin
insert into TinTuc
(
TieuDe,NoiDung
)
values(
@TieuDe,@NoiDung
)
end
GO
/****** Object:  StoredProcedure [dbo].[add_sp]    Script Date: 05/07/2022 16:11:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[add_sp]
@MaSP int ,
@TenSP nvarchar(50),
@Gia int,
@Anh nvarchar(50),
@BaoHanh int,
@MoTa ntext,
@MaLoaiSP int
as
begin
insert into SanPham
(
MaSP,MaLoaiSP,TenSP,Gia,Anh,BaoHanh,MoTa
)
values(
@MaSP,@MaLoaiSP,@TenSP,@Gia,@Anh,@BaoHanh,@MoTa
)
end
GO
/****** Object:  StoredProcedure [dbo].[delete_sp]    Script Date: 05/07/2022 16:11:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  create proc [dbo].[delete_sp]
@MaSP int
as 
delete from SanPham
where MaSP = @MaSP
GO
/****** Object:  StoredProcedure [dbo].[delete_tintuc]    Script Date: 05/07/2022 16:11:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[delete_tintuc]
@MaTT int
as 
delete from TinTuc
where MaTT = @MaTT
GO
/****** Object:  StoredProcedure [dbo].[Get_All]    Script Date: 05/07/2022 16:11:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Get_All]
  as
  begin
  select * from TinTuc
  end
GO
/****** Object:  StoredProcedure [dbo].[Get_SanPham]    Script Date: 05/07/2022 16:11:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Get_SanPham]
  as
  begin
  select * from SanPham
  end
GO
/****** Object:  StoredProcedure [dbo].[get_sp]    Script Date: 05/07/2022 16:11:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  create proc [dbo].[get_sp]
@MaSP int
as
select * from SanPham 
where MaSP = @MaSP
GO
/****** Object:  StoredProcedure [dbo].[get_tintuc]    Script Date: 05/07/2022 16:11:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  create proc [dbo].[get_tintuc]
@MaTT int
as
select * from TinTuc 
where MaTT = @MaTT
GO
/****** Object:  StoredProcedure [dbo].[update_sp]    Script Date: 05/07/2022 16:11:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[update_sp]
@MaSP int ,
@TenSP nvarchar(50),
@Gia int,
@Anh nvarchar(50),
@BaoHanh int,
@MoTa ntext,
@MaLoaiSP int
as
begin
update SanPham set
MaLoaiSP=@MaLoaiSP,
TenSP=@TenSP,
Gia=@Gia, 
Anh=@Anh,
BaoHanh=@BaoHanh,
MoTa=@MoTa
where MaSP=@MaSP

end
GO
/****** Object:  StoredProcedure [dbo].[update_tintuc]    Script Date: 05/07/2022 16:11:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[update_tintuc]
@MaTT int,
@TieuDe ntext ,
@NoiDung ntext
as
begin
update TinTuc set
TieuDe=@TieuDe,
NoiDung=@NoiDung where MaTT=@MaTT

end
GO
USE [master]
GO
ALTER DATABASE [DecorPhong] SET  READ_WRITE 
GO
