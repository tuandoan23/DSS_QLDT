USE [master]
GO
/****** Object:  Database [QLDT]    Script Date: 01/10/2019 23:54:52 ******/
CREATE DATABASE [QLDT] ON  PRIMARY 
( NAME = N'QLDT', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\QLDT.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLDT_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\QLDT_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLDT] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLDT].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLDT] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [QLDT] SET ANSI_NULLS OFF
GO
ALTER DATABASE [QLDT] SET ANSI_PADDING OFF
GO
ALTER DATABASE [QLDT] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [QLDT] SET ARITHABORT OFF
GO
ALTER DATABASE [QLDT] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [QLDT] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [QLDT] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [QLDT] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [QLDT] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [QLDT] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [QLDT] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [QLDT] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [QLDT] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [QLDT] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [QLDT] SET  DISABLE_BROKER
GO
ALTER DATABASE [QLDT] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [QLDT] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [QLDT] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [QLDT] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [QLDT] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [QLDT] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [QLDT] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [QLDT] SET  READ_WRITE
GO
ALTER DATABASE [QLDT] SET RECOVERY SIMPLE
GO
ALTER DATABASE [QLDT] SET  MULTI_USER
GO
ALTER DATABASE [QLDT] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [QLDT] SET DB_CHAINING OFF
GO
USE [QLDT]
GO
/****** Object:  Table [dbo].[cosodaotao]    Script Date: 01/10/2019 23:54:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cosodaotao](
	[MaTruong] [nvarchar](10) NOT NULL,
	[TenTruong] [nvarchar](100) NOT NULL,
	[DiaChi] [nvarchar](120) NULL,
	[Website] [nvarchar](75) NULL,
	[TinhThanh] [nvarchar](30) NULL,
	[DVChuQuan] [nvarchar](60) NULL,
 CONSTRAINT [PK_cosodaotao] PRIMARY KEY CLUSTERED 
(
	[MaTruong] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'BKA  ', N'TRƯỜNG ĐẠI HỌC BÁCH KHOA HÀ NỘI', N'Số 1 Đại Cồ Việt, Hai Bà Trưng, Hà Nội', N'www.hust.edu.vn', N'Hà Nội', N'Bộ Giáo dục và Đào tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'BVH', N'Học viện Công nghệ Bưu chính Viễn thông', N'123 Hoàng Quốc Việt, Q.Cầu Giấy, Hà Nội', N'ptit.edu.vn', N'Hà Nội', N'Bộ Thông Tin Và Truyền Thông ')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'BVS', N'Học viện Công nghệ Bưu chính Viễn thông - Cơ sở 2', N'12 Nguyễn Đình Chiểu, Phường Đa Kao, Quận 1, TP. Hồ Chí Minh', N'hcm.ptit.edu.vn', N'TP. Hồ Chí Minh', N'Bộ Thông Tin Và Truyền Thông ')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'BVU', N'Trường Đại học Bà Rịa - Vũng Tàu', N'80 Trương Công Định, Phường 3, Tp. Vũng Tàu, Bà Rịa-Vũng Tàu', N'bvu.edu.vn', N'Bà Rịa-Vũng Tàu', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DAD', N'Trường Đại học Đông Á', N'33 Xô Viết Nghệ Tỉnh, Phường Hòa Cường Nam, Hải Châu, Đà Nẵng', N'donga.edu.vn', N'Đà Nẵng', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DBD', N'Trường Đại học Bình Dương', N'504 Đại lộ Bình Dương, Phường Hiệp Thành, TP. Thủ Dầu Một, Bình Dương', N'www.bdu.edu.vn', N'Bình Dương', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DBH', N'Trường Đại học Quốc tế Bắc Hà', N'Thị trấn Lim, huyện Tiên Du, Bắc Ninh', N'www.bhiu.edu.vn', N'Bắc Ninh', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DBL', N'Trường Đại học Bạc Liêu', N'Số 178, đường Võ Thị Sáu, phường 8, thành phố Bạc Liêu, Bạc Liêu', N'blu.edu.vn', N'Bạc Liêu', N'UBND Tỉnh Bạc Liêu')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DCA', N'Trường Đại học Chu Văn An', N'Khu Đô thị đại học Phố Hiến, phường Hiến Nam, TP Hưng Yên, Hưng Yên', N'www.cvauni.edu.vn', N'Hưng Yên', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DCD', N'Trường Đại học Công nghệ Đồng Nai', N'Đường Nguyễn Khuyến, KP5, phường Trảng Dài, TP. Biên Hòa, Đồng Nai', N'dntu.edu.vn', N'Đồng Nai', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DCG', N'Trường Đại học Tư thục Công nghệ Thông tin Gia Định', N'A15-19 Nguyễn Hữu Thọ, Phường Tân Phong, Quận 7, TP. Hồ Chí Minh', N'www.giadinh.edu.vn', N'TP. Hồ Chí Minh', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DCL', N'Trường Đại học Cửu Long', N'QL 1A, Phú Quới, Long Hồ, Vĩnh Long', N'www.mku.edu.vn', N'Vĩnh Long', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DCN', N'Trường Đại học Công nghiệp Hà Nội', N'Số 298 đường Cầu Diễn, quận Bắc Từ Liêm, TP. Hà Nội', N'www.haui.edu.vn', N'TP. Hà Nội', N'Bộ Công Thương')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DCQ', N'Trường Đại học Công nghệ và Quản lý Hữu Nghị', N'Lô 1-4, Số 431 Tam Trinh, Hoàng Văn Thụ, Hoàng Mai, Hà Nội', N'utm.edu.vn', N'Hà Nội', N'Bộ Giáo dục và Đào tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DCT', N'Trường Đại học Công nghiệp Thực phẩm tp. Hồ Chí Minh', N'140 Lê Trọng Tấn, Phường Tây Thạnh, Quận Tân Phú, TP. Hồ Chí Minh', N'tuyensinh.hufi.edu.vn', N'TP. Hồ Chí Minh', N'Bộ Công Thương')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DCV', N'Trường Đại học Công nghiệp Vinh', N'Số 26, Đường Nguyễn Thái Học, TP Vinh, Nghệ An', N'www.iuv.edu.vn', N'Nghệ An', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DDA', N'Trường Đại học Công nghệ Đông Á', N'Khu Xuân Ổ A, Phường Võ Cường, TP Bắc Ninh, Bắc Ninh', N'eaut.edu.vn', N'Bắc Ninh', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DDB', N'Trường Đại học Thành Đông', N'Số 3 Vũ Công Đán, Phường Tứ Minh, Hải Dương', N'thanhdong.edu.vn', N'Hải Dương', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DDD', N'Trường Đại học Đông Đô', N'Km25, quốc lộ 6, Phú Nghĩa, Chương Mỹ, Hà Nội', N'www.hdiu.edu.vn', N'Hà Nội', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DDI', N'Khoa Công nghệ thông tin và truyền thông - Đại học Đà Nẵng', N'Đô thị Đại học Đà Nẵng, đường Nam Kỳ Khởi Nghĩa, Đà Nẵng', N'sict.udn.vn', N'Đà Nẵng', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DDK', N'Trường Đại họ̣c Bách khoa - Đại học Đà Nẵng', N'54 Nguyễn Lương Bằng, phường Hòa Khánh, quận Liên Chiểu, Đà Nẵng', N'www.dut.udn.vn', N'Đà Nẵng', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DDL', N'Trường Đại học Điện lực', N'Số 235, Hoàng Quốc Việt, Bắc Từ Liêm, Hà Nội', N'www.epu.edu.vn', N'Hà Nội', N'Bộ Công Thương')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DDM', N'Trường Đại học Công nghiệp Quảng Ninh', N'Xã Yên Thọ, Thị xã Đông Triều,Tnh Quảng Ninh', N'qui.edu.vn', N'Tnh Quảng Ninh', N'Bộ Công Thương')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DDN', N'Trường Đại học Đại Nam', N'Số 1, phố Xốm, phường Phú Lãm, Hà Đông, Hà Nội', N'www.dainam.edu.vn', N'Hà Nội', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DDP', N'Phân hiệu Đại học Đà Nẵng tại KonTum', N'704 Phan Đình Phùng, Quang Trung, Kon Tum', N'kontum.udn.vn', N'Kon Tum', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DDQ', N'TRƯỜNG ĐẠI HỌC KINH TẾ – ĐẠI HỌC ĐÀ NẴNG', N'72, Ngũ Hành Sơn, TP. Đà Nẵng', N'http://www.due.udn.vn', N'Đà Năng', N'Bộ Giáo dục và Đào tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DDS', N'Trường Đại họ̣c Sư phạm - Đại học Đà Nẵng', N'số 459 đường Tôn Đức Thắng, quận Liên Chiểu, TP. Đà Nẵng', N'ued.udn.vn', N'TP. Đà Nẵng', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DDT', N'Trường Đại học Duy Tân', N'254 Nguyễn Văn Linh, Thạc Gián, Thanh Khê, Đà Nẵng', N'www.duytan.edu.vn', N'Đà Nẵng', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DDV', N'Viện Nghiên cứu và Đào tạo Việt - Anh thuộc Đại học Đà Nẵng', N'158A Lê Lợi, Quận Hải Châu 1, Đà Nẵng', N'www.vnuk.udn.vn', N'Đà Nẵng', N'Đại Học Đà Nẵng')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DFA', N'Trường Đại học Tài chính - Quản trị kinh doanh', N'Cơ sở 1: Trưng Trắc – Văn Lâm – Hưng Yên', N'www.tcqtkd.edu.vn', N'Hưng Yên', N'Bộ Tài chính')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DHK', N'TRƯỜNG ĐẠI HỌC KINH TẾ - ĐH HUẾ', N'Nhà C, số 99 Hồ Đắc Di, Phường An Cựu, Thành phố Huế', N'www.hce.edu.vn', N'Huế', N'Đại học Huế')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DHP', N'Trường Đại học Dân lập Hải Phòng', N'Số 36 - Đường Dân Lập, Phường Dư Hàng Kênh, Quận Lê Chân, Hải Phòng', N'www.hpu.edu.vn', N'Hải Phòng', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DHQ', N'Phân hiệu Đại học Huế tại Quảng Trị', N'Đường Điện Biên Phủ, phường Đông Lương', N'phqt.hueuni.vn', N'phường Đông Lương', N'Đại Học Huế')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DHT', N'Trường Đại học Khoa học - Đại học Huế', N'Số 77 Nguyễn Huệ, thành phố Huế, tỉnh Thừa Thiên Huế', N'www.husc.edu.vn', N'tỉnh Thừa Thiên Huế', N'Đại Học Huế')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DHV', N'Trường Đại học Hùng Vương - tp. Hồ Chí Minh', N'736 Nguyễn Trãi, Phường 11, Quận 5, TP. HCM', N'www.hvuh.edu.vn', N'TP. HCM', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DKB', N'Trường Đại học Kinh tế - Kỹ thuật Bình Dương', N'530 Đại lộ Bình Dương, P. Hiệp Thành, Tp. Thủ Dầu Một, Bình Dương', N'www.ktkt.edu.vn', N'Bình Dương', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DKC', N'Trường Đại học Công nghệ Tp. Hồ Chí Minh', N'475A Điện Biên Phủ, Phường 25, Quận Bình Thạnh, TP. Hồ Chí Minh', N'www.hutech.edu.vn', N'TP. Hồ Chí Minh', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DKD', N'Trường Đại học Kinh tế Kỹ thuật Công nghiệp (Cơ sở Nam Định)', N'Số 353 Trần Hưng Đạo, Phường Bà Triệu, Nam Định', N'www.uneti.edu.vn', N'Nam Định', N'Bộ Công Thương')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DKK', N'Trường Đại học Kinh tế Kỹ thuật Công nghiệp (Cơ sở Hà Nội)', N' Số 353 Trần Hưng Đạo, Phường Bà Triệu, Nam Định', N'www.uneti.edu.vn', N'Nam Định', N'Bộ Công Thương')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DKT', N'Trường Đại học Hải Dương', N'Khu Đô thị phía Nam, Hải Dương', N'uhd.edu.vn', N'Hải Dương', N'UBND Tỉnh Hải Dương')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DLA', N'Trường Đại học Kinh tế Công nghiệp Long An', N'938 Quốc lộ 1, Phường Khánh Hậu, Thành Phố Tân An, Long An', N'www.daihoclongan.edu.vn', N'Long An', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DLH', N'Trường Đại học Lạc Hồng', N'Số 10 Huỳnh Văn Nghệ, P. Bửu Long, TP. Biên Hòa, Đồng Nai', N'lhu.edu.vn', N'Đồng Nai', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DMS', N'TRƯỜNG ĐẠI HỌC TÀI CHÍNH – MARKETING', N'Số 2/4 Trần Xuân Soạn, phường Tân Thuận Tây, quận 7, Tp.HCM', N'www.ufm.edu.vn', N'TP. Hồ Chí Minh', N'Bộ Tài chính')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DMT', N'TRƯỜNG ĐẠI HỌC TÀI NGUYÊN VÀ MÔI TRƯỜNG HÀ NỘI', N'Số 41A đường Phú Diễn, Phường Phú Diễn, Quận Bắc Từ Liêm, Hà Nội', N'www.hunre.edu.vn', N'Hà Nội', N'Bộ Tài nguyên và Môi trường')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DNC', N'Trường Đại học nam Cần Thơ', N'số 168 Nguyễn Văn Cừ (nối dài), Phường An Bình, Q. Ninh Kiều, Cần Thơ', N'www.nctu.edu.vn', N'Cần Thơ', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DNT', N'Trường Đại học Ngoại ngữ - Tin học TP.HCM', N'155 Sư Vạn Hạnh (nối dài), phường 13, quận 10, TP. Hồ Chí Minh', N'huflit.edu.vn', N'TP. Hồ Chí Minh', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DNV', N'Trường Đại học Nội vụ Hà Nội', N'36 Xuân La, phường Xuân La, quận Tâu Hồ, Hà Nội', N'truongnoivu.edu.vn', N'Hà Nội', N'Bộ Nội Vụ')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DPC', N'Trường Đại học Phan Châu Trinh', N'02 Trần Hưng Đạo, Hội An, Quảng Nam', N'www.pctu.edu.vn', N'Quảng Nam', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DPD', N'Trường Đại học Dân lập Phương Đông', N'171 Trung Kính, quận Cầu Giấy, Hà Nội', N'phuongdong.edu.vn', N'Hà Nội', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DPQ', N'Trường Đại học Phạm Văn Đồng', N'509 Phan Đình Phùng (Phường Chánh Lộ), Thành phố Quảng Ngãi, Quảng Ngãi', N'pdu.edu.vn', N'Quảng Ngãi', N'UBND Tỉnh Quảng Ngãi')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DPT', N'Trường Đại học Phan Thiết', N'225 Nguyễn Thông, Phú Hài, Phan Thiết, Bình Thuận', N'upt.edu.vn', N'Bình Thuận', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DPX', N'Trường Đại học Dân lập Phú Xuân', N'28 Nguyễn Tri Phương, Phú Hội, Thành phố Huế, Thừa Thiên Huế', N'phuxuanuni.edu.vn', N'Thừa Thiên Huế', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DPY', N'Trường Đại học Phú Yên', N'18 Trần Phú, Phường 7, Thành phố Tuy Hòa, Phú Yên', N'www.pyu.edu.vn', N'Phú Yên', N'UBND Tỉnh Phú Yên')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DQB', N'Trường Đại học Quảng Bình', N'312 Lý Thường Kiệt, Đồng Phú, Đồng Hới, Quảng Bình', N'quangbinhuni.edu.vn', N'Quảng Bình', N'UBND Tỉnh Quảng Bình')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DQH', N'Học viên Kỹ thuật Quân sự (hệ Dân sự)', N'236 Hoàng Quốc Việt, Cổ Nhuế, Bắc Từ Liêm, Hà Nội', N'mta.edu.vn', N'Hà Nội', N'Bộ Quốc Phòng')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DQK', N'Trường Đại học Kinh doanh và Công nghệ Hà Nội', N'Số 29A, Ngõ 124, Phố Vĩnh Tuy, Phường Vĩnh Tuy, Q. Hai Bà Trưng, Hà Nội', N'www.hubt.edu.vn', N'Hà Nội', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DQN', N'Trường Đại học Quy Nhơn', N'170 An Dương Vương, Nguyễn Văn Cừ, Thành phố Qui Nhơn, Bình Định', N'www.qnu.edu.vn', N'Bình Định', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DQT', N'Trường Đại học Quang Trung', N'Đường Đào Tấn, Khu vực 4-5, Phường Nhơn Phú, Thành Phố Quy Nhơn, Bình Định', N'www.qtu.edu.vn', N'Bình Định', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DQU', N'Trường Đại học Quảng Nam', N'102 Hùng Vương, thành phố Tam Kỳ, Quảng Nam', N'qnamuni.edu.vn', N'Quảng Nam', N'UBND Tỉnh Quảng Nam')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DSG', N'Trường Đại học Công nghệ Sài Gòn', N'180 Đường Cao Lỗ, Phường 4, Quận 8, TP. Hồ Chí Minh', N'www.stu.edu.vn', N'TP. Hồ Chí Minh', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DSK', N'Trường Đại học Sư phạm Kỹ thuật - Đại học Đà Nẵng', N'48 Cao Thắng, Quận Hải Châu, Đà Nẵng', N'www.ute.udn.vn', N'Đà Nẵng', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DTA', N'Trường Đại học Thành Tây', N'Phường Yên Nghĩa, Quận Hà Đông, TP. Hà Nội', N'thanhtay.edu.vn', N'TP. Hà Nội', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DTC', N'Trường Đại học Công nghệ Thông tin và Truyền thông - Đại học Thái Nguyên', N'Đường Z115, Quyết Thắng, TP Thái Nguyên', N'www.ictu.edu.vn', N'TP Thái Nguyên', N'Đại Học Thái Nguyên')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DTD', N'Trường Đại học Tây Đô', N'Số 68, Đường Trần Chiên, Khu vực Thạnh Mỹ, Phường Lê Bình, Quận Cái Răng, Cần Thơ', N'www.tdu.edu.vn', N'Cần Thơ', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DTH', N'Trường Đại học Hoa Sen', N'Số 8 Nguyễn Văn Tráng, Phường Bến Thành, Quận 1, TP. Hồ Chí Minh', N'www.hoasen.edu.vn', N'TP. Hồ Chí Minh', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DTK', N'Trường Đại học Kỹ thuật Công nghiệp - Đại học Thái Nguyên', N'Số 666 Đường 3-2, P.Tích Lương, Thái Nguyên', N'tnut.edu.vn', N'Thái Nguyên', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DTL', N'Trường Đại học Thăng Long', N'Phường Đại Kim, quận Hoàng Mai, Hà Nội', N'www.thanglong.edu.vn', N'Hà Nội', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DTM', N'Trường Đại học Tài nguyên và Môi Trường tp. Hồ Chí Minh', N'236B Lê Văn Sỹ, Phường 1, Quận Tân Bình, TP. Hồ Chí Minh', N'hcmunre.edu.vn', N'TP. Hồ Chí Minh', N'Bộ Tài Nguyên Và Môi Trường')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DTT', N'Trường Đại học Tôn Đức Thắng', N'Số 19 Nguyễn Hữu Thọ, Tân Hưng, Quận 7, TP. Hồ Chí Minh ', N'tdtu.edu.vn', N'TP. Hồ Chí Minh', N'Tổng Liên Đoàn Lao Động Việt Nam')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DTV', N'Trường Đại học Lương Thế Vinh', N'Phường Lộc Vượng, Nam Định', N'ltvu.edu.vn', N'Nam Định', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DTZ', N'TRƯỜNG ĐẠI HỌC KHOA HỌC', N'Phường Tân Thịnh - TP. Thái Nguyên - Thái Nguyên', N'http://us.tnu.edu.vn', N'Thái Nguyên', N'Đại học Thái Nguyên')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DVB', N'Trường Đại học Việt bắc', N'QL 1B, Đồng Bẩm, Thành phố Thái Nguyên, Thái Nguyên', N'vietbac.edu.vn', N'Thái Nguyên', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DVH', N'Trường Đại học Văn Hiến', N'665-667-669 Điện Biên Phủ, Phường 1, Quận 3, TP. Hồ Chí Minh', N'www.vhu.edu.vn', N'TP. Hồ Chí Minh', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DVL', N'Trường Đại học Văn Lang', N'45 Nguyễn Khắc Nhu, Phường Cô Giang, Quận 1, TP. Hồ Chí Minh', N'www.vanlanguni.edu.vn', N'TP. Hồ Chí Minh', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DVT', N'Trường Đại học Trà Vinh', N'126, Nguyễn Thiện Thành, Khóm 4, Phường 5, Trà Vinh', N'www.tvu.edu.vn', N'Trà Vinh', N'UBND Tỉnh Trà Vinh')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DVX', N'Trường Đại học Công nghệ Vạn Xuân', N'103 Nguyễn Sinh Cung, Nghi Hương, Cửa Lò, Nghệ An', N'vxut.edu.vn', N'Nghệ An', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'DYD', N'Trường Đại học Yersin Đà Lạt', N'27 Tôn Thất Tùng, Phường 8, Thành phố Đà Lạt, Lâm Đồng', N'yersin.edu.vn', N'Lâm Đồng', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'EIU', N'Trường Đại học Quốc tế miền Đông', N'Đường Nam Kỳ Khởi Nghĩa, Phường Hòa Phú, Thành phố Thủ Dầu Một, Bình Dương', N'www.eiu.edu.vn', N'Bình Dương', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'ETU', N'Trường Đại học Hòa Bình', N'Số 8 phố Bùi Xuân Phái, Mỹ Đình 2, Nam Từ Liêm, Hà Nội', N'www.daihochoabinh.edu.vn', N'Hà Nội', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'FBU', N'Trường Đại học Tài chính - Ngân hàng Hà Nội', N'136 Phạm Văn Đồng, Xuân Đỉnh, Bắc Từ Liêm, Hà Nội', N'fbu.edu.vn', N'Hà Nội', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'FPT', N'Trường Đại học Fpt', N'Khu Giáo dục và Đào tạo - Khu Công nghệ cao Hòa Lạc - Km29 Đại lộ Thăng Long, Thạch Thất, TP. Hà Nội', N'daihoc.fpt.edu.vn', N'Hà Nội', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'GHA', N'TRƯỜNG ĐẠI HỌC GIAO THÔNG VẬN TẢI – CS PHÍA BẮC', N'Số 3 Phố Cầu Giấy - Phường Láng Thượng - Quận Đống Đa - Thành phố Hà Nội', N'http://www.utc.edu.vn', N'Hà Nội', N'Bộ Giáo dục và Đào tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'GSA', N'TRƯỜNG ĐẠI HỌC GIAO THÔNG VẬN TẢI – CS PHÍA NAM', N'Số 450 Lê Văn Việt, Phường Tăng Nhơn Phú A, Quận 9, Thành phố Hồ Chí Minh', N'http://www.utc2.edu.vn', N'TP. Hồ Chí Minh', N'Bộ Giáo dục và Đào tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'GTA', N'Trường Đại học Công nghệ Giao thông Vận tải', N'54 Triều Khúc, Thanh Xuân, Tp. Hà Nội', N'utt.edu.vn', N'Hà Nội', N'Bộ Giao Thông Vận Tải')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'GTS', N'Trường Đại học Giao thông Vận tải tp. Hồ Chí Minh', N'Số 2, đường D3, Phường 25, Q. Bình Thạnh, TP. Hồ Chí Minh', N'www.ut.edu.vn', N'TP. Hồ Chí Minh', N'Bộ Giao Thông Vận Tải')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'GUST', N'Học viện Khoa học và Công nghệ', N'Số 18 đường Hoàng Quốc Việt, Cầu Giấy, Hà Nội', N'http://gust.edu.vn/vn', N'Hà Nội', N'Viện Hàn Lâm Khoa Học Và Công Nghệ Việt Nam')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'HBT', N'HỌC VIỆN BÁO CHÍ VÀ TUYÊN TRUYỀN', N'Số 36 Xuân Thủy, Cầu Giấy, Hà Nội ', N'www.ajc.edu.vn', N'Hà Nội', N'Học viện Chính trị Quốc gia Hồ Chí Minh')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'HBU', N'TRƯỜNG ĐẠI HỌC QUỐC TẾ HỒNG BÀNG', N'Số 03 Hoàng Việt, Phường 04, Quận Tân Bình, Tp.Hồ Chí Minh', N'hbu.com', N'TP. Hồ Chí Minh', N'Bộ Giáo dục và Đào tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'HDT', N'Trường Đại học Hồng Đức', N'Số 565 Quang Trung 3, Phường Đông Vệ, Thanh Hóa', N'www.hdu.edu.vn', N'Thanh Hóa', N'UBND Tỉnh Thanh Hóa')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'HHA', N'Trường Đại học Hàng hải Việt Nam', N'484 Lạch Tray, Đổng Quốc Bình, Lê Chân, Hải Phòng', N'vimaru.edu.vn', N'Hải Phòng', N'Bộ Giao Thông Vận Tải')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'HHT', N'Trường Đại học Hà Tĩnh', N'447 Đường 26/3, Phường Đại Nài, Thành phố Hà Tĩnh, Hà Tĩnh', N'htu.edu.vn', N'Hà Tĩnh', N'UBND Tỉnh Hà Tĩnh')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'HIU', N'Trường Đại học Quốc tế Hồng Bàng', N'215 Điện Biên Phủ, Phường 15, Quận Bình Thạnh, TP. HCM', N'www.hiu.vn', N'TP. Hồ Chí Minh', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'HLU', N'Trường Đại học Hạ Long', N'Số 258, Đường Bạch Đằng, P. Nam Khê, TP Uông Bí, Tỉnh Quảng Ninh', N'daihochalong.edu.vn', N'Tỉnh Quảng Ninh', N'UBND Tỉnh Quảng Ninh')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'HNM', N'Trường Đại học Thủ đô Hà Nội', N'Số 98 Dương Quảng Hàm, Quan Hoa, Cầu Giấy, Hà Nội', N'www.daihocthudo.edu.vn', N'Hà Nội', N'UBND TP. Hà Nội')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'HPN', N'HỌC VIỆN PHỤ NỮ VIỆT NAM', N'Số 68, Đường Nguyễn Chí Thanh, Q. Đống Đa, Hà Nội', N'hvpnvn.edu.vn', N'Hà Nội', N'Trung ương Hội LHPN Việt Nam')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'HTC', N'HỌC VIỆN TÀI CHÍNH', N'Số 1 Lê Văn Hiến, P. Đức Thắng, Q. Bắc Từ Liêm, TP. Hà Nội', N'www.hvtc.edu.vn', N'Hà Nội', N'Bộ Tài chính')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'HUI', N'Trường Đại học Công nghiệp tp. Hồ Chí Minh', N'Số 12 Nguyễn Văn Bảo, Phường 4, Quận Gò Vấp, Tp.Hồ Chí Minh', N'www.hui.edu.vn', N'TP. Hồ Chí Minh', N'Bộ Công Thương')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'HVN', N'Học viện Nông nghiệp Việt Nam', N'Trâu Quỳ, Gia Lâm, Hà Nội', N'www.vnua.edu.vn', N'Hà Nội', N'Bộ Nông Nghiệp Và Phát Triển Nông Thôn')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'HVQ', N'Học viện Quản lý Giáo dục', N'Số 31 phố Phan Đình Giót, phường Phương Liệt, quận Thanh Xuân, Hà Nội.', N'naem.edu.vn', N'Hà Nội', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'KCC', N'Trường Đại học Kỹ thuật - Công nghệ Cần Thơ', N'256 Nguyễn Văn Cừ, P. An Hòa, Q. Ninh Kiều, TP. Cần Thơ', N'www.ctuet.edu.vn', N'Cần Thơ', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'KCN', N'Trường Đại học Khoa học và Công nghệ Hà Nội', N'Tòa nhà A21, Số 18 Hoàng Quốc Việt, P. Nghĩa Đô, Q. Cầu Giấy, Hà Nội', N'usth.edu.vn', N'Hà Nội', N'Viện Hàn Lâm Khoa Học Và Công Nghệ Việt Nam')
GO
print 'Processed 100 total records'
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'KHA', N'Trường Đại học Kinh tế Quốc dân', N'Số 207 đường Giải Phóng, quận Hai Bà Trưng, Hà Nội', N'neu.edu.vn', N'Hà Nội', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'KMA', N'Học viện Kỹ thuật Mật mã', N'Số 141 đường Chiến Thắng, Tân Triều, Thanh Trì, Hà nội', N'actvn.edu.vn', N'Hà Nội', N'Ban Cơ Yếu Chính Phủ')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'KSA', N'Trường Đại học Kinh tế tp. Hồ Chí Minh', N'59C Nguyễn Đình Chiểu, phường 6, quận 3, TP. Hồ Chí Minh', N'www.ueh.edu.vn', N'TP. Hồ Chí Minh', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'KTA', N'Đại học Kiến trúc Hà Nội', N'Km 10 đường Nguyễn Trãi, quận Thanh Xuân, TP Hà Nội', N'www.hau.edu.vn', N'Hà Nội', N'Bộ Xây Dựng')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'KTC', N'Trường Đại học Kinh tế - Tài chính tp. Hồ Chí Minh', N'276 Điện Biên Phủ, phường 17, quận Bình Thạnh, Tp.HCM', N'uef.edu.vn', N'TP. Hồ Chí Minh', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'KTD', N'Trường Đại học Kiến trúc Đà Nẵng', N'Số 566 Núi Thành, Phường Hòa Cường Nam, Quận Hải Châu, Đà Nẵng', N'www.dau.edu.vn', N'Đà Nẵng', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'LNH', N'Trường Đại học Lâm nghiệp (Phía Bắc)', N'Thị trấn Xuân Mai, Chương Mỹ, Hà Nội', N'www.vnuf.edu.vn', N'Hà Nội', N'Bộ Nông Nghiệp Và Phát Triển Nông Thôn')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'MBS', N'Trường Đại học Mở tp. Hồ Chí Minh', N'97 Võ Văn Tần, P.6, Q.3, Tp.HCM', N'www.ou.edu.vn', N'TP. Hồ Chí Minh', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'MDA', N'Trường Đại học Mỏ - Địa chất', N'Số 18 Phố Viên, Phường Đức Thắng, Q. Bắc Từ Liêm, Hà Nội', N'humg.edu.vn', N'Hà Nội', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'MHN', N'Viện Đại học Mở Hà Nội', N'B101, đường Nguyễn Hiền, quận Hai Bà Trưng, Hà Nội', N'hou.edu.vn', N'Hà Nội', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'NHF', N'Trường Đại học Hà Nội', N'Km 9, Đường Nguyễn Trãi, Quận Thanh Xuân, Hà Nội', N'www.hanu.edu.vn', N'Hà Nội', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'NHH', N'Học viện Ngân hàng', N'Số 12 đường Chùa Bộc, phường Quang Trung, quận Đống Đa, thành phố Hà Nội', N'http://hvnh.edu.vn', N'Hà Nội', N'Ngân hàng Nhà nước Việt Nam')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'NHS', N'TRƯỜNG ĐẠI HỌC NGÂN HÀNG TP. HỒ CHÍ MINH', N'Số 36 Tôn Thất Đạm, P. Nguyễn Thái Bình, Q.1, Tp.HCM', N'www.buh.edu.vn', N'TP. Hồ Chí Minh', N'Ngân hàng Nhà nước Việt Nam')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'NLS', N'Trường Đại học Nông lâm Tp. Hồ Chí Minh', N'Khu phố 6, P. Linh Trung, Q. Thủ Đức, TP. Hồ Chí Minh', N'www.nlu.edu.vn', N'TP. Hồ Chí Minh', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'NTT', N'Trường Đại học Nguyễn Tất Thành', N'300A Nguyễn Tất Thành P13 Q4, TPHCM', N'ntt.edu.vn', N'TP. Hồ Chí Minh', N'Bộ Công Thương')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'NTU', N'TRƯỜNG ĐẠI HỌC NGUYỄN TRÃI', N'Cơ sở 1: 266 Đội Cấn, Ba Đình, Hà Nội', N'daihocnguyentrai.edu.vn', N'Hà Nội', N'Bộ Giáo dục và Đào tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'QHI', N'Trường Đại học Công nghệ - Đại học Quốc gia Hà Nội', N'Nhà E3, 144 Xuân Thủy, Cầu Giấy, Hà Nội', N'www.uet.vnu.edu.vn', N'Hà Nội', N'Đại Học Quốc Gia Hà Nội')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'QHQ', N'Khoa Quốc tế - Đại học Quốc gia Hà Nội', N'144 Xuân Thủy, Cầu Giấy, Hà Nội', N'www.is.vnu.edu.vn', N'Hà Nội', N'Đại Học Quốc Gia Hà Nội')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'QHT', N'Trường Đại học Khoa học Tự nhiên - Đại học Quốc gia Hà Nội', N'334 đường Nguyễn Trãi, Quận Thanh Xuân, Hà Nội', N'hus.vnu.edu.vn', N'Hà Nội', N'Đại Học Quốc Gia Hà Nội')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'QSC', N'Trường Đại học Công nghệ Thông tin - Đại học Quốc gia TP.HCM', N'Khu phố 6, Phường Linh Trung, Quận Thủ Đức, Thành phố Hồ Chí Minh', N'www.uit.edu.vn', N'TP. Hồ Chí Minh', N'Đại Học Quốc Gia TP. Hồ Chí Minh')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'QSK', N'Trường Đại học Kinh tế - Luật (ĐHQG TP.HCM)', N'Khu phố 3, Phường Linh Xuân, Quận Thủ Đức, Thành Phố Hồ Chí Minh', N'http://www.uel.edu.vn', N'TP. Hồ Chí Minh', N'Đại học Quốc Gia TP. HCM')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'QSQ', N'Trường Đại học Quốc tế - Đại học Quốc gia TP.HCM', N'Khu phố 6, P.Linh Trung, Q. Thủ Đức, TP.HCM', N'www.hcmiu.edu.vn', N'TP. Hồ Chí Minh', N'Đại Học Quốc Gia TP. Hồ Chí Minh')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'QST', N'Trường Đại học Khoa học Tự nhiên - Đại học Quốc gia TP.HCM', N'227 Đường Nguyễn Văn Cừ, Phường 4, Quận 5, Hồ Chí Minh', N'tuyensinh.hcmus.edu.vn', N'TP. Hồ Chí Minh', N'Đại Học Quốc Gia TP. Hồ Chí Minh')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'SDU', N'Trường Đại học Sao Đỏ', N'Số 24, Phố Thái Học 2, Phường Sao Đỏ, Thị xã Chí Linh, Hải Dương', N'saodo.edu.vn', N'Hải Dương', N'Bộ Công Thương')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'SGD', N'Trường Đại học Sài Gòn', N'273 An Dương Vương, Phường 3, Quận 5, TP. Hồ Chí Minh', N'www.sgu.edu.vn', N'TP. Hồ Chí Minh', N'UBND TP. Hồ Chí Minh')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'SKH', N'Trường Đại học Sư phạm Kỹ thuật Hưng Yên', N'Xã Dân Tiến, huyện Khoái Châu, Hưng Yên', N'tuyensinh.utehy.edu.vn', N'Hưng Yên', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'SKN', N'Trường Đại học Sư phạm Kỹ thuật Nam Định', N'Đường Phù Nghĩa, Phường Lộc H, Thành Phố Nam Định', N'www.nute.edu.vn', N'Nam Định', N'Bộ Lao Động Thương Binh Và Xã Hội')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'SKV', N'Trường Đại học Sư phạm Kỹ thuật Vinh', N'Số 117 Đường Nguyễn Viết Xuân, Phường Hưng Dũng, TP. Vinh,  Nghệ An', N'vuted.edu.vn', N'Nghệ An', N'Bộ Lao Động Thương Binh Và Xã Hội')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'SP2', N'Trường Đại học Sư phạm Hà Nội 2', N'Số 32, đường Nguyễn Văn Linh, phường Xuân Hoà, TP. Phúc Yên, Vĩnh Phúc', N'hpu2.edu.vn', N'Vĩnh Phúc', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'SPD', N'Trường Đại học Đồng Tháp', N'783, Phạm Hữu Lầu, Phường 6, Tp. Cao Lãnh, Đồng Tháp', N'www.dthu.edu.vn', N'Đồng Tháp', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'SPH', N'Trường Đại học Sư phạm Hà Nội', N'Số 136 Xuân Thủy, Dịch Vọng Hậu, Cầu Giấy, Hà Nội', N'www.hnue.edu.vn', N'Hà Nội', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'SPK', N'Trường Đại học Sư phạm Kỹ thuật tp. Hồ Chí Minh', N'1-3 Võ Văn Ngân, phường Linh Chiểu, Thủ Đức, TP. Hồ Chí Minh', N'tuyensinh.hcmute.edu.vn', N'TP. Hồ Chí Minh', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'SPS', N'Trường Đại học Sư phạm tp. Hồ Chí Minh', N'280 An Dương Vương, Phường 4, Quận 5, TP. Hồ Chí Minh', N'hcmue.edu.vn', N'TP. Hồ Chí Minh', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'TAG', N'Trường Đại học An Giang', N'Số 18 Ung Văn Khiêm, P. Đông Xuyên, TP. Long Xuyên, An Giang', N'www.agu.edu.vn.', N'An Giang', N'UBND Tỉnh An Giang')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'TBD', N'Trường Đại học Thái Bình Dương', N'Số 79 Mai Thị Dõng, Vĩnh Ngọc, Nha Trang, Khánh Hòa', N'www.pou.edu.vn', N'Khánh Hòa', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'TCT', N'Trường Đại học Cần Thơ', N'Khu II, đường 3/2, P. Xuân Khánh, Q. Ninh Kiều, Cần Thơ', N'www.ctu.edu.vn', N'Cần Thơ', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'TCU', N'Trường Đại học Thông tin liên lạc', N'Số 101, đường Mai Xuân Thưởng, phường Vĩnh Hòa, Nha Trang', N'tcu.edu.vn', N'Nha Trang', N'Bộ Quốc Phòng')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'TDD', N'Trường Đại học Thành Đô', N'Km 15 Quốc lộ 32, Kim Chung, Hoài Đức,  Hà Nội', N'thanhdo.edu.vn', N'Hà Nội', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'TDL', N'Trường Đại học Đà Lạt', N'Số 1 Phù Đổng Thiên Vương, Phường 8, Thành phố Đà Lạt, Lâm Đồng', N'www.dlu.edu.vn', N'Lâm Đồng', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'TDM', N'Trường Đại học Thủ Dầu Một', N'Số 6 Trần Văn Ơn, phường Phú Hòa, TP. Thủ Dầu Một, Bình Dương', N'tdmu.edu.vn', N'Bình Dương', N'UBND Tỉnh Bình Dương')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'TDV', N'Trường Đại học Vinh', N'Số 182, đường Lê Duẩn, thành phố Vinh, Nghệ An', N'www.vinhuni.edu.vn', N'Nghệ An', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'THP', N'Trường Đại học Hải Phòng', N'Số 171 Phan Đăng Lưu, Kiến An, Hải Phòng', N'dhhp.edu.vn', N'Hải Phòng', N'UBND TP. Hải Phòng')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'THV', N'Trường Đại học Hùng Vương', N'Phường Nông Trang, thành phố Việt Trì,  Phú Thọ', N'www.hvu.edu.vn', N'Phú Thọ', N'UBND Tỉnh Phú Thọ')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'TKG', N'Trường Đại học Kiên Giang', N'Số 320A, Quốc lộ 61, thị trấn Minh Lương, huyện Châu Thành, Kiên Giang', N'www.vnkgu.edu.vn', N'Kiên Giang', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'TLA', N'Trường Đại học Thuỷ lợi', N'Số 175 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội', N'tlu.edu.vn', N'Hà Nội', N'Bộ Nông Nghiệp Và Phát Triển Nông Thôn')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'TMA', N'TRƯỜNG ĐẠI HỌC THƯƠNG MẠI', N'80 Đường Hồ Tùng Mậu, phường Mai Dịch, quận Cầu Giấy, Tp.Hà Nội', N'www.tmu.edu.vn', N'Hà Nội', N'Bộ Giáo dục và Đào tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'TSN', N'Trường Đại học Nha Trang', N'Số 2 Nguyễn Đình Chiểu, Vĩnh Thọ, Thành phố Nha Trang, Khánh Hòa', N'ntu.edu.vn', N'Khánh Hòa', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'TTB', N'Trường Đại học Tây Bắc', N'Phường Quyết Tâm, TP Sơn La, Sơn La', N'www.utb.edu.vn', N'Sơn La', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'TTG', N'Trường Đại học Tiền Giang', N'Số 119 đường Ấp Bắc, Phường 5, Thành phố Mỹ Tho, Tiền Giang', N'www.tgu.edu.vn', N'Tiền Giang', N'UBND Tỉnh Tiền Giang')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'TTN', N'Trường Đại học Tây Nguyên', N'567 Lê Duẩn, Ea Tam, Thành phố Buôn Ma Thuột, Đắk Lắk ', N'ttn.edu.vn', N'Đắk Lắk', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'TTQ', N'Trường Đại học Tư thục Quốc tế Sài Gòn', N'8C & 16 Tống Hữu Định, Phường Thảo Điền, Quận 2, Tp.HCM', N'www.siu.edu.vn', N'Tp.HCM', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'TTU', N'Trường Đại học Tân Tạo', N'Đại lộ Đại học Tân Tạo, Tân Đức E. City, Huyện Đức Hòa,  Long An', N'ttu.edu.vn', N'Long An', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'UKB', N'Trường Đại học Kinh Bắc', N'Phố Phúc Sơn, Phường Vũ Ninh, Bắc Ninh', N'www.daihockinhbac.edu.vn', N'Bắc Ninh', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'VGU', N'Trường Đại học Việt Đức', N'Đường Lê Lai, Phường Hòa Phú, Thành phố Thủ Dầu Một,  Bình Dương', N'www.vgu.edu.vn', N'Bình Dương', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'VHD', N'Trường Đại học Công nghiệp Việt - Hung', N'Số 16, phố Hữu Nghị, phường Xuân Khanh, Sơn Tây, Hà Nội', N'viu.edu.vn', N'Hà Nội', N'Bộ Công Thương')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'VLU', N'Trường Đại học Sư phạm Kỹ thuật Vĩnh Long', N'Số 73 Nguyễn Huệ, Phường 2, Vĩnh Long', N'www.vlute.edu.vn', N'Vĩnh Long', N'Bộ Lao Động Thương Binh Và Xã Hội')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'VUI', N'Trường Đại học Công nghiệp Việt Trì', N'Số 9, đường Tiên Sơn, phường Tiên Cát, thành phố Việt Trì, Phú Thọ', N'vui.edu.vn', N'Phú Thọ', N'Bộ Công Thương')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'XDA', N'Trường Đại học Xây dựng', N'Số 55 đường Giải Phóng, Quận Hai Bà Trưng, Hà Nội', N'tuyensinh.nuce.edu.vn', N'Hà Nội', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuQuan]) VALUES (N'ZPH', N'Trường Đại học Trần Đại Nghĩa (hệ dân sự)', N'189 Nguyễn Oanh, Phường 10, Q. Gò Vấp, TP. Hồ Chí Minh', N'www.tdnu.edu.vn', N'TP. Hồ Chí Minh', N'Bộ Quốc Phòng')
/****** Object:  Table [dbo].[chuyennganhdaotao]    Script Date: 01/10/2019 23:54:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chuyennganhdaotao](
	[MaNganh] [nvarchar](30) NOT NULL,
	[TenChuyenNganh] [nvarchar](100) NULL,
 CONSTRAINT [PK_chuyennganhdaotao] PRIMARY KEY CLUSTERED 
(
	[MaNganh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7320104', N'Truyền thông đa phương tiện')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7320105', N'Truyền thông đa phương tiện')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7340122', N'Thương mại điện tử')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7340405', N'Hệ thống thông tin quản lý')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7340405CL', N'Hệ thống thông tin quản lý')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7460117', N'Toán tin')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480101', N'Khoa học máy tính')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480101_CLCA', N'Khoa học máy tính (CLC)')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480101_QT', N'Khoa học máy tính (LK với ĐH Frostburg)')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480102', N'Mạng máy tính và truyền thông dữ liệu')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480102_CLCA', N'Mạng máy tính và truyền thông dữ liệu (CLC)')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480103', N'Kỹ thuật phần mềm')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480103_01', N'Công nghệ phần mềm')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480103_CLCA', N'Kỹ thuật phần mềm (CLC)')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480103C', N'Kỹ thuật phần mềm (CLC)')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480104', N'Hệ thống thông tin')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480104_CLCA', N'Hệ thống thông tin (CLC)')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480104_TT', N'Hệ thống thông tin (tiên tiến)')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480104D', N'Hệ thống thông tin')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480104TN', N'Hệ thống thông tin')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480104VP', N'Hệ thống thông tin')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480106', N'Kỹ thuật máy tính')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480106_CLCA', N'Kỹ thuật máy tính (CLC)')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480108', N'Công nghệ kỹ thuật máy tính')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480108A', N'Công nghệ kỹ thuật máy tính (CLC tiếng Anh)')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480108C', N'Công nghệ kỹ thuật máy tính (CLC tiếng Việt)')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480108D', N'Công nghệ kỹ thuật máy tính')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480110CLC', N'Máy tính và khoa học thông tin')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480110QTD', N'Máy tính và khoa học thông tin')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480111', N'Tin học và kỹ thuật máy tính')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480201', N'Công nghệ thông tin')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480201_BT', N'Công nghệ thông tin')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480201_CLC', N'Công nghệ thông tin (CLC)')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480201_CLCN', N'Công nghệ thông tin (CLC định hướng Nhật Bản)')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480201_KHDL', N'Công nghệ thông tin (Khoa học dữ liệu)')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480201_TT', N'Công nghệ thông tin (tiên tiến)')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480201_VP', N'Công nghệ thông tin (liên kết Việt – Pháp)')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480201A', N'Công nghệ thông tin (CLC tiếng Anh)')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480201B', N'Công nghệ thông tin')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480201C', N'Công nghệ thông tin (CLC)')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480201CLC', N'Công nghệ thông tin (CLC)')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480201D', N'Công nghệ thông tin')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480201D114', N'Công nghệ thông tin')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480201D118', N'Công nghệ phần mềm')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480201D119', N'Kỹ thuật thuyền thông và mạng máy tính')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480201DT', N'Công nghệ thông tin (Đào tạo đặc thù)')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480201H', N'Công nghệ thông tin (Hòa An)')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480201H114', N'Công nghệ thông tin (CLC)')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480201NB', N'Công nghệ thông tin định hướng thị trường Nhật Bản')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480201P', N'Công nghệ thông tin (POHE)')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480202', N'An toàn thông tin')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480202_CLCA', N'An toàn thông tin (CLC)')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480203D', N'Kỹ thuật dữ liệu')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480204', N'Khoa học và Kỹ thuật máy tính')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480299', N'Công nghệ đa phương tiện')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7489001', N'Khoa học dữ liệu')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'GHA-23', N'Công nghệ thông tin')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'GSA-06', N'Công nghệ thông tin')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'IT1', N'Khoa học Máy tính')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'IT2', N'Kỹ thuật Máy tính')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'IT3', N'Công nghệ thông tin')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'IT-E6', N'Công nghệ thông tin Việt-Nhật')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'IT-E7', N'Công nghệ thông tin ICT')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'IT-GINP', N'Hệ thống thông tin - ĐH Grenoble (Pháp)')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'IT-LTU', N'Công nghệ thông tin - ĐH La Trobe (Úc)')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'IT-VUW', N'Công nghệ thông tin - ĐH Victoria (New Zealand)')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'MI1', N'Toán-Tin')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'MI2', N'Hệ thống thông tin quản lý')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'TROY-IT', N'Khoa học máy tính - ĐH Troy (Hoa Kỳ)')
/****** Object:  Table [dbo].[cosonganh]    Script Date: 01/10/2019 23:54:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cosonganh](
	[MaTruong] [nvarchar](10) NOT NULL,
	[MaNganh] [nvarchar](30) NOT NULL,
	[DiemChuan] [real] NOT NULL,
	[ChiTieu] [int] NULL,
 CONSTRAINT [id] PRIMARY KEY CLUSTERED 
(
	[MaTruong] ASC,
	[MaNganh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'BKA  ', N'IT1', 25, 200)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'BKA  ', N'IT2', 23.5, 160)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'BKA  ', N'IT3', 25.35, 160)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'BKA  ', N'IT-E6', 23.1, 200)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'BKA  ', N'IT-E7', 24, 80)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'BKA  ', N'IT-GINP', 18.8, 40)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'BKA  ', N'IT-LTU', 20.5, 70)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'BKA  ', N'IT-VUW', 19.6, 60)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'BKA  ', N'MI1', 22.3, 100)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'BKA  ', N'MI2', 21.6, 60)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'BKA  ', N'TROY-IT', 18, 40)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'BVH', N'7480201', 22, 650)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'BVH', N'7480202', 20.8, 250)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'BVS', N'7480201', 20.25, 210)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'BVS', N'7480202', 19, 80)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'BVU', N'7480201', 15.5, 150)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DAD', N'7480201', 14, 60)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DBD', N'7480201', 13.5, 90)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DBH', N'7480201', 15.5, 30)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DBL', N'7480201', 15, 60)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DCA', N'7480201', 15, 40)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DCD', N'7480201', 14, 200)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DCG', N'7480103', 13, 100)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DCL', N'7480201', 13, 80)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DCN', N'7480101', 18.75, 120)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DCN', N'7480101_QT', 16.85, 20)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DCN', N'7480102', 16.6, 70)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DCN', N'7480103', 18.95, 220)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DCN', N'7480104', 18, 120)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DCN', N'7480108', 18.3, 130)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DCN', N'7480201', 20.4, 390)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DCQ', N'7480103', 14, 35)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DCQ', N'7480201', 14, 35)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DCT', N'7480201', 16.5, 324)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DCT', N'7480202', 16, 72)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DCV', N'7480201', 13.5, 100)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DDA', N'7480201', 14, 130)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DDB', N'7480201', 15.5, 80)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DDD', N'7480201', 15.5, 80)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DDI', N'7480108', 15.5, 100)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DDI', N'7480201', 17, 80)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DDI', N'7480201DT', 16.55, 240)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DDK', N'7480201', 23, 150)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DDK', N'7480201CLC', 20.6, 45)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DDK', N'7480201DT', 20, 90)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DDL', N'7480201', 16, 40)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DDM', N'7480201', 13, 40)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DDN', N'7480201', 14.5, 100)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DDP', N'7480201', 14.3, 40)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DDQ', N'7340122', 14.5, 140)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DDQ', N'7340405', 14.5, 260)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DDS', N'7480201', 15, 290)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DDS', N'7480201CLC', 15.1, 100)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DDS', N'7480201DT', 22.25, 300)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DDT', N'7480103', 13, 500)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DDV', N'7480204', 19.3, 40)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DFA', N'7340405', 14, 114)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DHK', N'7340122', 14.5, 50)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DHK', N'7340405', 13, 60)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DHK', N'7340405CL', 13, 40)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DHP', N'7480201', 15, 150)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DHQ', N'7480201', 13.5, 50)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DHT', N'7480201', 13.5, 250)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DHV', N'7480201', 14, 100)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DKB', N'7480201', 14, 78)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DKC', N'7480201', 17, 250)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DKC', N'7480202', 16, 100)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DKD', N'7480201', 14, 30)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DKK', N'7480102', 15.5, 50)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DKK', N'7480201', 18.5, 70)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DKT', N'7480201', 13, 50)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DLA', N'7480101', 15, 118)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DLH', N'7480201', 14, 100)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DMS', N'7340405', 17.5, 200)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DMT', N'7480201', 14, 310)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DNC', N'7480201', 15.5, 160)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DNT', N'7480201', 18.25, 330)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DNV', N'7480104', 14.5, 120)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DNV', N'7480104D', 15, 80)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DPC', N'7480201', 15, 60)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DPD', N'7480201', 14, 180)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DPQ', N'7480201', 14, 120)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DPT', N'7480201', 14, 75)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DPX', N'7480201', 15.5, 40)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DPY', N'7480201', 0, 75)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DQB', N'7480103', 14, 50)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DQB', N'7480201', 14, 50)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DQH', N'7480101', 20, 50)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DQH', N'7480201', 21.7, 70)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DQK', N'7480201', 15, 600)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DQN', N'7480103', 18, 150)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DQN', N'7480201', 18, 200)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DQT', N'7480201', 13, 150)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DQU', N'7480201', 13, 200)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DSG', N'7480201', 16.5, 300)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DSK', N'7480201', 17.5, 145)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DTA', N'7480101', 13, 40)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DTC', N'7480101', 13, 50)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DTC', N'7480102', 13, 60)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DTC', N'7480103', 13, 150)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DTC', N'7480104', 13, 50)
GO
print 'Processed 100 total records'
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DTC', N'7480108', 13, 60)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DTC', N'7480201', 14, 260)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DTC', N'7480202', 13, 60)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DTD', N'7480201', 14, 100)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DTH', N'7480102', 14, 60)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DTH', N'7480201', 16.5, 200)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DTK', N'7480106', 15.5, 51)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DTL', N'7480101', 15, 120)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DTL', N'7480102', 15, 60)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DTL', N'7480104', 15, 50)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DTM', N'7480104', 15, 50)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DTM', N'7480201', 15.5, 100)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DTT', N'7480101', 19.75, 120)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DTT', N'7480102', 19.75, 80)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DTT', N'7480103', 20.75, 80)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DTV', N'7480201', 15.5, 100)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DTZ', N'7460117', 14, 25)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DVB', N'7480102', 14, 50)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DVB', N'7480201', 14, 100)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DVH', N'7480201', 14.1, 80)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DVL', N'7480103', 15.5, 130)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DVL', N'7480201', 0, 95)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DVT', N'7480102', 14, 100)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DVT', N'7480201', 14, 90)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DVX', N'7480201', 13, 60)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DYD', N'7480201', 15.5, 45)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'EIU', N'7480102', 14.5, 80)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'EIU', N'7480103', 14.5, 80)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'ETU', N'7480201', 15.5, 40)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'ETU', N'7480299', 15.5, 30)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'FBU', N'7480201', 15.5, 50)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'FPT', N'7480101', 0, 0)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'FPT', N'7480103', 0, 0)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'FPT', N'7480202', 0, 0)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'GHA', N'GHA-23', 19.65, 200)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'GSA', N'GSA-06', 17.4, 100)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'GTA', N'7480102', 15.5, 240)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'GTA', N'7480104', 16, 640)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'GTA', N'7480104TN', 16, 120)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'GTA', N'7480104VP', 16, 120)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'GTA', N'7480201', 17, 320)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'GTS', N'7480102', 17.5, 60)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'GTS', N'7480201', 19.5, 100)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'GUST', N'7480104', 0, 0)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'HBT', N'7320104', 21.7, 50)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'HBU', N'7320105', 14, 50)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'HBU', N'7480201', 14, 50)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'HDT', N'7480201', 13, 70)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'HHA', N'7480201D114', 18.5, 100)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'HHA', N'7480201D118', 17, 45)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'HHA', N'7480201D119', 15.5, 45)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'HHA', N'7480201H114', 14, 60)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'HHT', N'7480201', 13.5, 80)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'HIU', N'7480201', 14, 100)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'HLU', N'7480101', 14, 50)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'HNM', N'7480201', 23.93, 40)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'HPN', N'7320104', 17.5, 50)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'HTC', N'7340405', 19.75, 120)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'HUI', N'7480103C', 16, 120)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'HUI', N'7480108', 16, 70)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'HUI', N'7480201', 18.75, 250)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'HVN', N'7480201', 17, 105)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'HVN', N'7480201P', 17, 50)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'HVQ', N'7480201', 16, 200)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'KCC', N'7480101', 14.5, 50)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'KCC', N'7480103', 16, 70)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'KCC', N'7480104', 14.25, 70)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'KCN', N'7480201', 18, 120)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'KCN', N'7480202', 17.3, 30)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'KHA', N'7480101', 21.5, 60)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'KHA', N'7480201', 21.75, 120)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'KMA', N'7480201', 20.15, 200)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'KMA', N'7480202', 19, 420)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'KSA', N'7480103_01', 19, 50)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'KTA', N'7480201', 16, 100)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'KTC', N'7480201', 18, 120)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'KTD', N'7480201', 15.5, 150)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'LNH', N'7480104', 13, 70)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'MBS', N'7480101', 17, 150)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'MBS', N'7480201', 18.25, 100)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'MDA', N'7480201', 14, 580)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'MHN', N'7480201', 18.75, 330)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'NHF', N'7480201', 20.6, 200)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'NHH', N'7340405', 20, 200)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'NHS', N'7340405', 18.6, 150)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'NLS', N'7480201', 18.15, 210)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'NTT', N'7480201', 15.5, 250)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'NTU', N'7480201', 14, 50)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QHI', N'7480101', 22, 140)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QHI', N'7480102', 23.75, 60)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QHI', N'7480104', 23.75, 60)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QHI', N'7480106', 21, 100)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QHI', N'7480201', 23.75, 240)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QHI', N'7480201NB', 23.75, 60)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QHQ', N'7480111', 15, 40)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QHT', N'7480110CLC', 18.45, 50)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QHT', N'7480110QTD', 20.15, 70)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QSC', N'7480101', 22.4, 90)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QSC', N'7480101_CLCA', 20.25, 90)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QSC', N'7480102', 21.2, 80)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QSC', N'7480102_CLCA', 18.6, 50)
GO
print 'Processed 200 total records'
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QSC', N'7480103', 23.2, 100)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QSC', N'7480103_CLCA', 21.5, 100)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QSC', N'7480104', 21.1, 60)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QSC', N'7480104_CLCA', 19, 50)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QSC', N'7480104_TT', 17, 40)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QSC', N'7480106', 21.7, 70)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QSC', N'7480106_CLCA', 18.4, 80)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QSC', N'7480201', 22.5, 140)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QSC', N'7480201_BT', 20.5, 70)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QSC', N'7480201_CLCN', 19, 50)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QSC', N'7480201_KHDL', 20.6, 50)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QSC', N'7480202', 22.25, 70)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QSC', N'7480202_CLCA', 20.1, 50)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QSK', N'7340122', 21.2, 110)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QSK', N'7340405', 21.25, 110)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QSQ', N'7480201', 19, 120)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QSQ', N'7489001', 17, 40)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QST', N'7480201', 22.75, 550)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QST', N'7480201_CLC', 21.2, 100)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QST', N'7480201_TT', 21.4, 60)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QST', N'7480201_VP', 20.1, 40)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'SDU', N'7480201', 14, 80)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'SGD', N'7480103', 16.54, 50)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'SGD', N'7480201', 18.29, 350)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'SGD', N'7480201CLC', 16.53, 60)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'SKH', N'7480201', 15, 250)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'SKN', N'7480101', 18, 20)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'SKN', N'7480201', 18, 150)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'SKV', N'7480108', 13.5, 45)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'SKV', N'7480201', 14, 120)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'SP2', N'7480201', 20, 50)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'SPD', N'7480101', 14.2, 40)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'SPH', N'7480201A', 16.05, 90)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'SPH', N'7480201B', 16.05, 30)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'SPK', N'7480108A', 18.1, 30)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'SPK', N'7480108C', 18.9, 60)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'SPK', N'7480108D', 20.6, 60)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'SPK', N'7480201A', 20, 60)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'SPK', N'7480201C', 20.2, 150)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'SPK', N'7480201D', 21.8, 150)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'SPK', N'7480203D', 19.1, 60)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'SPS', N'7480201', 17, 200)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'TAG', N'7480103', 15, 60)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'TAG', N'7480201', 16, 150)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'TBD', N'7480201', 13, 100)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'TCT', N'7480101', 15.75, 120)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'TCT', N'7480102', 15.75, 120)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'TCT', N'7480103', 17.75, 140)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'TCT', N'7480104', 15, 100)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'TCT', N'7480106', 15.25, 120)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'TCT', N'7480201', 18.25, 240)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'TCT', N'7480201C', 15, 40)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'TCT', N'7480201H', 14, 80)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'TCU', N'7480201', 20.25, 40)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'TDD', N'7480201', 14.5, 120)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'TDL', N'7480201', 14, 200)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'TDM', N'7480103', 14, 130)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'TDM', N'7480104', 14, 130)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'TDV', N'7480201', 14, 250)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'THP', N'7480201', 14, 150)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'THV', N'7480201', 14, 55)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'TKG', N'7480201', 21, 110)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'TLA', N'7480103', 16, 70)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'TLA', N'7480104', 16, 70)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'TLA', N'7480201', 17.95, 340)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'TMA', N'7340122', 20.7, 250)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'TMA', N'7340405', 19.75, 150)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'TSN', N'7480201', 15.5, 200)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'TTB', N'7480201', 13, 100)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'TTG', N'7480104', 13, 50)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'TTG', N'7480201', 13, 80)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'TTN', N'7480201', 13, 80)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'TTQ', N'7480101', 15, 50)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'TTU', N'7480101', 0, 25)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'UKB', N'7480201', 15, 200)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'VGU', N'7480101', 20.1, 90)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'VHD', N'7480201', 14, 300)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'VLU', N'7480201', 15, 200)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'VUI', N'7480201', 13, 150)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'XDA', N'7480201', 19, 115)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'ZPH', N'7480101', 20.25, 40)
/****** Object:  ForeignKey [FK_cosonganh_chuyennganhdaotao]    Script Date: 01/10/2019 23:54:53 ******/
ALTER TABLE [dbo].[cosonganh]  WITH CHECK ADD  CONSTRAINT [FK_cosonganh_chuyennganhdaotao] FOREIGN KEY([MaNganh])
REFERENCES [dbo].[chuyennganhdaotao] ([MaNganh])
GO
ALTER TABLE [dbo].[cosonganh] CHECK CONSTRAINT [FK_cosonganh_chuyennganhdaotao]
GO
/****** Object:  ForeignKey [FK_cosonganh_cosodaotao]    Script Date: 01/10/2019 23:54:53 ******/
ALTER TABLE [dbo].[cosonganh]  WITH CHECK ADD  CONSTRAINT [FK_cosonganh_cosodaotao] FOREIGN KEY([MaTruong])
REFERENCES [dbo].[cosodaotao] ([MaTruong])
GO
ALTER TABLE [dbo].[cosonganh] CHECK CONSTRAINT [FK_cosonganh_cosodaotao]
GO
