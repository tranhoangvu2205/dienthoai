USE [master]
GO
/****** Object:  Database [DBQuanLyBanHang]    Script Date: 6/19/2020 1:04:09 PM ******/
CREATE DATABASE [DBQuanLyBanHang]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBQuanLyBanHang', FILENAME = N'D:\K2 - Nam3\Java\BTL\Database\DBQuanLyBanHang.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DBQuanLyBanHang_log', FILENAME = N'D:\K2 - Nam3\Java\BTL\Database\DBQuanLyBanHang_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DBQuanLyBanHang] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBQuanLyBanHang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBQuanLyBanHang] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBQuanLyBanHang] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBQuanLyBanHang] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBQuanLyBanHang] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBQuanLyBanHang] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBQuanLyBanHang] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DBQuanLyBanHang] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBQuanLyBanHang] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBQuanLyBanHang] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBQuanLyBanHang] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBQuanLyBanHang] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBQuanLyBanHang] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBQuanLyBanHang] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBQuanLyBanHang] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBQuanLyBanHang] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DBQuanLyBanHang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBQuanLyBanHang] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBQuanLyBanHang] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBQuanLyBanHang] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBQuanLyBanHang] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBQuanLyBanHang] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBQuanLyBanHang] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBQuanLyBanHang] SET RECOVERY FULL 
GO
ALTER DATABASE [DBQuanLyBanHang] SET  MULTI_USER 
GO
ALTER DATABASE [DBQuanLyBanHang] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBQuanLyBanHang] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBQuanLyBanHang] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBQuanLyBanHang] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DBQuanLyBanHang] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'DBQuanLyBanHang', N'ON'
GO
USE [DBQuanLyBanHang]
GO
/****** Object:  Table [dbo].[CHITIETDH]    Script Date: 6/19/2020 1:04:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CHITIETDH](
	[MADH] [varchar](20) NOT NULL,
	[MASP] [varchar](20) NOT NULL,
	[SLDAT] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MADH] ASC,
	[MASP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CHITIETPHIEUNHAP]    Script Date: 6/19/2020 1:04:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CHITIETPHIEUNHAP](
	[MAPHIEUNHAP] [varchar](20) NOT NULL,
	[MASP] [varchar](20) NOT NULL,
	[SLNHAP] [int] NULL,
	[DONGIANHAP] [money] NULL,
	[THANHTIEN] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[MAPHIEUNHAP] ASC,
	[MASP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CHITIETPHIEUXUAT]    Script Date: 6/19/2020 1:04:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CHITIETPHIEUXUAT](
	[MAPHIEUXUAT] [varchar](20) NOT NULL,
	[MASP] [varchar](20) NOT NULL,
	[SLXUAT] [int] NULL,
	[DONGIAXUAT] [money] NULL,
	[THANHTIEN] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[MAPHIEUXUAT] ASC,
	[MASP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DONHANG]    Script Date: 6/19/2020 1:04:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DONHANG](
	[MADH] [varchar](20) NOT NULL,
	[NGAYDH] [date] NULL,
	[MANCC] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MADH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NHACC]    Script Date: 6/19/2020 1:04:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NHACC](
	[MANCC] [varchar](20) NOT NULL,
	[TENNCC] [nvarchar](100) NOT NULL,
	[DIACHI] [nvarchar](200) NOT NULL,
	[PHONE] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[MANCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PHIEUNHAP]    Script Date: 6/19/2020 1:04:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PHIEUNHAP](
	[MAPHIEUNHAP] [varchar](20) NOT NULL,
	[NGAYNHAP] [date] NULL,
	[MADH] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MAPHIEUNHAP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PHIEUXUAT]    Script Date: 6/19/2020 1:04:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PHIEUXUAT](
	[MAPHIEUXUAT] [varchar](20) NOT NULL,
	[NGAYXUAT] [date] NULL,
	[TENKH] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MAPHIEUXUAT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 6/19/2020 1:04:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MASP] [varchar](20) NOT NULL,
	[TENSP] [nvarchar](100) NOT NULL,
	[DVTINH] [nvarchar](50) NULL,
	[SOLUONG] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MASP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 6/19/2020 1:04:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[maTk] [varchar](20) NOT NULL,
	[tenDN] [varchar](50) NULL,
	[matKhau] [varchar](50) NULL,
	[hoTen] [nvarchar](100) NULL,
	[sdt] [varchar](50) NULL,
	[diaChi] [nvarchar](200) NULL,
	[ngaySinh] [date] NULL,
	[quyen] [nvarchar](50) NULL,
 CONSTRAINT [PK_TAIKHOAN] PRIMARY KEY CLUSTERED 
(
	[maTk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[THONGKE]    Script Date: 6/19/2020 1:04:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THONGKE](
	[ngay1] [date] NULL,
	[ngay2] [date] NULL,
	[TongTienNhap] [money] NULL,
	[TongTienXuat] [money] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TONKHO]    Script Date: 6/19/2020 1:04:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TONKHO](
	[MATON] [varchar](20) NOT NULL,
	[MASP] [varchar](20) NOT NULL,
	[TONGSLNHAP] [int] NULL,
	[TONGSLXUAT] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MATON] ASC,
	[MASP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[CHITIETDH] ([MADH], [MASP], [SLDAT]) VALUES (N'dh1', N'sp1', 250)
INSERT [dbo].[CHITIETDH] ([MADH], [MASP], [SLDAT]) VALUES (N'dh1', N'sp3', 50)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MAPHIEUNHAP], [MASP], [SLNHAP], [DONGIANHAP], [THANHTIEN]) VALUES (N'phieu1', N'sp1', 50, 90000.0000, 797797.0000)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MAPHIEUNHAP], [MASP], [SLNHAP], [DONGIANHAP], [THANHTIEN]) VALUES (N'phieu1', N'sp3', 50, 80000.0000, 4000000.0000)
INSERT [dbo].[CHITIETPHIEUXUAT] ([MAPHIEUXUAT], [MASP], [SLXUAT], [DONGIAXUAT], [THANHTIEN]) VALUES (N'phieu1', N'sp1', 20, 6000.0000, NULL)
INSERT [dbo].[DONHANG] ([MADH], [NGAYDH], [MANCC]) VALUES (N'dh1', CAST(N'2020-06-17' AS Date), N'ncc1')
INSERT [dbo].[NHACC] ([MANCC], [TENNCC], [DIACHI], [PHONE]) VALUES (N'ncc1', N'LV', N'USA', N'0912222')
INSERT [dbo].[NHACC] ([MANCC], [TENNCC], [DIACHI], [PHONE]) VALUES (N'ncc2', N'Gucci', N'Parris', N'0922213')
INSERT [dbo].[PHIEUNHAP] ([MAPHIEUNHAP], [NGAYNHAP], [MADH]) VALUES (N'phieu1', CAST(N'2020-06-24' AS Date), N'dh1')
INSERT [dbo].[PHIEUXUAT] ([MAPHIEUXUAT], [NGAYXUAT], [TENKH]) VALUES (N'phieu1', CAST(N'2020-06-18' AS Date), N'giang')
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DVTINH], [SOLUONG]) VALUES (N'sp1', N'Quần babay', N'cái', 30)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DVTINH], [SOLUONG]) VALUES (N'sp3', N'Áo sơ mi', N'cái', 50)
INSERT [dbo].[TAIKHOAN] ([maTk], [tenDN], [matKhau], [hoTen], [sdt], [diaChi], [ngaySinh], [quyen]) VALUES (N'1', N'admin', N'123', N'x', N'x', N'x', CAST(N'1999-02-02' AS Date), N'Admin')
INSERT [dbo].[TAIKHOAN] ([maTk], [tenDN], [matKhau], [hoTen], [sdt], [diaChi], [ngaySinh], [quyen]) VALUES (N'2', N'teo', N'123', N'x', N'x', N'x', CAST(N'1999-01-01' AS Date), N'Nhân viên')
INSERT [dbo].[THONGKE] ([ngay1], [ngay2], [TongTienNhap], [TongTienXuat]) VALUES (CAST(N'2020-06-19' AS Date), CAST(N'2020-06-19' AS Date), 0.0000, 0.0000)
INSERT [dbo].[THONGKE] ([ngay1], [ngay2], [TongTienNhap], [TongTienXuat]) VALUES (CAST(N'2020-06-01' AS Date), CAST(N'2020-06-19' AS Date), 0.0000, 0.0000)
INSERT [dbo].[THONGKE] ([ngay1], [ngay2], [TongTienNhap], [TongTienXuat]) VALUES (CAST(N'2020-03-12' AS Date), CAST(N'2020-06-19' AS Date), 0.0000, 0.0000)
INSERT [dbo].[THONGKE] ([ngay1], [ngay2], [TongTienNhap], [TongTienXuat]) VALUES (CAST(N'2020-06-24' AS Date), CAST(N'2020-06-30' AS Date), 4797797.0000, 0.0000)
ALTER TABLE [dbo].[CHITIETDH]  WITH CHECK ADD FOREIGN KEY([MADH])
REFERENCES [dbo].[DONHANG] ([MADH])
GO
ALTER TABLE [dbo].[CHITIETDH]  WITH CHECK ADD FOREIGN KEY([MASP])
REFERENCES [dbo].[SANPHAM] ([MASP])
GO
ALTER TABLE [dbo].[CHITIETPHIEUNHAP]  WITH CHECK ADD FOREIGN KEY([MAPHIEUNHAP])
REFERENCES [dbo].[PHIEUNHAP] ([MAPHIEUNHAP])
GO
ALTER TABLE [dbo].[CHITIETPHIEUNHAP]  WITH CHECK ADD FOREIGN KEY([MASP])
REFERENCES [dbo].[SANPHAM] ([MASP])
GO
ALTER TABLE [dbo].[CHITIETPHIEUXUAT]  WITH CHECK ADD FOREIGN KEY([MAPHIEUXUAT])
REFERENCES [dbo].[PHIEUXUAT] ([MAPHIEUXUAT])
GO
ALTER TABLE [dbo].[CHITIETPHIEUXUAT]  WITH CHECK ADD FOREIGN KEY([MASP])
REFERENCES [dbo].[SANPHAM] ([MASP])
GO
ALTER TABLE [dbo].[DONHANG]  WITH CHECK ADD FOREIGN KEY([MANCC])
REFERENCES [dbo].[NHACC] ([MANCC])
GO
ALTER TABLE [dbo].[PHIEUNHAP]  WITH CHECK ADD FOREIGN KEY([MADH])
REFERENCES [dbo].[DONHANG] ([MADH])
GO
ALTER TABLE [dbo].[TONKHO]  WITH CHECK ADD FOREIGN KEY([MASP])
REFERENCES [dbo].[SANPHAM] ([MASP])
GO
/****** Object:  StoredProcedure [dbo].[CHITIET_DONHANG]    Script Date: 6/19/2020 1:04:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CHITIET_DONHANG]
AS
BEGIN
	SELECT CHITIETDH.MADH, NGAYDH,MANCC,MASP,SLDAT FROM dbo.DONHANG INNER JOIN dbo.CHITIETDH ON CHITIETDH.MADH = DONHANG.MADH
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_CHITIET_PHIEUNHAP]    Script Date: 6/19/2020 1:04:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PROC_CHITIET_PHIEUNHAP]
AS
BEGIN
	SELECT CHITIETPHIEUNHAP.MAPHIEUNHAP, NGAYNHAP, MADH,MASP,SLNHAP,DONGIANHAP
	 FROM dbo.PHIEUNHAP INNER JOIN dbo.CHITIETPHIEUNHAP
	  ON CHITIETPHIEUNHAP.MAPHIEUNHAP = PHIEUNHAP.MAPHIEUNHAP
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_CHITIETPHIEUXUAT]    Script Date: 6/19/2020 1:04:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PROC_CHITIETPHIEUXUAT]
AS
BEGIN
	SELECT CHITIETPHIEUXUAT.MAPHIEUXUAT,NGAYXUAT,TENKH,MASP,SLXUAT,DONGIAXUAT FROM dbo.PHIEUXUAT INNER JOIN dbo.CHITIETPHIEUXUAT
	ON CHITIETPHIEUXUAT.MAPHIEUXUAT = PHIEUXUAT.MAPHIEUXUAT
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_SANPHAMTHEOPHIEU]    Script Date: 6/19/2020 1:04:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PROC_SANPHAMTHEOPHIEU](@MAPHIEU VARCHAR(20))
AS
BEGIN
	SELECT dbo.SANPHAM.MASP,TENSP,DVTINH,SANPHAM.SOLUONG FROM dbo.PHIEUNHAP INNER JOIN dbo.DONHANG
	ON DONHANG.MADH = PHIEUNHAP.MADH
	INNER JOIN dbo.CHITIETDH
	ON CHITIETDH.MADH = DONHANG.MADH
	INNER JOIN dbo.SANPHAM
	ON SANPHAM.MASP = CHITIETDH.MASP
	WHERE MAPHIEUNHAP=@MAPHIEU
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_SLNHAP]    Script Date: 6/19/2020 1:04:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PROC_SLNHAP](@MASP VARCHAR(20))
AS
BEGIN
	SELECT SUM(SLNHAP) AS 'SOLUONG' FROM dbo.CHITIETPHIEUNHAP WHERE MASP=@MASP
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_SLXUAT]    Script Date: 6/19/2020 1:04:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PROC_SLXUAT](@MASP VARCHAR(20))
AS
BEGIN
	SELECT SUM(SLXUAT) AS 'SOLUONG' FROM dbo.CHITIETPHIEUXUAT WHERE MASP=@MASP
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_TONGTIENXUAT]    Script Date: 6/19/2020 1:04:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PROC_TONGTIENXUAT](@NGAY1 DATE, @NGAY2 DATE)
AS
BEGIN
	SELECT SUM(THANHTIEN) AS 'TONGTHANHTIEN' FROM dbo.CHITIETPHIEUXUAT INNER JOIN dbo.PHIEUXUAT
	ON PHIEUXUAT.MAPHIEUXUAT = CHITIETPHIEUXUAT.MAPHIEUXUAT
	WHERE NGAYXUAT BETWEEN @NGAY1 AND @NGAY2
END

GO
USE [master]
GO
ALTER DATABASE [DBQuanLyBanHang] SET  READ_WRITE 
GO

select*from TAIKHOAN