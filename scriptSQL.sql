USE [master]
GO
/****** Object:  Database [QL_BanHangDienTu]    Script Date: 12/02/2019 20:08:22 ******/
CREATE DATABASE [QL_BanHangDienTu]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QL_BanHangDienTu', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SANGPLS\MSSQL\DATA\QL_BanHangDienTu.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QL_BanHangDienTu_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SANGPLS\MSSQL\DATA\QL_BanHangDienTu_log.ldf' , SIZE = 1792KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QL_BanHangDienTu] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QL_BanHangDienTu].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QL_BanHangDienTu] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QL_BanHangDienTu] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QL_BanHangDienTu] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QL_BanHangDienTu] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QL_BanHangDienTu] SET ARITHABORT OFF 
GO
ALTER DATABASE [QL_BanHangDienTu] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QL_BanHangDienTu] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QL_BanHangDienTu] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QL_BanHangDienTu] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QL_BanHangDienTu] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QL_BanHangDienTu] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QL_BanHangDienTu] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QL_BanHangDienTu] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QL_BanHangDienTu] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QL_BanHangDienTu] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QL_BanHangDienTu] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QL_BanHangDienTu] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QL_BanHangDienTu] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QL_BanHangDienTu] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QL_BanHangDienTu] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QL_BanHangDienTu] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QL_BanHangDienTu] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QL_BanHangDienTu] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QL_BanHangDienTu] SET  MULTI_USER 
GO
ALTER DATABASE [QL_BanHangDienTu] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QL_BanHangDienTu] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QL_BanHangDienTu] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QL_BanHangDienTu] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [QL_BanHangDienTu]
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 12/02/2019 20:08:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[MaDH] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [decimal](18, 0) NULL,
 CONSTRAINT [PK_ChiTietDonHang] PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChuDe]    Script Date: 12/02/2019 20:08:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuDe](
	[MaCD] [int] IDENTITY(1,1) NOT NULL,
	[TenCD] [nvarchar](50) NULL,
 CONSTRAINT [PK_ChuDe] PRIMARY KEY CLUSTERED 
(
	[MaCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 12/02/2019 20:08:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDH] [int] IDENTITY(1,1) NOT NULL,
	[NgayDat] [datetime] NULL,
	[NgayGiao] [datetime] NULL,
	[TinhTrangGiaoHang] [bit] NULL,
	[DaThanhToan] [bit] NULL,
	[MaKH] [int] NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 12/02/2019 20:08:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](100) NULL,
	[NgaySinh] [datetime] NULL,
	[GioiTinh] [nvarchar](5) NULL,
	[DienThoai] [varchar](50) NULL,
	[TaiKhoan] [varchar](50) NULL,
	[MatKhau] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Loai]    Script Date: 12/02/2019 20:08:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loai](
	[MaLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
 CONSTRAINT [PK_Loai] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 12/02/2019 20:08:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNSX] [int] IDENTITY(1,1) NOT NULL,
	[TenNSX] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhaSanXuat] PRIMARY KEY CLUSTERED 
(
	[MaNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 12/02/2019 20:08:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](100) NULL,
	[GiaBan] [decimal](18, 0) NULL,
	[MoTa] [nvarchar](max) NULL,
	[NgayCapNhat] [datetime] NULL,
	[AnhBia] [nvarchar](max) NULL,
	[AnhMoTa1] [nvarchar](max) NULL,
	[AnhMoTa2] [nvarchar](max) NULL,
	[SoLuongTon] [int] NULL,
	[MaCD] [int] NULL,
	[MaNSX] [int] NULL,
	[MaLoai] [int] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [DonGia]) VALUES (1, 3, 1, CAST(19899000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[ChuDe] ON 

INSERT [dbo].[ChuDe] ([MaCD], [TenCD]) VALUES (1, N'Điện Thoại - Máy Tính Bảng')
INSERT [dbo].[ChuDe] ([MaCD], [TenCD]) VALUES (2, N'Điện Tử - Kỹ Thuật Số')
INSERT [dbo].[ChuDe] ([MaCD], [TenCD]) VALUES (3, N'Máy Tính - Phụ Kiện')
INSERT [dbo].[ChuDe] ([MaCD], [TenCD]) VALUES (4, N'Điện Máy - Điện Lạnh')
INSERT [dbo].[ChuDe] ([MaCD], [TenCD]) VALUES (5, N'Thiết Bị Nhà Bếp')
INSERT [dbo].[ChuDe] ([MaCD], [TenCD]) VALUES (6, N'Thiết Bị An Ninh')
SET IDENTITY_INSERT [dbo].[ChuDe] OFF
SET IDENTITY_INSERT [dbo].[DonHang] ON 

INSERT [dbo].[DonHang] ([MaDH], [NgayDat], [NgayGiao], [TinhTrangGiaoHang], [DaThanhToan], [MaKH]) VALUES (1, CAST(N'2019-12-02T19:09:42.180' AS DateTime), NULL, 0, 0, 1)
SET IDENTITY_INSERT [dbo].[DonHang] OFF
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [NgaySinh], [GioiTinh], [DienThoai], [TaiKhoan], [MatKhau], [Email], [DiaChi]) VALUES (1, N'Trần Trung Hiếu', CAST(N'1999-12-20T00:00:00.000' AS DateTime), N'Nam', N'0335086497', N'lucfan99', N'lucfan1999', N'tranxuanluc9@gmail.com', N'13 Nguyễn Hữu Dật ,P.Tây Thạnh, Q.Tân Phú, TP.HCM')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [NgaySinh], [GioiTinh], [DienThoai], [TaiKhoan], [MatKhau], [Email], [DiaChi]) VALUES (2, N'sang', NULL, NULL, NULL, N'sang123', N'123', NULL, NULL)
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
SET IDENTITY_INSERT [dbo].[Loai] ON 

INSERT [dbo].[Loai] ([MaLoai], [TenLoai]) VALUES (1, N'Điện Thoại')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai]) VALUES (2, N'Máy Tính Bảng')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai]) VALUES (3, N'Laptop')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai]) VALUES (4, N'Tai Nghe')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai]) VALUES (5, N'Tivi')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai]) VALUES (6, N'Đồ Dùng Nhà Bếp')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai]) VALUES (7, N'Tủ Lạnh')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai]) VALUES (8, N'Máy Giặt')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai]) VALUES (9, N'Điều Hòa')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai]) VALUES (10, N'Khác')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai]) VALUES (11, N'Camera')
SET IDENTITY_INSERT [dbo].[Loai] OFF
SET IDENTITY_INSERT [dbo].[NhaSanXuat] ON 

INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX]) VALUES (1, N'SamSung')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX]) VALUES (2, N'Apple')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX]) VALUES (3, N'OPPO')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX]) VALUES (4, N'SONY')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX]) VALUES (5, N'LG')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX]) VALUES (6, N'Philips')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX]) VALUES (7, N'DELL')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX]) VALUES (8, N'ASUS')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX]) VALUES (9, N'Logitech')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX]) VALUES (10, N'Sharp')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX]) VALUES (11, N'Hitachi')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX]) VALUES (12, N'Dahua')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX]) VALUES (13, N'Elitek')
SET IDENTITY_INSERT [dbo].[NhaSanXuat] OFF
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (1, N'SamSung Galaxy A50 Xanh Dương', CAST(6990000 AS Decimal(18, 0)), N'Samsung Galaxy A50 với 3 phiên bản màu độc đáo đầy tinh tế, thể hiện bản sắc riêng giúp bạn nổi bật chiếm trọn ánh nhìn. Sản phẩm có thiết kế nguyên khối, mặt kính cong 2.5D bo góc tạo cảm giác chắc tay khi cầm. Viền màn hình được thu hẹp đến mức tối đa để hình ảnh như nổi lên trước mắt đầy sống động qua chất lượng của màn hình Super AMOLED cao cấp.', CAST(N'2019-10-15T00:00:00.000' AS DateTime), N'samsungA50XanhDuong1.jpg', N'samsungA50XanhDuong.jpg', N'samsungA50Den.jpg', 50, 1, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (2, N'Apple iPhone Xs Max 64GB Xám đen ', CAST(23076000 AS Decimal(18, 0)), N'Màn hình Super Retina ấn tượng,Lớp vỏ được gia công từ vật liệu đặc biệt,Con chip thông minh Apple A12 Bionic,Face ID nhanh hơn,Hệ thống camera kép 12MP đột phá', CAST(N'2019-10-15T00:00:00.000' AS DateTime), N'iPhoneXSXSMaxXamDen.jpg', N'iPhoneXSXSMaxHong.jpg', N'iPhoneXSXSMaxBac.jpg', 35, 1, 2, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (3, N'Samsung Galaxy Note10 256GB Hồng ', CAST(19899000 AS Decimal(18, 0)), N'Cá tính và khác biệt, nơi đẳng cấp được thể hiện
Note10 và Note10+ bản Aura Glow đặt cạnh nhau

Note10 và Note10+ bản Aura Glow đặt cạnh nhau

Galaxy Note 10/Galaxy Note 10+ có một thiết kế hoàn toàn mới, không giống bất cứ điện thoại nào trước đây. Máy sở hữu kiểu dáng vuông vắn hiện đại, chắc chắn từ phần khung thép không rỉ kết hợp với thủy tinh cao cấp và độ mỏng ấn tượng chỉ 7.9mm. Sự liền lạc, kết nối hoàn hảo mang đến những tinh hoa thẩm mỹ nhất trên chiếc Note 10/Note 10+.

Màn hình vô cực thế hệ mới chuẩn điện ảnh Infinity-O
Màn hình Note10+ là 6.8" còn Note10 là 6.3"

Chi tiết màn hình của Note10+ và Note10

Một màn hình không viền, cực lớn và hiển thị tuyệt đẹp sẽ xuất hiện trước mắt bạn. Hơn thế nữa, giờ đây bạn đã có thể chọn chiếc Galaxy Note kích cỡ phù hợp với mình. Samsung Galaxy Note 10 với 6.3 inch và Samsung Note 10+ với 6.8 inch cho trải nghiệm hình ảnh mãn nhãn. Mọi thứ đều hiển thị sống động dưới chất lượng của tấm nền Dynamic AMOLED cao cấp.

Bút S-Pen "thần thánh" lột xác hoàn toàn
Chiếc bút ma thuật S-Pen mới của Samsung

Các tính năng làm nên sự thần kì của chiếc bút S-Pen mới

Linh hồn của dòng Galaxy Note, bút cảm ứng S-Pen giờ đây đã có sự lột xác về thiết kế. Cây bút của bạn sẽ đẹp và sang trọng hơn bằng kiểu thiết kế nguyên khối. Bên cạnh ghi chú, nhanh chóng chuyển chữ viết tay sang văn bản, bạn còn có thể dùng S-Pen để điều khiển Note 10/Note 10+ từ xa một cách ấn tượng và rất nhiều tính năng thú vị đang chờ đợi bạn khám phá.

Máy quay video chuyên nghiệp Không dừng lại ở một chiếc điện thoại chụp ảnh đẳng cấp, Samsung Note 10/Note 10+ còn hướng tới một máy quay video chuyên nghiệp. Lần đầu tiên bạn sẽ có khả năng quay video xóa phông với những hiệu ứng chuyên nghiệp; quay video siêu chống rung; dựng phim như một studio hoàn chỉnh. Hãy cùng ghi lại những khoảnh khắc độc đáo theo cách của riêng Note 10.', CAST(N'2019-10-15T00:00:00.000' AS DateTime), N'samsungGalaxyNote10Hong.jpg', N'samsungGalaxyNote10Hong1.jpg', N'samsungGalaxyNote10Hong2.jpg', 35, 1, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (4, N'Oppo A1K 2GB/32GB Đen ', CAST(3190000 AS Decimal(18, 0)), N'OPPO A1K là một chiếc smartphone giá rẻ mà vẫn tập trung vào những lợi thế của OPPO như camera selfie, pin khủng hay thiết kế thời trang phù hợp cho giới trẻ.

Thiết kế thời trang
Điện thoại Oppo A1K sở hữu thiết kế thời trang với màu sắc kết hợp nổi bật, đáp ứng sở thích và thị yếu người dùng từ trẻ tuổi đến các đối tượng trung và cao tuổi. Bốn cạnh máy bo mềm nhẹ cho cảm giác thanh thoát. Oppo A1K sẽ được tăng trải nghiệm lên rất nhiều khi các cạnh viền của máy khá mỏng khiến màn hình như tràn ra xung quanh. Thiết bị sử dụng mặt kính cường lực Gorilla Glass 3 giúp bảo vệ máy khỏi va đập trong quá trình sử dụng hàng ngày.

Oppo A1K Thiết kế thời trang
Thiết kế thời trang


Màn hình giọt nước 6.1 inch
Mặt trước máy là màn hình giọt nước có kích thước 6.1 inch, độ phân giải hiển thị 720 x 1560 pixels, tỉ lệ 19.5:9 đem đến trải nghiệm nội dung tuyệt vời. So với thiết kế màn hình kiểu cũ thì với màn hình giọt nước này, bạn sẽ có được nhiều nội dung hiển thị hơn, đặc biệt thích hợp cho những người hay xem video trực tuyến, chơi game mobile online,....

Màn hình giọt nước 6.1 inch
Màn hình giọt nước 6.1 inch


Thời lượng pin tuyệt vời
Oppo A1K tích hợp viên pin dung lượng cao 4000mAh. Với dung lượng pin này, bạn có thể thoải mái sử dụng cả ngày như: Nghe, gọi, nhắn tin, truy cập internet, chơi game online, chụp ảnh,... Điện thoại có thể sử dụng liên tục 17 giờ mà không cần phải sạc. ', CAST(N'2019-10-13T00:00:00.000' AS DateTime), N'OppoA1KDen.jpg', N'OppoA1KDen1.jpg', N'OppoA1KDen2.jpg', 35, 1, 3, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (5, N'Samsung Galaxy Tab A 2019 10.1 inches LTE Vàng ', CAST(7490000 AS Decimal(18, 0)), N'Bên cạnh Galaxy Tab S5e, Samsung cũng giới thiệu một máy tính bảng Android khác là Galaxy Tab A 10.1 (2019). Đây là sản phẩm hướng tới những người tiêu dùng phổ thông với giá bán rất phải chăng. Máy có cả 2 phiên bản là Wifi và LTE. Phiên bản trong bài viết sử dụng là LTE.

Về thiết kế
Galaxy Tab A 10.1 (2019) được làm từ nhôm, không phải là nhựa. Đó là một sự nâng cấp rất lớn nếu so sánh với các thế hệ máy tính bảng cũ của công ty trong dòng sản phẩm này. Chỉ có một phần rất nhỏ ở trên Galaxy Tab A 10.1 (2019) được làm từ nhựa để trở thành cột ăng ten bắt sóng.

Samsung Galaxy Tab A 10.1 (2019) Mặt lưng làm từ nhôm, chỉ có cột angten bắt sóng là từ nhựa
Mặt lưng làm từ nhôm, chỉ có cột angten bắt sóng là từ nhựa

Tuy nhiên, nếu bạn đang tìm kiếm một chiếc máy tính bảng với màn hình AMOLED và chất lượng hiển thị hàng đầu thì không nên chọn Galaxy Tab A 10.1 (2019). Vì định hướng thấp và giá cả phải chăng nên máy tính bảng được Samsung trang bị cho màn hình TFT với độ phân giải 1900 x 1200 pixels. Điều tích cực về màn hình này là chế độ ngoài trời.

Samsung Galaxy Tab A 10.1 (2019) Màn hình TFT với độ phân giải 1900 x 1200 pixels
Màn hình TFT với độ phân giải 1900 x 1200 pixels

Chế độ 15 phút này cho phép màn hình hiển thị rõ ràng với độ sáng tăng mạnh ở dưới ánh sáng mặt trời trực tiếp. Theo Samsung chia sẻ màn hình trên Galaxy Tab A 10.1 (2019) sẽ có độ sáng đạt khoảng 400 nits.

Về phần mềm
Samsung đã sử dụng giao diện OneUI mới cho Galaxy Tab A 10.1 (2019). Đây là phiên bản được điều chỉnh riêng cho máy tính bảng, khác một chút so với OneUI trên Galaxy Note9 hoặc S-series. Phiên bản phần mềm này sẽ hỗ trợ người dùng sử dụng màn hình lớn hơn một cách hiệu quả. Điểm nổi bật phần mềm của OneUI mới dành cho máy tính bảng không phải là giao diện mới, mà là tính năng Smart Things - biến thiết bị thành một trung tâm điều khiển nhà thông minh.

Samsung Galaxy Tab A 10.1 (2019) Chip Exynos 7904 kết hợp với giao diện OneUI tối ưu cho tablet
Chip Exynos 7904 kết hợp với giao diện OneUI tối ưu cho tablet

Bên trong Galaxy Tab A mới, Samsung đã một lần sử dụng sản phẩm chip "cây nhà lá vườn" là Exynos 7904 với 8 nhân. Exynos 7904 mới hứa hẹn hiệu năng tốt hơn so với Snapdragon 450 có thể được tìm thấy trong phiên bản tiền nhiệm. Thay vì tám lõi ARM Cortex 53 như trên SD450 của Qualcomm, Exynos7904 hiện có hai lõi Cortex A73 cho các ứng dụng cần hiệu năng mạnh và sáu lõi Cortex A53 để sử dụng hàng ngày. Đi kèm CPU Exynos, Galaxy Tab A 10.1 (2019) được trang bị 2GB RAM và 32GB dung lượng lưu trữ. Nếu cần thêm bộ nhớ, bạn có thể mở rộng qua thẻ nhớ microSD, tối đa 512GB.

Về âm thanh
Hai loa được tích hợp vào phần dưới của khung, cung cấp âm thanh tốt trên Galaxy Tab A 10.1 (2019). Sản phẩm cũng được tích hợp công nghệ âm thanh vòm Dolby Atoms, hứa hẹn mang tới trải nghiệm tốt hơn người tiền nhiệm khá nhiều. Máy tính bảng vẫn sẽ có jack cắm tai nghe 3.5mm ở trên cạnh trên.

Galaxy Tab A 10.1 2019 tích hợp công nghệ âm thanh vòm Dolby Atoms
Galaxy Tab A 10.1 2019 tích hợp công nghệ âm thanh vòm Dolby Atoms

Về camera và pin
Để dành cho các cuộc trò chuyện video, Galaxy Tab A 10.1 (2019) đi kèm với camera 5MP ở mặt trước và camera 8MP ở mặt sau. Với camera trước, bạn có thể thoải mái video call trực tuyến với bạn bè, người thân thông qua các ứng dụng chat video dễ dàng.

Samsung Galaxy Tab A 10.1 (2019) Camera sau độ phân giải 8MP
Camera sau độ phân giải 8MP

Và cuối cùng để đảm bảo rằng máy tính bảng cũng có thời gian sử dụng tốt, Samsung tích hợp viên pin dung lượng 6150mAh cho Galaxy Tab A 10.1 (2019). Máy có thể được sạc qua cổng USB-C mới, nhưng đáng tiếc là không hỗ trợ sạc nhanh.', CAST(N'2019-10-10T00:00:00.000' AS DateTime), N'SSGalaxyTabALTEVang.jpg', N'SSGalaxyTabALTEVang1.jpg', N'SSGalaxyTabALTEVang2.jpg', 100, 1, 1, 2)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (6, N'Apple iPad 9.7 2018 WiFi 4G 128GB Vàng', CAST(13490000 AS Decimal(18, 0)), N'Apple đang ngày càng đưa iPad đến gần hơn với người dùng khi cung cấp những chiếc máy tính bảng có giá bán thấp hơn trước kia khá nhiều nhưng vẫn sở hữu thông số phần cứng tốt. Nếu bạn đang sử dụng hoặc muốn tìm mua iPad 9.7 inch thì bạn sẽ không thể bỏ qua phiên bản Apple iPad 9.7 2018 này vì sản phẩm là sự kết hợp hoàn hảo của hiệu năng và giá cả.

Thiết kế toát lên vẻ đẹp sang trọng
Apple iPad 9.7 2018 sở hữu thiết kế đặc trưng của dòng iPad: thân kim loại được hoàn thiện tỉ mỉ cho cảm giác cầm chắc chắn và sang trọng. Những thiết bị của Apple luôn thể hiện rằng chúng được chăm chút kỹ lưỡng ở từng chi tiết khi gia công và iPad 9.7 2018 cũng không phải là một ngoại lệ.

Apple iPad 9.7 2018 so với model 2017

Nếu nhìn thoáng qua, có lẽ sẽ rất khó phân biệt 2 chiếc iPad 9.7 của năm 2017 và 2018 vì chúng trông rất giống nhau. Phiên bản 2018 vẫn sử dụng chất liệu nhôm nguyên khối, được hoàn thiện tỉ mỉ cho cảm giác cầm chắc chắn và sang trọng cũng như tích hợp cảm biến vân tay vào nút home ở mặt trước. Tuy nhiên, các đường viền khá lớn ở 2 cạnh trên dưới dường như đã trở nên lỗi thời.

Apple iPad 9.7 2018 thiết kế không khác quá nhiều so với 2017

So sánh với đời cũ 2017 thì không quá khác biệt về thiết kế

Màn hình hiển thị hình ảnh sắc nét
Apple iPad 9.7 2018 được trang bị màn hình kích thước 9.7 inch, độ phân giải 1536 x 2048 pixels cho chất lượng hiển thị tốt. Hình ảnh được thể hiện rõ nét với màu sắc trung thực, đem lại sự hài lòng khi thực hiện các thao tác giải trí cần chú trọng việc theo dõi nội dung.

Apple iPad 9.7 2018 màn hình 9.7"

Màn hình sắc nét nhưng chưa được trang bị TrueTone

Màn hình này không được trang bị công nghệ điều chỉnh tông màu TrueTone và cũng không có gam màu rộng. Bên cạnh đó, phần màn hình không dán chặt vào tấm kính như những chiếc iPad cao cấp. Điều đó không quá tệ, khi chất lượng hiển thị vẫn khá ấn tượng, đáp ứng tốt nhu cầu giải trí đa phương tiện, nhưng nếu bạn sử dụng bút Apple Pencil, khoảng trống giữa màn hình và kính sẽ khiến độ phản hồi tức thời của chữ viết giảm đi một chút (dù không thật sự đáng kể).

Apple iPad 9.7 2018 sắc nét

Có thể sử dụng được Apple Pencil

Hiệu năng mạnh mẽ
Apple iPad 9.7 2018 chip A10 mạnh mẽ

Apple iPad 9.7 2018 tích hợp vi xử lý Apple A10 sử dụng trên iPhone 7/ 7 Plus, do đó hiệu suất được cải thiện đáng kể. Nếu không kể đến iPad Pro và bộ ba iPhone 8/ 8 Plus/ X, hiệu năng của nó nhỉnh hơn tất cả những mẫu iPhone và iPad còn lại khi kiểm tra bằng phần mềm benchmark.

Phần mềm mang lại nhiều tiện ích
Apple iPad 9.7 2018 hỗ trợ AR giúp người dùng tương tác mượt mà với thực tế tăng cường - công nghệ được dự báo sẽ trở thành xu thế quan trọng trong tương lai.

Apple iPad 9.7 2018 hỗ trợ AR

Ngoài ra, thiết bị còn tương thích với bút Apple Pencil (tất nhiên bút không kèm theo máy và bạn phải mua riêng với giá khoảng hơn 2 triệu đồng), hỗ trợ tốt cho những ai làm công việc thiết kế sáng tạo. Trong khi đó, nút home kiêm cảm biến vân tay có khả năng mở khóa cực nhanh và thanh toán giao dịch trên App Store mà không cần nhập mật khẩu Apple ID.

Apple iPad 9.7 2018 hỗ trợ bút Apple Pencil

Bộ sưu tập ứng dụng iWork, bao gồm Pages cũng như ứng dụng Notes tích hợp sẵn trên thiết bị đã được Apple hỗ trợ bút Pencil. Những chú thích nhanh cho file PDF và ảnh sẽ được thực hiện dễ dàng với độ phản hồi tốt. Một lưu ý quan trọng: Nếu bạn là người làm việc chuyên nghiệp, hãy cân nhắc nâng cấp lên iPad Pro vì chúng có độ nhạy với bút Apple Pencil cao hơn.

Thời lượng pin rất ấn tượng
Apple iPad 9.7 2018 thời lượng pin 10 tiếng

Apple iPad 9.7 2018 cho thời lượng pin 10 tiếng tương tự những thế hệ trước, con số đủ để người dùng thoải mái học tập, làm việc và giải trí trong vòng một ngày.', CAST(N'2019-10-10T00:00:00.000' AS DateTime), N'AppleiPad4GVang.jpg', N'AppleiPad4GVang1.jpg', N'AppleiPad4GVang2.jpg', 100, 1, 2, 2)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (7, N'Apple iPhone XR 64GB Vàng ', CAST(15589000 AS Decimal(18, 0)), N'Thiết kế sang trọng và cá tính
Sự kết hợp giữa mặt lưng kính và bộ khung kim loại giúp cho Apple iPhone XR trở nên lung linh trong mắt người dùng, các góc được bo tròn cho người dùng dễ dàng cầm nắm sử dụng. Nút home truyền thống cũng đã được loại bỏ hoàn toàn giống với iPhone X. Đặc biệt, máy có đến 6 lựa chọn màu sắc khác nhau tương tự như iPhone 5C, đủ để đáp ứng mọi nhu cầu của người dùng.

Bộ sưu tập 6 màu sắc của iPhone XR
Bộ sưu tập 6 màu sắc của iPhone XR

Màn hình tràn viền, hiển thị đẹp
Apple iPhone XR sử dụng màn hình kích thước 6.1 inch, độ phân giải 1792 x 828 pixel cùng tấm nền Liquid Retina LCD thay vì OLED như trên iPhone Xs max, mang lại khả năng tái tạo hình ảnh, độ sáng, tăng độ tương phản chiều sâu cực cao trên chiếc màn hình này. Bên cạnh đó, với tính năng True-tone giúp màn hình tự động điều chỉnh dựa trên ánh sáng từ môi trường xung quanh đảm bảo sự hài hòa về màu sắc.

iPhone XR chỉ sử dụng màn hình Liquid Retina LCD
iPhone XR chỉ sử dụng màn hình Liquid Retina LCD

Hiệu năng mạnh mẽ
Apple iPhone XR được trang bị con chip xử lý A12 Bionic với khả năng xử lý mạnh mẽ hơn 15% so với người tiền nhiệm. Đồng thời, con chíp A12 này cũng có khả năng tiết kiệm điện năng và tăng cường thực tế ảo AR. Do đó, các tác vụ sử dụng hằng ngày hoạt động vô cùng nhanh chóng và mượt mà. Bên cạnh đó, RAM 3GB và bộ nhớ trong 64 GB cho khả năng đa nhiệm và lưu trữ là rất tốt.

Camera đơn, sắc nét
Đến nay, một chiếc máy cao cấp lại sở hữu chỉ một camera sau là không thể chấp nhận. Tuy nhiên, với camera 12 MP tích hợp công nghệ chống rung quang học tính năng tự động lấy nét theo pha, hỗ trợ 4 đèn flash LED 2 tông màu và đặc biệt là khả năng chụp xóa phông ảo diệu khiến nhiều người phải thay đổi về cách nhìn của chiếc camera này. Camera trước của máy sở hữu độ phân giải 7MP cùng với khả năng quay video Full HD mang lại những bức ảnh selfie vô cùng ảo diệu.

Không được trang bị camera kép như Xs Max nhưng ảnh trên XR cũng rất sắc nét
Không được trang bị camera kép như Xs Max nhưng ảnh trên XR cũng rất sắc nét

Sở hữu nhiều tính năng hữu ích
Apple iPhone XR được trang bị tính năng Animoji sử dụng công nghệ quét khuôn mặt để tạo ra một phiên bản emoji 3D dựa trên chính những biểu cảm của người dùng. Đồng thời, công nghệ chống nước IP67 giúp máy dễ dàng “sống sót” khi người dùng vô tình làm rơi xuống nước hoặc bị mắc mưa bất ngờ.

Apple iPhone XR có Tính năng Animoji độc đáo
Tính năng Animoji độc đáo

 

Thời lượng pin ấn tượng
Apple iPhone XR được trang bị viên pin có dung lượng 2700 mAh, kết hợp cùng vi xử lý thế hệ mới tiết kiệm điện năng mang lại thời lượng sử dụng tốt, đáp ứng nhu cầu lướt web, xem phim, check mail hay chơi game trọn vẹn một ngày. Ngoài ra, thao tác sạc pin sẽ được thực hiện nhanh chóng hơn với công nghệ sạc nhanh và sạc không dây mà Apple đã trang bị cho máy', CAST(N'2019-10-11T00:00:00.000' AS DateTime), N'AppleiPhoneXRVang.jpg', N'AppleiPhoneXRVang1.jpg', N'AppleiPhoneXRVang2.jpg', 50, 1, 2, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (8, N'Oppo A5s 3GB/32GB Đen', CAST(3690000 AS Decimal(18, 0)), N'Thiết kế thời trang
Điện thoại Oppo A5s sở hữu thiết kế thời trang với màu sắc kết hợp nổi bật, đáp ứng sở thích và thị yếu người dùng từ trẻ tuổi đến các đối tượng trung và cao tuổi. Bốn cạnh máy bo mềm nhẹ cho cảm giác thanh thoát. Oppo A5s sẽ được tăng trải nghiệm lên rất nhiều khi các cạnh viền của máy khá mỏng khiến màn hình như tràn ra xung quanh. Thiết bị sử dụng mặt kính cường lực Gorilla Glass 3 giúp bảo vệ máy khỏi va đập trong quá trình sử dụng hàng ngày.

Oppo A5s Thiết kế thời trang
Thiết kế thời trang


Màn hình giọt nước 6.2 inch
Mặt trước máy là màn hình giọt nước có kích thước 6.2 inch, độ phân giải hiển thị 720 x 1520 pixels, tỉ lệ 19:9 đem đến trải nghiệm nội dung tuyệt vời. So với thiết kế màn hình kiểu cũ thì với màn hình giọt nước này, bạn sẽ có được nhiều nội dung hiển thị hơn, đặc biệt thích hợp cho những người hay xem video trực tuyến, chơi game mobile online,....

Oppo A5s trang bị Màn hình giọt nước 6.2 inch
Màn hình giọt nước 6.2 inch


Thoải mái quay phim, chụp ảnh
A5s được Oppo trang bị 3 camera với camera trước 8MP f/2.0, cụm 2 camera sau 13+2MP. Camera chính của máy hỗ trợ tính năng tự động lấy nét, đèn LED flash trợ sáng chụp ảnh HDR, panorama và quay video Full HD 1080p@30fps. Camera trước của máy với độ phân giải 8MP, bạn có thể chụp ảnh HDR cho bức hình selfie sống động hơn, hoặc video call hình ảnh trò chuyện trực tuyến dễ dàng.

Oppo A5s có Camera sau 13+2MP
Camera sau 13+2MP


AI Beautification 2.0
Camera trước của máy với độ phân giải 8MP, bạn có thể chụp ảnh HDR cho bức hình selfie sống động hơn, hoặc video call hình ảnh trò chuyện trực tuyến dễ dàng. Thêm vào đó, nhà sản xuất Trung Quốc đã dựa trên công nghệ AI tiên tiến để tích hợp tính năng AI Beautification 2.0 cho camera này. Nhờ đó mà mọi thứ điều chỉnh trên khuôn mặt sẽ được điện thoại tính toán để đưa ra kết quả tối ưu để đem lại một bức hình đẹp. Việc của bạn rất đơn giản là chỉ cần giơ camera lên, tự tin tạo dáng và chia sẻ bức hình tự sướng lung linh với bạn bè.

Oppo A5s AI Beautification 2.0 ở camera trước
AI Beautification 2.0


Chipset Mediatek MT6765 Helio P35
A5s là phiên bản nâng cấp hiệu năng của A5 với chip Helio P35 thay cho chip Snapdragon 450. Về cơ bản cả hai con chip xử lý này đều có 8 lõi Cortex-A53, tuy nhiên Helio P35 có tốc độ xung nhịp cao hơn Snapdragon 450. Chip đồ họa GPU tích hợp cũng khác nhau, của Helio P35 là PowerVR GE8320 và của Snapdragon 450 là Adreno 506 với hiệu năng gần tương đương. Cấu hình này cho phép người dùng xử lý tốt các công việc hàng ngày như nghe - gọi, nhắn tin, giải trí lướt web, truy cập mạng xã hội, chụp ảnh, quay video,... 

Oppo A5s sử dụng Chipset Mediatek MT6765 Helio P35
Chipset Mediatek MT6765 Helio P35


Mở khóa vân tay
Oppo A5s trang bị cảm biến vân tay điện dung ở mặt lưng máy, giúp người dùng thuận tiện thao tác mở máy chỉ với một chạm đơn giản. Với chức năng mở khóa vân tay, giờ đây bạn không còn phải lo nhớ quên mật khẩu truy cập hay mã pin, chỉ cần dấu vân tay của bạn là có thể mở khóa thiết bị nhanh chóng. Ngoài ra, công nghệ vân tay cũng giúp người dùng đảm bảo dữ liệu trên Oppo A5s được an toàn hơn.

', CAST(N'2019-10-10T00:00:00.000' AS DateTime), N'OppoA5sDen.jpg', N'OppoA5sDen1.jpg', N'OppoA5sDen2.jpg', 60, 1, 3, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (9, N'Oppo Reno 2 8GB/256GB Đen lân tinh', CAST(13990000 AS Decimal(18, 0)), N'4 camera sau zoom 20x cùng camera selfie "vây cá mập" độc đáo
Dường như, camera selfie "vây cá mập" đã là đặc trưng và đặc điểm nhận diện của dòng Oppo Reno, được thiết kế bởi một hình tam giác giống như chiếc vây cá mập. Bên cạnh đó, còn được tích hợp một module có khả năng thò ra thụt vào khi cần thiết nhưng không phải toàn bộ mà chỉ nâng một bên và một bên cố định. Độ phân giải của camera selfie của Oppo Reno 2 lên đến 16MP được tích hợp công nghệ làm đẹp AI hứa hẹn sẽ mang đến những bức ảnh selfie lung linh, sắc nét và sinh động cho người dùng. Tốc độ mở camera trước chỉ 0.8s nhanh hơn 28.5% so với các tiền nhiệm giúp bạn không phải chờ đợi lâu khi sử dụng camera pop-up.

Cụm 4 camera sau - Đa chiều sáng tạo

Cụm 4 camera sau - Đa chiều sáng tạo

Oppo Reno 2 đặc biệt được trang bị tới 4 camera sau với camera chính 48MP, khẩu độ f/1.7, đi kèm với cảm biến góc siêu rộng 8MP, ống kính tele 13MP và camera đơn sắc 2MP. Với độ phân giải này, bạn có thể thỏa sức ghi lại những khoảnh khắc của cuộc sống một cách sống động và chân thật, giúp bạn có những bức ảnh ưng ý nhất bao gồm chụp ảnh nhiều người, chụp ảnh xóa phông và chụp ảnh trắng đen. Và đặc biệt, khả năng zoom 20x lần đầu tiên xuất hiện trên một chiếc smartphone.

Thiết kế sang trọng, không có quá nhiều thay đổi
Thiết kế của Reno 2 không có sự thay đổi nhiều so với Reno cũ với những điểm nhấn nổi bật như kính kết hợp khung kim loại, camera vây cá mập để mang đến màn hình fullview thực sự.. tuy nhiên, không thay đổi cũng không sao sao, căn bản là cái nào mình làm tốt thì cứ giữ lại. Và nếu anh em nào muốn khác biệt nhiều thì hãy chọn máy màu đen lân tinh trên hình với cách phối mới lạ ở lưng.

Màu đen lân tinh với cách phối mới lạ ở lưng

Màu đen lân tinh với cách phối mới lạ ở lưng

Reno 2 vẫn là 1 chiếc máy đẹp và bền. Đẹp nhờ mặt lưng bóng bẩy, màn hình fullview, thiết kế "1 hàng dọc tập hợp" ở lưng. Và bền là nhờ vào kính Gorilla Glass 6 ở mặt trước, Gorilla Glass 5 ở mặt lưng.



Màn hình Panoramic Sunlight AMOLED 6.55"

Oppo Reno 2 sẽ có màn hình tràn viền hoàn hảo đúng nghĩa nhờ thiết kế camera selfie độc đáo, thực sự không có bất cứ một phần khuyết nào trên màn hình. Màn hình tràn viền tỷ lệ 19.5:9 cùng với một kích thước lên tới 6.55 inch, nhưng thực chất chỉ nằm gọn trong lòng bàn tay vì tỉ lệ màn hình chiếm tới 93% mặt trước. Đi kèm là tấm nền AMOLED đạt chuẩn 2400 x 1080 pixels đem đến chất lượng hiển thị cao, cho người trải nghiệm thị giác đẹp và ấn tượng.

Chất lượng hiển thị rất tốt

Chất lượng hiển thị rất tốt

Hiệu năng mạnh mẽ với chip Snapdragon 730G
Oppo Reno 2 được trang bị bộ vi xử lý Snapdragon 730G, một con chip thường được sử dụng trên những chiếc máy tầm trung. Theo Qualcomn, chip này có tốc độ xử lý mạnh hơn đàn anh Snapdragon 660 đến 20%, Adreno 618 cho tác vụ xử lý hình ảnh tốt hơn 35% so với GPU Adreno 512. Hơn nữa, các tác vụ liên quan tới AI gấp 2 lần so với Snapdragon 660 - 1 điểm nâng cấp khá đáng kể so với thế hệ trước.

Reno 2 dư sức chiến Liên Quân Mobile

Reno 2 dư sức chiến Liên Quân Mobile

Oppo Reno 2 còn được cài sẵn hệ điều hành Android 9.0 Pie khi xuất xưởng cùng giao diện ColorOS 6.1 do Oppo sản xuất giúp tối ưu cho smartphone tràn viền và tính năng hiện đại đi kèm RAM 8GB và bộ nhớ trong 256GB.

Giao diện ColorOS 6.1 tối ưu trải nghiệm người dùng

Giao diện ColorOS 6.1 tối ưu trải nghiệm người dùng

Pin dung lượng cao cùng sạc nhanh VOOC 3.0
Oppo Reno 2 sở hữu viên pin có dung lượng được nâng cấp lên thành 4.000 mAh, qua đó thời lượng pin chắc chắn sẽ tốt hơn phiên bản cũ. Với dung lượng pin như trên, nhờ vào con chip tiết kiệm pin cùng màn hình phân giải FullHD+ giúp cho người dùng có thời gian sử dụng khá thoải mái trong một ngày. Đồng thời thiết bị còn sử dụng công nghệ sạc siêu nhanh VOOC 3.0 đi kèm với thuật toán VFC. Theo Oppo thì máy có thể sạc nhanh hơn 23.8% so với những chiếc máy sở hữu công nghệ VOOC 2.0 cũ.', CAST(N'2019-10-12T00:00:00.000' AS DateTime), N'OppoReno2Denlantinh.jpg', N'OppoReno2Denlantinh1.jpg', N'OppoReno2Denlantinh2.jpg', 30, 1, 3, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (10, N'Tai nghe không dây chống ồn Sony WH-1000XM3 Đen', CAST(9490000 AS Decimal(18, 0)), N'Tai nghe không dây chống ồn Sony WH-1000XM3 sở hữu kiểu dáng Over-ear hiện đại sang trọng. Củ tai nghe sử dụng miếng đệm tai mềm, làm bằng uretan dạng bọt với thiết kế giảm áp lực lên tai sẽ phân phối áp lực đồng đều và tăng khả năng bám của miếng đệm tai, cho cảm giác vừa khít chắc chắn. Đặc biệt model mới ra mắt này có trọng lượng nhẹ hơn so với người anh em tiền nhiệm của mình trước đó, do đó bạn hoàn toàn có thể thoải mái sử dụng hàng ngày.

Thiết kế sang trọng, hiện đại
Thiết kế sang trọng, hiện đại

2 sự lựa chọn màu sắc: Đen, Bạc
Sản phẩm có 2 màu sắc cơ bản để người dùng lựa chọn đó là màu đen và màu bạc. Màu đen phù hợp với những người không thích quá nổi bật nhưng vẫn tạo được sự sang trọng, tinh tế cho người đeo. Còn màu bạc nổi bật không quá rực rỡ tạo nên sự trang nhã và sang trọng cho người dùng. Tùy vào sở thích cá nhân riêng, bạn có thể thoải mái chọn lựa cho mình một màu sắc yêu thích.

2 sự lựa chọn màu sắc: Đen, Bạc
2 sự lựa chọn màu sắc: Đen, Bạc

Quick Attention - bật/tắt nhanh chế độ khử ồn
Công nghệ "Quick Attention" dựa trên hoạt động cảm biến tích hợp sẵn trên ear-cup, cho phép bật/tắt nhanh chế độ khử ồn tức thì khi bạn đặt tay che lên bề mặt tai nghe. Nhờ đó mà bạn có thể thuận tiện trao đổi thông tin với bạn bè, đồng nghiệp hay lắng nghe những thông báo xung quanh mà không cần phải tháo bỏ tai nghe ra. Ngược lại, khi bạn dừng cuộc nói chuyện và để tay xuống, âm nhạc sẽ phát trở lại và các tùy chỉnh chống ồn trước đó cũng được khôi phục.

Quick Attention - bật/tắt nhanh chế độ khử ồn
Quick Attention - bật/tắt nhanh chế độ khử ồn

Chống ồn khi đang bay
Và không thể nhắc đến tính năng "Atmospheric Pressure Optimizing" mà Sony phát triển dành riêng cho những người thường xuyên phải di chuyển bằng máy bay. 

Chống ồn khi đang bay
Chống ồn khi đang bay

Phát triển dựa trên công nghệ Personal NC Optimizer, headphone sẽ phân tích áp suất không khí dựa trên hệ thống cảm biến cùng microphones ngoài & trong củ tai, sau đó tinh chỉnh lại hiệu quả chống ồn, tạo cảm giác thoải mái cho người dùng trong mỗi chuyến bay dài.

công nghệ Personal NC Optimizer
Công nghệ Personal NC Optimizer

Tính năng chống ồn thông minh
Khả năng chống ồn (noise-canceling) của WH-1000XM3 được cải thiện hơn so với phiên bản trước, đem đến trải nghiệm dùng tuyệt vời cho người dùng. Ngay khi khởi động tai nghe, hệ thống microphone trên ear-cup sẽ xác định tạp âm từ môi trường xung quanh cũng như áp suất trong khoang tai, từ đó hệ thống điện tử sẽ xử lý để tạo những sóng âm ngược pha để triệu tiêu tiếng ồn gây khó chịu trong quá trình nghe của bạn.

Tính năng chống ồn thông minh
Tính năng chống ồn thông minh

Sense Engine - tự động điều chỉnh theo từng tình huống
Tính năng Sense Engine chỉnh âm thích ứng sẽ tự động phát hiện hoạt động của bạn như di chuyển, đi bộ và chờ đợi, rồi điều chỉnh cài đặt âm thanh xung quanh cho phù hợp. Ngoài ra, tính năng chú ý nhanh sẽ giúp bạn dễ dàng trò chuyện mà không cần tháo tai nghe - bạn chỉ cần đặt tay lên phần vỏ để giảm âm lượng là có thể trò chuyện được ngay. 

Sense Engine - tự động điều chỉnh theo từng tình huống
Sense Engine - tự động điều chỉnh theo từng tình huống

Kiểm soát chống ồn với ứng dụng Headphones Connect
Ngoài ra, Sony cũng hỗ trợ ứng dụng Headphones Connect để người dùng có thể tự kiểm soát khả năng chống ồn và lọc tạp âm cho tai nghe của mình. Bạn có thể dễ dàng tùy chỉnh và thiết lập riêng cho từng môi trường sử dụng để đem đến hiệu quả chống ồn phù hợp với nhu cầu riêng.

Kiểm soát chống ồn với ứng dụng Headphones Connect
Kiểm soát chống ồn với ứng dụng Headphones Connect

Kết nối nhanh chóng với Bluetooth/ NFC
Sony WH-1000XM3 sử dụng công nghệ Bluetooth 4.2 cho kết nối ổn định và tiết kiệm năng lượng. Thêm vào đó, tai nghe còn hỗ trợ NFC cho phép bạn phát nhạc từ thiết bị di động thông minh một cách nhanh chóng mà không cần phải dò tìm và ghép nối thủ công như trước.

Kết nối nhanh chóng với Bluetooth/ NFC
Kết nối nhanh chóng với Bluetooth/ NFC
**Lưu ý: Thiết bị thông minh phải có hỗ trợ Bluetooth/NFC

Chuẩn LDAC độc quyền do Sony phát triển
Tai nghe Sony WH-1000XM3 vẫn được tích hợp chuẩn LDAC độc quyền do chính Sony phát triển. Ưu điểm của LDAC đó là cho phép truyền tín hiệu nhiều hơn xấp xỉ 3 lần (với tốc độ truyền tối 990 kbps), cao hơn nhiều so với mức 328kbps của chuẩn Bluetooth sử dụng SBC thông thường. Vì vậy, bạn có thể thoải mái thưởng thức chất lượng âm thanh vượt trội gần đạt âm thanh độ phân giải cao.

Chuẩn LDAC độc quyền do Sony phát triển
Chuẩn LDAC độc quyền do Sony phát triển

Thời gian pin ấn tượng lên đến 30 giờ
Sony WH-1000XM3 cho thời gian sử dụng ấn tượng lên đến 30 giờ khi bật chống ồn và 38 giờ khi tắt chống ồn. Và nếu vội sạc, bạn chỉ cần sử dụng bộ chuyển đổi AC mua riêng để có 5 giờ nghe nhạc sau 10 phút sạc.

Thời gian pin ấn tượng lên đến 30 giờ
Thời gian pin ấn tượng lên đến 30 giờ

Đàm thoại rảnh tay với cú 1 chạm
Giờ đây người dùng có thể thoải mái trả lời cuộc gọi rảnh tay ngay trên chính chiếc tai nghe của mình nhờ tai nghe tích hợp microphone. Khi có cuộc gọi đến, bạn chỉ cần chạm 1 lần vào giữa củ tai nghe để trả lời cuộc gọi. 

Đàm thoại rảnh tay với cú 1 chạm
Đàm thoại rảnh tay với cú 1 chạm

Điều khiển cảm ứng trên củ tai
Tương tự như người anh em trước đó, phần earcup của WH-1000XM3 nhìn qua khá đơn giản - song đây chính là nơi hội tụ những công nghệ hiện đại của chiếc headphone này. Trên ear-cup tích hợp bộ cảm biến cho phép người dùng có thể điều khiển bằng cảm ứng như: Tăng/giảm âm lượng, chuyển/lùi bài, trả lời cuộc gọi, dừng/tạm dừng/phát nhạc chỉ bằng vài cái chạm gõ lên housing của tai nghe.

Vẫn là những tính năng quen thuộc trên phiên bản trước, giờ đây đã được nâng cấp với các thao tác vuốt nhanh, nhạy và chính xác hơn rất nhiều. Vuốt lên xuống để tăng giảm âm lượng, vuốt qua lại để chuyển bài hát, chạm 2 lần để Play/Pause hay nhận cuộc gọi - đơn giản và thông minh.', CAST(N'2019-10-08T00:00:00.000' AS DateTime), N'TaingheSONYWH1000XM3Den.jpg', N'TaingheSONYWH1000XM3Den1.jpg', N'TaingheSONYWH1000XM3Den2.jpg', 40, 2, 4, 4)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (11, N'Vòng đeo thông minh Samsung Galaxy Fit E 2019 Đen', CAST(990000 AS Decimal(18, 0)), N'Samsung Galaxy Fit E: Thiết kế nhỏ gọn, trẻ trung, có cảm biến nhịp tim
Về thiết kế,
Samsung Galaxy Fit E có ngoại hình khá giống với những mẫu vòng đeo tay tầm giá dưới 1 triệu. Sản phẩm được tạo thành từ 2 thành phần chính là dây đeo và mặt đồng hồ cảm ứng kiêm nhiệm vụ hiển thị thời gian và thông báo. Cả hai thành phần này đều có thể tách rời nhau, một phần giúp người dùng dễ dàng thay dây đeo mới và cũng giúp việc sạc pin dễ dàng hơn.

Mặt đồng hồ và dây có thể tháo rời

Mặt đồng hồ và dây có thể tháo rời

Dây đeo của Galaxy Fit E được làm từ chất liệu cao su việc có thể tháo rời dây đeo ra khỏi mặt đồng hồ giúp người dùng dễ dàng thay các mẫu dây khác tùy ý. Hiện tại Samsung có 3 màu lựa chọn là vàng, trắng và đen.

Thiết kế dấu dây thời trang

Thiết kế dấu dây thời trang

Phần quai cài của dây đeo làm bằng nhựa, đối với một mẫu smartband giá dưới 1 triệu thì đây là điều có thể chấp nhận được. Dù là nhựa nhưng khi cài vào vẫn rất chắc chắn. Ở Fit E, Samsung áp dụng cách dấu dây khá hay và dễ khiến chúng ta liên tưởng đến phong cách giấu dây của những mẫu đồng hồ cao cấp. Nhưng thao tác giấu dây sẽ có đôi chút khó khăn, đặc biệt là khi bạn siết nút dây đeo quá khít so với cổ tay.

Màn hình cảm ứng OLED đơn sắc hiện thị rõ ràng

Màn hình cảm ứng OLED đơn sắc hiện thị rõ ràng

Mặt đồng hồ của Fit E làm hoàn toàn từ nhựa nhưng được gia công rất chắc chắn không có cảm giác ọp ẹp. Màn hình hiển thị có kích thước 0.74 inch, đây là màn hình OLED tuy nhiên chỉ hiển thị được màu đơn sắc. Toàn bộ phần thân của Fit E không hề có phím vật lý, và vì thế người dùng buộc lòng phải tương tác với Fit E thông qua khu vực màn hình cảm ứng.

Cụm cảm biến đặt ở mặt dưới

Cụm cảm biến đặt ở mặt dưới

Tương tự Galaxy Fit, mẫu Galaxy Fit E vẫn được trang bị khá đầy đủ các cảm biến cần có cho việc hỗ trợ theo dõi sức khỏe người dùng, như cảm biến chuyển động, cảm biến nhịp tim... Điểm thiếu sót của Fit E so với người anh em Fit là không có con quay hồi chuyển. Samsung Galaxy Fit E sở hữu viên pin dung lượng khoảng 70 mAh và theo như công bố của nhà sản xuất Galaxy Fit E sẽ có được khoảng 7 ngày hoạt động mà chưa cần đến sạc (Tối đa là 13 ngày đối với các tác vụ sử dụng thông thường).

Về phần mềm và tính năng,
Galaxy Fit E được quản lý thông qua một ứng dụng có tên Wearable do Samsung tự phát triển, ứng dụng này có mặt trên cả iOS và Android vì thế Galaxy Fit E dễ dàng kết nối với bất kỳ thiết bị nào. Thao tác kết nối Galaxy Fit E và ứng dụng khá đơn giản và người dùng sẽ không phải qua quá nhiều bước để thiết lập. Dù là sản phẩm có màn hình đơn sắc, nhưng Samsung hỗ trợ nhiều kiểu mặt đồng hồ khác nhau cho Galaxy Fit E, bạn có thể thay đổi các kiểu mặt đồng hồ khác nhau tùy theo sở thích.

Kết nối dễ dàng qua ứng dụng Wearable của Samsung

Kết nối dễ dàng qua ứng dụng Wearable của Samsung

Ứng dụng Wearable còn giúp người dùng thống kê được quá trình tập luyện của mình theo ngày, theo tuần hoặc theo tháng, để từ đó so sánh các kết quả và tự đánh giá mức độ hiệu quả tập luyện. 

Bên cạnh là một thiết bị theo dõi sức khỏe thì Samsung Galaxy Fit E còn được kết nối với điện thoại để hiển thị các thông báo ứng dụng. Galaxy Fit E còn có cơ chế rung, độ rung vừa phải đủ để thu hút sự chú ý của người dùng qua đó sẽ không bỏ lỡ bất cứ thông báo, tin nhắn hay cuộc gọi nào. Màn hình kích thước nhỏ sẽ là hạn chế về mặt hiển thị nhưng vẫn đủ để người dùng biết được ai đang nhắn tin đến mình, hoặc số điện thoại nào đang gọi.', CAST(N'2019-10-01T00:00:00.000' AS DateTime), N'VongSamSungGalaxy2019Den.jpg', N'VongSamSungGalaxy2019Den1.jpg', N'VongSamSungGalaxy2019Den2.jpg', 40, 2, 1, 10)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (12, N'Tai nghe không dây Apple AirPods 2 with Charging Case', CAST(4095000 AS Decimal(18, 0)), N'Kết nối một chạm tiện lợi
Tai nghe không dây AirPods 2 sử dụng rất đơn giản. Sau khi thiết lập một chạm trên thiết bị, AirPods 2 sẽ tự động bật và luôn luôn trong tình trạng sẵn sàng kết nối. Cảm biến thông minh tích hợp bên trong, cho phép AirPods 2 nhận diện được khi nào bạn đang đeo tai nghe và khi nào không đeo. Khi tai nghe ở trong tai nhạc sẽ bật, ngược lại, khi bạn bỏ tai nghe ra khỏi tai, thiết bị sẽ tự động dừng nhạc lại. Với tính năng này, AirPods 2 mang lại nhiều trải nghiệm thú vị cho người dùng khi nghe nhạc trên iPhone, Apple Watch, iPad hay Mac.

Tai nghe không dây Apple AirPods 2 with charging case 
Tai nghe không dây Apple AirPods 2


"Hey Siri" - Kích hoạt trợ lý ảo bằng giọng nói
Giờ đây, bạn có thể kích hoạt trợ lý ảo Siri dễ dàng bằng chính giọng nói của mình. Đơn giản chỉ cần bạn nói "Hey Siri" để được hỗ trợ mọi yêu cầu mà không cần phải thao tác nhấn giữ phím Home trên iPhone.

Tai nghe không dây Apple AirPods 2 với tính năng Kích hoạt trợ lý ảo bằng giọng nói
Kích hoạt trợ lý ảo bằng giọng nói


Nâng cao hiệu suất với chipset H1 mới 
Được trang bị chip tai nghe Apple H1 hoàn toàn mới, AirPods 2 cung cấp kết nối không dây nhanh hơn và ổn định hơn cho các thiết bị của bạn. AirPods 2 cho khả năng kết nối nhanh hơn tới 2 lần khi chuyển đổi giữa các thiết bị hoạt động và 1.5 lần cho các cuộc gọi điện thoại. Chip H1 cũng điều khiển truy cập Siri hỗ trợ giọng nói và mang lại độ trễ chơi game thấp hơn tới 30%. Vì vậy, cho dù bạn đang chơi game, nghe nhạc hay thưởng thức podcast, bạn sẽ trải nghiệm âm thanh chất lượng cao hơn.

Tai nghe không dây Apple AirPods 2 sử dụng chipset mới H1 
Nâng cao hiệu suất với chipset H1 mới


Biết khi nào bạn đang nghe
Tai nghe không dây Apple AirPods 2 sử dụng cảm biến quang và gia tốc chuyển động phối hợp với nhau để tự động kiểm soát trải nghiệm âm thanh, dùng micro cho các cuộc gọi điện thoại và truy cập Siri, hay cho phép AirPods 2 phát âm thanh ngay khi bạn đeo tai nghe lên tai. Ngoài ra, người dùng cũng có thể thoải mái đeo một hoặc cả hai tai nghe tùy thích, có thể phát hoặc chuyển bài bằng cách chạm hai lần liên tiếp vào tai nghe khi nghe nhạc.

Thoải mái nghe nhạc đàm thoại cả ngày với Tai nghe không dây Apple AirPods 2
Thoải mái nghe nhạc đàm thoại cả ngày


Biết khi nào bạn nói chuyện
Máy đo gia tốc phát hiện giọng nói sẽ nhận ra khi bạn nói và làm việc. Với cặp micro tích hợp bên trong tai nghe nhét tai không dây AirPods giúp lọc tiếng ồn bên ngoài trong quá trình bạn đàm thoại, cho âm thanh tập trung và sạch hơn.

Thời lượng pin lên đến 24 giờ
AirPods 2 cung cấp tới 5 giờ nghe nhạc và lên đến 3 giờ đàm thoại, chỉ trong một lần sạc. Hộp sạc đi kèm tai nghe cho phép người dùng sạc nhiều lần, cho thời lượng phát tổng cộng lên đến hơn 24 giờ nghe. Thêm vào đó, thiết bị cũng hỗ trợ tính năng sạc nhanh, bạn chỉ cần bỏ ra 15 phút sạc là có được tới 3 giờ nghe nhạc và 2 giờ đàm thoại. Để kiểm tra pin còn lại của thiết bị, hãy đặt AirPods 2 của bạn bên cạnh iPhone hoặc hỏi Siri “How’s the battery on my AirPods?” 

Thiết lập kết nối đơn giản
AirPods 2 cho khả năng kết nối ngay lập tức với iPhone hoặc Apple Watch của bạn và chuyển đổi giữa các thiết bị một cách nhanh chóng. Chỉ cần đặt 2 thiết bị gần nhau là chúng sẽ nhận diện được nhau và yêu cầu bạn kết nối. Còn nếu bạn muốn nghe trên máy tính Mac hoặc trên iPad? Chỉ cần chọn AirPods trên các thiết bị đó. Do vậy, việc kết nối trên AirPods với các thiết bị dùng hãng Apple rất đơn giản mà bạn không phải mất công dò tìm nhiều như khi bạn sử dụng các thương hiệu khác.', CAST(N'2019-10-10T00:00:00.000' AS DateTime), N'taingheAppleAirpods2ChargingCase.jpg', N'taingheAppleAirpods2ChargingCase1.jpg', N'taingheAppleAirpods2ChargingCase2.jpg', 30, 2, 2, 4)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (13, N'Smart TV 4K UHD LG 49 inch 49UM7300PTA', CAST(11179000 AS Decimal(18, 0)), N'Thiết kế hiện đại, sang trọng
Smart TV 4K LG 49 inch 49UM7300PTA sở hữu thiết kế hiện đại với khung viền mỏng sang trọng, mang đến trải nghiệm màn hình tràn viền sống động. Phần chân đế chắc chắc được bố trí bên dưới màn hình giúp tivi có thể đứng vững trên nhiều chất liệu bề mặt phẳng khác nhau, từ thảm, gỗ, kính đến kim loại,... Chân đế tivi có thể tháo rời dễ dàng để người dùng có thể tối ưu không gian lắp đặt, rất phù hợp cho phòng hẹp.

Smart TV 4K LG 49 inch 49UM7300PTA Thiết kế hiện đại, sang trọng
Thiết kế hiện đại, sang trọng


Tích hợp trí thông minh nhân tạo
Tivi 49UM7300PTA tích hợp LG ThinQ AI, cho phép bạn có thể làm nhiều thứ chỉ bằng giọng nói của mình. Giờ đây, bạn không cần phải nhập liệu từng nội dung để tìm kiếm, thay vào đó chỉ cần nói nội dung mong muốn là tivi sẽ hỗ trợ bạn tìm kiếm nhanh chóng.

Smart TV 4K LG 49 inch 49UM7300PTA Tích hợp trí thông minh nhân tạo
Tích hợp trí thông minh nhân tạo


Trải nghiệm hình ảnh sắc nét với TV LG UHD
Smart TV 4K UHD LG 49UM7300PTA có màn hình 49 inch, độ phân giải hiển thị lên đến 4K Ultra HD đem đến hình ảnh sắc nét và chi tiết cao hơn gấp 4 lần so với tivi sử dụng chuẩn Full HD. Nhờ vậy, mà bạn có thể thoải mái giải trí, thư giãn bên gia đình sau những giờ phút mệt mỏi, căng thẳng bằng các nội dung có độ nét cao như: Các bộ phim bom tấn lôi cuốn, hay các chương trình thể thao ngoại hạng Anh, chương trình truyền hình hấp dẫn,...

Smart TV 4K LG 49 inch 49UM7300PTA đem đến Trải nghiệm hình ảnh sắc nét với TV LG UHD
 Trải nghiệm hình ảnh sắc nét với TV LG UHD


Hình ảnh ổn định ở tất cả các góc xem
Tivi LG 49UM7300PTA sử dụng tấm nền IPS 4K giúp duy trì màu sắc chính xác hơn và cho phép người xem thưởng thức hình ảnh đẹp tuyệt hảo cho dù bạn đang ngồi ở bất kỳ vị trí nào trong phòng ngay cả góc 60 độ. Do đó bạn không phải mất nhiều thời gian sắp xếp và lựa chọn vị trí ngồi mỗi khi ngồi trước tivi mà có thể ngồi ở bất cứ góc nào đều cho chất lượng hình ảnh đồng đều.

Smart TV 4K LG 49 inch 49UM7300PTA cung cấp Hình ảnh ổn định ở tất cả các góc xem
Hình ảnh ổn định ở tất cả các góc xem


Chất lượng hình ảnh chân thực
Smart TV LG 49UM7300PTA trang bị bộ xử lý lõi tứ mạnh mẽ bên trong giúp giảm các hiện tượng nhiễu gây mất tập trung cho người xem. Đồng thời, vi xử lý này còn có tác dụng nâng cao độ sắc nét ngay cả khi nâng cấp hình ảnh có độ phân giải thấp lên chất lượng hình ảnh gần 4K.

Smart TV 4K LG 49 inch 49UM7300PTA cho Chất lượng hình ảnh chân thực
Chất lượng hình ảnh chân thực


Công nghệ 4K Active HDR cho hình ảnh sống động
HDR (Dải động cao) là tiêu chuẩn mới cho chất lượng hình ảnh. Công nghệ này mang đến chi tiết tinh xảo và màu sắc thật như cuộc sống với dải độ tương phản rộng hơn. Tivi UHD LG hỗ trợ nhiều định dạng HDR bao gồm HDR10 Pro và HLG.

Smart TV 4K LG 49 inch 49UM7300PTA trang bị Công nghệ 4K Active HDR cho hình ảnh sống động
Công nghệ 4K Active HDR cho hình ảnh sống động


Hiệu ứng âm thanh vòm với loa đa kênh
LG 49UM7300PTA trang bị hệ thống loa 2.0Ch với tổng công suất 20W, cùng công nghệ âm thanh DTS Virtual X, Clear Voice III đem đến âm thanh tuyệt vời cho bạn mỗi khi thưởng thức giải trí, nghe nhạc, xem phim hay xem các chương trình thể thao. Do đó, bạn có thể thoải mái thưởng thức các nội dung yêu thích ngay tại nhà với âm thanh sống động không kém rạp hát.

Hiệu ứng âm thanh vòm với loa đa kênh trên Smart TV 4K LG 49 inch 49UM7300PTA
Hiệu ứng âm thanh vòm với loa đa kênh


Bộ vi xử lý lõi tứ mạnh mẽ
Bên trong tivi tích hợp bộ xử lý lõi tứ mạnh mẽ bên trong giúp giảm các hiện tượng nhiễu gây mất tập trung cho người xem. Đồng thời, vi xử lý này còn có tác dụng nâng cao độ sắc nét ngay cả khi nâng cấp hình ảnh có độ phân giải thấp lên chất lượng hình ảnh gần 4K.

Smart TV 4K LG 49 inch 49UM7300PTA tích hợp Bộ vi xử lý lõi tứ mạnh mẽ
Bộ vi xử lý lõi tứ mạnh mẽ 


Smart TV chạy hệ điều hành LG WebOS 
Khám phá nhiều tính năng của Smart TV trên nền tảng LG webOS. Vượt qua chức năng điều khiển và tìm kiếm thông thường, bạn có thể mở và lựa chọn các ứng dụng và các dịch vụ nâng cao khác có trên thiết bị bằng giọng nói của mình mà không phải mất công gõ phím nhập liệu như thế hệ tivi đời cũ.', CAST(N'2019-10-01T00:00:00.000' AS DateTime), N'SmartTV_4K_UHD_LG_49inch.jpg', N'SmartTV_4K_UHD_LG_49inch1.jpg', N'SmartTV_4K_UHD_LG_49inch2.jpg', 30, 2, 5, 5)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (14, N'Tai nghe Bluetooth Headset Sony SBH56 Bạc', CAST(640000 AS Decimal(18, 0)), N'Thiết kế nhỏ gọn, chất liệu cao cấp
Tai nghe Bluetooth Headset Sony SBH56 là phiên bản nâng cấp đáng nể từ người tiện nhiệm Sony SBH54. Tai nghe có thiết kế nhỏ gọn và được làm bằng chất liệu kim loại cao cấp, giúp thể hiện được nét sang trọng, tinh tế mà sản phẩm mang đến.


Tai nghe Bluetooth Headset Sony SBH56
Các phím điều khiển tiện lợi


Khả năng đàm thoại tốt
Tai nghe Sony SBH56 hoàn toàn có thể sử dụng loa ngoài để đàm thoại. Bên cạnh đó, phiên bản này được Sony tích hợp mic HD voice nên quá trình trò chuyện không bị gián đoạn bởi ảnh hưởng của những tạp âm bên ngoài lẫn vào. Đặc biệt bạn có thể nghe nhạc, nghe radio qua bộ loa này nữa, rất tiện lợi và hiệu quả.

Kết nối ổn định
SBH56 là tai nghe Sony Bluetooth không dây 4.0 hỗ trợ giải mã âm thanh SBC, NFC 1 chạm vì vậy không làm gián đoạn quá trình hoạt động, di chuyển của bạn khi sử dụng sản phẩm. Giắc cắm 3.5mm, cổng sạc USB Type-C™ phù hợp với nhiều loại máy khác nhau.


Tai nghe Bluetooth Headset Sony SBH56
Tính năng hiện đại, tiện lợi


Ảnh tự sướng hoàn hảo
Chụp ảnh tự sướng sắc nét và hoàn hảo, đưa tất cả mọi người vào trong ảnh nhóm của bạn. Với nút chụp trên điều khiển từ xa camera, bạn không cần phải đứng sau camera hay lo lắng về việc bị rung tay. Và vì bạn có thể chụp liên tiếp nhiều bức ảnh nên bạn luôn có thể tìm được bức ảnh tự sướng hoàn hảo.

Thời lượng sử dụng ấn tượng
SBH56 có thể sử dụng đàm thoại lên đến 7 giờ đồng hồ, loa ngoài hoạt động công suất 3 giờ, nghe nhạc liên tục 6 giờ, pin chờ lên đến 250 giờ và thời lượng sạc rất nhanh chóng chỉ tốn 2 tiếng đồng hồ. Sản phẩm tương thích với các dòng iPhone có IOS 9 trở lên và Android từ 4.4 trở lên.', CAST(N'2019-10-01T00:00:00.000' AS DateTime), N'TaingheBluetoothHeadsetSonySBH56Bac.jpg', N'TaingheBluetoothHeadsetSonySBH56Bac2.jpg', N'TaingheBluetoothHeadsetSonySBH56Bac1.jpg', 40, 2, 4, 4)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (15, N'Máy chơi game Sony PlayStation PS4 Pro CUH-7218B 1TB ', CAST(11990000 AS Decimal(18, 0)), N'Thiết kế cứng cáp và hiện đại
Về mặt thiết kế, xem chừng PS4 Pro sẽ không có nhiều thay đổi so với mẫu máy gốc với kiểu dáng chữ nhật được vát cạnh thanh thoát. So với PS4 bản tiêu chuẩn, phiên bản Pro dày hơn, nặng hơn một tí, toàn bộ phần vỏ ngoài cũng được hoàn thiện đen nhám tương tự như PS4 Slim, đồng thời thân máy được chia thành 3 tầng khác nhau với các cạnh bo tròn mạnh thay vì kiểu thiết kế "2 lát" như trước đây. Đồng thời, phần cứng cũng được Sony nâng cấp mạnh nhằm hỗ trợ chất lượng 4K, HDR cho không chỉ phát nội dung mà cả chơi game. Tuy nhiên, mục tiêu lý tưởng và đầy tuyệt vời đó đòi hỏi phải có màn hình 4K hỗ trợ HDR và đặc biệt là hãng phát triển game từ nay sẽ làm ra phiên bản vừa có hỗ trợ 4K, vừa chơi được phiên bản cũ.


Máy chơi game Sony PlayStation PS4 Pro CUH-7106B B01
Các đường nét được thiết kế tỉ mỉ


Sức mạnh phần cứng được tối ưu
Máy chơi game Sony PlayStation PS4 Pro CUH-7106B B01 thực sự làm cho các tựa game nhìn đẹp hơn nhờ sức mạnh phần cứng. Khả năng khử răng cưa (anti-aliasing) tốt hơn, hình ảnh trông sạch sẽ, màu sắc cũng chân thực hơn. Máy có gấp đôi dung lượng ổ cứng (1TB), nhiều cổng kết nối, được hỗ trợ game tốt hơn trong tương lai và một số trò chơi nhìn cũng đẹp hơn ở 1080p.


Máy chơi game Sony PlayStation PS4 Pro CUH-7106B B01
Mạnh mẽ hơn, xử lý tốt hơn


Khả năng xử lý đồ họa mạnh mẽ
PlayStation 4 Pro là một hệ máy mạnh mẽ, có nhiều tiềm năng để các nhà phát triển game khai thác. Tốc độ xử lý đồ họa mạnh hơn gấp đôi nhằm hỗ trợ không chỉ phát các nội dung 4K mà cả chơi game 4K/HDR. PS4 Pro hỗ trợ tốc độ khung hình nhanh hơn cung cấp hành động siêu sắc nét cho các trò chơi PS4 đã chọn. Với máy chơi game PlayStation PS4 bạn có thể trải nghiệm các game 4K như Batman Arkham City, Call of Duty: Black Ops 3 và The Last of Us R một cách mượt mà.


Máy chơi game Sony PlayStation PS4 Pro CUH-7106B B01
Hỗ trợ nhiều tựa game đòi hỏi đồ họa cao


Dung lượng 1TB dễ dàng nâng cấp
PS4 Pro cho phép bạn nâng cấp bộ nhớ khi thiết kế nắp ở cạnh hông để thay ổ cứng dễ dàng hơn (so với việc tháo mặt trên máy ra ở phiên bản PS4 thông thường).


Máy chơi game Sony PlayStation PS4 Pro CUH-7106B B01
Chi tiết bộ sản phẩm


Uncharted 4
Đĩa game PS4 Uncharted 4 đã được Naughty Dog khá chăm chú về đồ họa. Bất kỳ ai nhìn thấy hình ảnh trong game của Uncharted 4 đều không hề mảy may nghi ngờ về chất lượng đồ họa của game. Nhưng một khi trực tiếp quan sát game từ màn hình, mọi định nghĩa về cái đẹp đều có thể thay đổi. Tạo hình nhân vật ở mức xuất sắc với kết cấu môi trường tuyệt đẹp khiến người chơi bị “đứng hình”.

Thế giới trong game có quá nhiều chi tiết khiến người chơi cảm thấy như mình đang tồn tại trong đó vậy. Bạn sẽ cảm thấy nên khám phá mọi ngóc ngách trong game, cốt chỉ để lưu giữ lại những khoảnh khắc đó. Sự đa dạng của khung cảnh game cũng để lại nhiều ấn tượng sâu sắc. Từ những khu rừng tươi tốt, cho đến các tòa nhà hùng vĩ với nội thất chi tiết. Phải nói rằng các nghệ sĩ thiết kế trò chơi này đã không tiếc thời gian để tạo nên một tác phẩm nghệ thuật.


Uncharted 4
Uncharted 4


Unchartered 4 là một cuộc phiêu lưu dài với hơn 20 chương (chapter). Tùy thuộc vào độ khó và cách mà bạn khám phá, có thể mất đến 20 giờ để hoàn thành chuỗi nhiệm vụ chính trong game. Điều tuyệt vời là tất cả mọi thứ đều thôi thúc bạn chơi tiếp để khám phá, các cảnh hành động với nhịp độ hoàn hảo, các chi tiết thú vị hấp dẫn xuất hiện khắp nơi trong cuộc phiêu lưu của bạn.

Lối chơi của game cũng có một vài thay đổi mới về cơ chế, với ví dụ rõ ràng nhất là “sợi thừng”. Thiết bị này cho phép Drake có thể đu dây qua các khu vực, thậm chí có thể được dùng để chiến đấu. Điều này không chỉ làm cho trò chơi trở nên thú vị hơn, mà còn mở ra nhiều cách thức giải trí mới. Có những cú nhảy vô lý tới mức “siêu nhân” cũng không thực hiện được, nhưng đối với một trò chơi điện tử thì đây chỉ là chuyện thường ngày ở huyện.

The Last of Us Remastered
Ai trong chúng ta chắc cũng không quá xa lạ gì với tựa game đã dành được hơn 200 giải thưởng và xuất sắc ẵm luôn giải Game Of The Year, The Last Of Us. Game được tạo ra bởi hãng phát triển chuyên tạo ra các siêu phẩm Naughty Dog. Năm đó với phần cứng hạn hẹp của PS3 Naughty Dog đã làm fan phải ấn tượng với đồ họa trong game. Thì nay với sức mạnh trai trẻ của PS4, Naughty Dog quyết định xây dựng lại tựa game với độ phân giải 1080p, các nhân vật được làm chi tiết hơn, hiệu ứng ánh sáng và đổ bóng được cải thiện, cùng với hàng loạt cải tiến về gameplay.


The Last Of Us Remastered
Đồ họa đỉnh cao


The Last Of Us Remastered vẫn có cốt truyện giống như phần trước. 20 năm sau một đợt bùng phát một loại dịch bệnh khiến con người trở nên điên loạn tấn công những người còn sót lại. Những người còn sống sót phải chém giết lẫn lẫn nhau để giành lấy thức ăn và vũ khí. Bạn sẽ vào vai Joel, một người sống sót hung hãn, người được thuê để đưa một cô gái 14 tuổi ra khỏi vùng quân đội chiếm đóng, nhưng nhiệm vụ tưởng chừng đơn giản ấy nhanh chóng trở thành một chuyến hành trình đầy nguy hiểm xuyên suốt nước Mỹ.


The Last Of Us Remastered
Cốt truyện hấp dẫn

Ratchet & Clank
Phiên bản Ratchet & Clank lần này sẽ đưa người chơi về với những kỉ niệm đầu tiên mà phiên bản gốc để lại bởi hầu như tất cả các yếu tố, tính năng trong phiên bản lần này đều dựa trên phiên bản gốc. Tuy nhiên Ratchet & Clank PS4 không đơn giản chỉ là một phiên bản làm lại bởi nhà Insomniac không thiếu ý tưởng mới hợp thời hơn, bổ sung một loạt hành tinh mới, hệ thống chiến đấu mới, dàn trùm mới và đặc biệt người lồng tiếng cho Ratchet lần này sẽ là James Arnold Taylor.


Ratchet & Clank
Ratchet & Clank


Phiên bản PS4 của Ratchet & Clank sẽ có một kho vũ khí đa dạng kết hợp cả vũ khí độc đáo đã có trước đây cùng các loại vũ khí mới được “bào chế”. Có thể kể đến chiếc găng tay Groovitron có khả năng khiến đối thủ gần đó phải nhảy nhót không ngừng.

Cốt truyện của Ratchet & Clank vẫn như cũ là phá tan âm mưu thống trị thiên hà của kẻ ác, vốn dĩ game này cho thiếu nhi ngay từ phần đầu nên không có gì quá phức tạp nhưng phần giải đố của game thì khác, nó sẽ thách thức bạn bằng nhiều thứ. Gameplay của Rachet & Clank được tối ưu hóa tới mức bạn sẽ không bao giờ cảm thấy bị lặp lại hay nhàm chán trong từng nhiệm vụ, từ lái phi thuyền – trượt trên những đoạn ống dẫn – lặn dưới nước và rất nhiều thứ khác, đó là chưa kể tới rất nhiều hành tinh khác nhau để bạn làm nhiệm vụ và khám phá nữa.

God Of War 4
Chất lượng hình ảnh hoàn hảo
Đĩa game PS4 God Of War 4 là một trong những tựa game độc quyền đầu tiên dành cho PS4, God Of War 4 cũng đang tỏ ra rất hứa hẹn ở thời điểm hiện tại, trước hết là về mặt đồ họa. Những đoạn gameplay được công bố dành cho trò chơi mang đến chất lượng hình ảnh chất lượng Full HD 1080p phải nói là không có gì để chê trách.


Đĩa game PS4 God Of War 4
Đồ họa đỉnh cao


Nhập vai ấn tượng
Game thuộc thể loại nhập vai đi cảnh phiêu lưu đầy kịch tính, God Of War 4 ra đời mà không đi vào những nội dung cũ kỹ ở Hy Lạp, Kratos xuất hiện ở Bắc Âu là một lựa chọn hợp lý. Nhưng chuyện gì xảy ra sau khi Kratos dùng thanh gươm của Zeus tự vẫn năm ấy để mang đến niềm hi vọng cho nhân loại và giờ lạc trôi đến Bắc Âu?

Đó là một bí ẩn mà người chơi chúng ta phải tìm hiểu. Chỉ biết rằng câu chuyện của mọi thứ bắt đầu rất “đơn giản”: một cuộc hành trình đưa tro cốt người thân đã mất của Kratos và con trai, Atreus lên đỉnh núi cao nhất để hoàn thành di nguyện.


Đĩa game PS4 God Of War 4
Cốt truyện mới hấp dẫn


Đem đến góc nhìn mới
Không giống các phiên bản trước, God Of War 4 hiện mang nhiều tính chất của một game hành động nhập vai RPG. Game thủ có thể gia tăng sức mạnh của Kratos bằng cách nâng cấp đồ đạc, gắn ngọc, luyện kỹ năng... Tất nhiên, không chỉ mình Kratos, người chơi có thể nâng cấp cho cả Atreus nữa.

Trong chiến đấu, Kratos có thể sử dụng cùng lúc cả khiên lẫn rìu và đôi khi là cả bằng tay không. God Of War cho phép bạn sử dụng những đòn kết liễu đa dạng và cực kỳ mãn nhãn. Bên cạnh những màn đánh đấm, yếu tố phiêu lưu, giải đố cũng là một phần vô cùng thú vị của God of War. Bất kể bạn chọn chế độ chơi nào (từ dễ đến khó), phần giải đố của game vẫn giữ nguyên độ khó và là thách thức không nhỏ với mọi game thủ.', CAST(N'2019-10-10T00:00:00.000' AS DateTime), N'SonyPlayStationPS4Pro.jpg', N'SonyPlayStationPS4Pro1.jpg', N'SonyPlayStationPS4Pro2.jpg', 20, 2, 4, 10)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (16, N'Tai nghe Bluetooth Samsung Level U', CAST(1014000 AS Decimal(18, 0)), N'Thiết kế tinh tế sành điệu
Tai nghe Bluetooth Samsung Level U với bốn sắc màu sành điệu: Xanh đen, trắng, vàng và xanh cho bạn thỏa sức lựa chọn. Sở hữu kiểu dáng tinh tế, màu sắc bắt mắt và hợp thời trang, bạn sẽ không thể dời mắt khỏi tai nghe không dây Samsung Level U. 

sắc màu sành điệu

Tai nghe này được thiết kế như một chiếc vòng đeo cổ  giúp tai nghe luôn vững chắc, ổn định rất thích hợp cho những những người thích vừa tập thể thao vừa nghe nhạc.

 

Tai nghe Bluetooth Samsung Level U
 

Thoải mái, vừa vặn
Phần chụp tai được thiết kế mềm mại, linh hoạt; cùng với khung tai nghe ôm vừa vặn quanh cổ, tai nghe không dây Level U cho bạn cảm giác thoải mái. Hơn nữa, bạn có thể điều chỉnh kích thước khung tai nghe phù hợp giúp việc nghe nhạc an toàn hơn dù bạn đi đến bất cứ nơi nào.

Thoải mái, vừa vặn
 

Dung lượng pin vượt trội
Dung lượng pin vượt trội cung cấp cho người nghe 11  giờ đàm thoại, 10 giờ nghe nhạc và 500 giờ cho thời gian chờ cho phép bạn sử dụng một cách thoải mái mà không bị gián đoạn giữa chừng do hết pin. Với Samsung Level U không dây, bạn không còn lo lắng về tuổi thọ của pin tai nghe nữa.

Dung lượng pin vượt trội
 

Truy cập dễ dàng tới Level App
Level App là một ứng dụng tuyệt vời cho phép bạn nghe nhạc theo ý muốn của riêng mình. Level App cũng cung cấp các thông tin cần thiết như cuộc gọi nhỡ, báo thức, lịch và dung lượng pin còn lại thông qua Text-to-Speech (TTS) và các thông báo ở chế độ rung.

Truy cập dễ dàng tới Level App
 

Phím tăng giảm âm lượng và microphone được tích hợp trên tai nghe
Nút âm lượng tích hợp cho phép bạn dễ dàng điều khiển và sử dụng các chức năng của tai nghe không dây Level U mà không cần các thiết bị ghép nối. 

Phím tăng giảm âm lượng và microphone được tích hợp trên tai nghe
 

Ngoài ra, tai nghe được trang bị 2 Microphone thông minh hỗ trợ bạn trả lời điện thoại khi đang lái xe rất an toàn với chức năng giảm thiểu tiếng ồn tương NR và EC, do đó bạn có thể đàm thoại một cách rõ ràng nhất ngay cả khi ở những nơi đông người, ồn ào. 

Microphone thông minh


Kết nối Bluetooth v4.1
Samsung Level U sử dụng kết nối Bluetooth v4.1 vô cùng nhanh chóng, gần như không có độ trễ cho âm thanh chính xác và chi tiết. Đồng thời, với kết nối Bluetooth bạn có thể quên đi những dây cáp kết nối lằng nhằng mang tới sự bất tiện không nhỏ trong qua trình sử dụng.', CAST(N'2019-10-01T00:00:00.000' AS DateTime), N'TaingheBluetoothSamsungLevelU.jpg', N'TaingheBluetoothSamsungLevelU1.jpg', N'TaingheBluetoothSamsungLevelU2.jpg', 30, 2, 1, 4)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (17, N'Tai nghe không dây Sony WH-CH510 (Xanh)', CAST(1190000 AS Decimal(18, 0)), N'Thiết kế mềm mại, thân thiện
Tai nghe không dây Sony WH-CH510 có phần housing được thiết kế với kiểu dáng bo cong tròn mềm mại, giúp đem lại cảm giác thân thiện và không cứng nhắc. Toàn bộ bề mặt của tai nghe được thiết kế cắt điệu với nhiều đường vân nổi để tăng tính cách điệu đẳng cấp đẹp đẽ hơn. Ngoài ra, tai nghe còn có thể gập gọn theo một hướng phẳng, để người dùng dễ dàng và thuận tiện mang theo sử dụng ở bất cứ đâu.


Tai nghe không dây Sony WH-CH510
Tai nghe không dây Sony WH-CH510


Công nghệ kết nối tiên tiến
Tai nghe Sony WH-CH510 sử dụng công nghệ kết nối tiên tiến Bluetooth 5.0 hỗ trợ codec SBC, AAC, giúp tăng khả năng truyền dẫn ổn định và đẩy đủ chất lượng âm thanh đến với người dùng trong khoảng bán kính 10m.


Tai nghe không dây Sony WH-CH510
Thiết kế thoải mái


Điều chỉnh đơn giản
Các nút điều khiển tạm dừng phát nhạc, tăng giảm âm lượng được đặt ngay trên tai nghe cực kỳ tiện dụng, do đó người dùng sẽ dễ dàng điều chỉnh mà không hề cần phải dùng đến điện thoại. Sản phẩm cũng tương thích với trợ lý giọng nói khi người dùng chỉ cần nhấn một nút, là bạn đã có thể kết nối với trợ lý của điện thoại thông minh để được chỉ đường, mở nhạc và liên lạc với mọi người.


Tai nghe không dây Sony WH-CH510
Trang bị đầy đủ tính năng hiện đại


Dung lượng pin khủng
Với thời gian sử dụng pin khủng, người dùng sẽ nghe nhạc và đàm thoại liên tục lên tới 35 giờ và luôn bên bạn trên những chuyến đi mà không cần phải suy nghĩ lo lắng về vấn đề thời lượng pin. Không chỉ dừng ở thời lượng pn khủng mà Sony còn đem cho tai nghe WH-CH510 khả năng sạc nhanh chỉ với 10 phút sạc đã đem lại cho người tới 90 phút sử dụng.', CAST(N'2019-10-01T00:00:00.000' AS DateTime), N'TainghekdSonyWHCH510Xanh.jpg', N'TainghekdSonyWHCH510Xanh1.jpg', N'TainghekdSonyWHCH510Xanh2.jpg', 30, 2, 4, 4)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (18, N'Smart Tivi 4K UHD Samsung 50 inch 50NU7090', CAST(14890000 AS Decimal(18, 0)), N'Viền màn hình siêu mỏng ấn tượng
Smart Tivi 4K UHD Samsung 50 inch 50NU7090 sở hữu thiết kế hiện đại, sang trọng với viền màn hình mỏng đem đến cảm giác trải nghiệm hình ảnh rộng hơn. Thêm vào đó, phần chân đế chắc chắn cho phép tivi có thể đứng vững trên mọi chất liệu bề mặt phẳng khác nhau như: Gỗ, thảm, nhung, kính,... Hơn nữa, để tối ưu hơn cho không gian lắp đặt, người dùng hoàn toàn có thể treo tường.

 

Smart Tivi 4K UHD Samsung 50 inch 50NU7090 dễ dàng phối hợp với nội thất 

Thiết kế hài hòa, bắt mắt, phù hợp nhiều không gian
 

Hình ảnh sắc nét, chi tiết với độ phân giải 4K UHD
Smart Tivi Samsung 50NU7090 có màn hình độ phân giải 4K Ultra HD cho độ chi tiết và rõ nét về hình ảnh gấp 4 lần so với các tivi sử dụng chuẩn Full HD thông thường. Nhờ đó mà những chi tiết dù rất nhỏ bạn cũng có thể nhìn thấy rõ, cho dù phóng to hình ảnh lên cũng không bị vỡ nét, nhòe. 

Tận hưởng hình ảnh chất lượng HDR
Giờ đây bạn đã có thể trải nghiệm hình ảnh tuyệt đẹp trong từng khung hình sáng tối với chất lượng HDR như rạp phim ngay tại ngôi nhà mình. Với công nghệ HDR tích hợp, hình ảnh sẽ được thể hiện rõ nét, sống động như ngoài đời thực.

 

Smart Tivi 4K UHD Samsung 50 inch 50NU7090 có khả năng hiển thị hình ảnh cực nét

Công nghệ HDR tăng độ tương phản màu sắc
 

Sắc màu chân thực sống động với PurColour
Cảm nhận màu sắc chân thực sống động với công nghệ PurColour. Bạn sẽ thấy mình đang lạc vào thế giới đầy màu sắc và tận hưởng từng khoảnh khắc sắc nét đến từng chi tiết.

Công nghệ UHD Dimming
Smart Tivi Samsung 50NU7090 tích hợp công nghệ UHD Dimming với 3 bước nâng cấp hình ảnh giúp tăng cường độ chi tiết hiển thị của hình ảnh, tối ưu hóa màu sắc, độ nét và tăng cường độ tương phản. Nhờ vậy mà từng khoảnh khắc và phút giây diễn ra trên màn hình đều mang lại cho bạn cảm xúc chân thực khó quên.

 

Smart Tivi 4K UHD Samsung 50 inch 50NU7090 tái tạo màu đen và trắng tối ưu

UHD Dimming hoàn thiện chất lượng hình ảnh hiển thị
 

Tính năng SmartThings
Tính năng SmartThings giúp TV trở thành bảng điều khiển hệ sinh thái smart home trong ngôi nhà. Bạn có thể kết nối và điều khiển tất cả các thiết bị thông minh đã kết nối với tivi như: Tủ lạnh cho đến điện thoại, máy giặt, loa, đèn, camera, chuông cửa,... cho trải nghiệm nhà thông minh đầy tiện nghi.

Đồng bộ & chia sẻ nội dung dễ dàng
Hãy tận dụng kho lưu trữ Samsung Cloud miễn phí. Kết nối mượt mà với các thiết bị thông minh Samsung để lưu giữ toàn bộ nội dung hình ảnh. Chỉ cần chia sẻ ảnh chụp từ điện thoại và xem ngay trên TV hoặc màn hình tủ lạnh.
**Lưu ý: Tính năng này chỉ tương thích với một số thiết bị.

 

Smart Tivi 4K UHD Samsung 50 inch 50NU7090 có thể điều khiển bằng điện thoại từ xa thông minh

Điều khiển tivi bằng điện thoại qua ứng dụng SmartThings
 

Cài đặt nhận thông báo
Bạn không muốn bỏ lỡ những nội dung được phát sóng? Nhận thông báo hiển thị ngay trên TV cùng với cập nhật tình trạng các thiết bị IoT trong ngôi nhà của bạn, nhắc lịch và thông báo các chương trình yêu thích. Bạn còn có thể cài đặt để nhận thông báo ngay trên điện thoại hoàn toàn dễ dàng.
**Lưu ý: Tính năng này chỉ tương thích với một số thiết bị.

Tích hợp sẵn Steam Link
Đắm chìm trong những màn game tốc độ cao ưa thích của bạn ngay trên TV màn hình lớn được tích hợp sẵn Steamlink. Trải nghiệm game sống động hấp dẫn, không còn bó buộc không gian, giới hạn tầm nhìn trên màn hình máy tính.
**Lưu ý: Dịch vụ Steamlink và GUI có thể khác nhau tùy theo khu vực.

 

Smart Tivi 4K UHD Samsung 50 inch 50NU7090 cho trải nghiệm sống động và chân thực

Chiếu màn hình lên tivi bằng Miracast (Screen Mirroring)
 

Xem tivi không cần mua đầu thu
Đặc biệt, Smart Tivi Samsung 50NU7090 được tích hợp sẵn bộ thu giải mã truyền hình KTS DVB-T2/C, cho phép bạn thu và theo dõi nhiều kênh truyền hình số với chất lượng hình ảnh sắc nét, âm thanh sống động theo tiêu chuẩn kỹ thuật số thế hệ mới DVB-T2/C. 

Chia sẻ nội dung dễ dàng với cổng kết nối đa dạng
Smart Tivi Samsung 50NU7090 cho phép bạn chia sẻ nội dung lên màn hình tivi dễ dàng nhờ nhiều cổng kết nối đa dạng mà thiết bị được tích hợp. Với cổng HDMI, bạn có thể chia sẻ nội dung từ máy tính laptop, PC cá nhân lên màn hình, trình chiếu slideshow,... Kết nối USB, cho phép người dùng phát trực tiếp các nội dung định dạng hỗ trợ như trình chiếu ảnh, xem phim, nghe nhạc trực tiếp từ USB mà không cần qua thiết bị chuyển tiếp, mang lại trải nghiệm thú vị không kém so với các dòng TV khác trên thị trường hiện nay.', CAST(N'2019-10-05T00:00:00.000' AS DateTime), N'SmartTV4KUHDSamsung50inch.jpg', N'SmartTV4KUHDSamsung50inch1.jpg', N'SmartTV4KUHDSamsung50inch2.jpg', 30, 2, 1, 5)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (19, N'Smart Tivi LED HD Samsung 32 inch 32N4300', CAST(4890000 AS Decimal(18, 0)), N'Thiết kế sang trọng, hiện đại
Smart Tivi LED HD Samsung 32 inch 32N4300 sở hữu kiểu dáng sang trọng, hiện đại phù hợp lắp đặt cho mọi không gian nội thất phòng khách, phòng ngủ, phòng giải trí, phòng họp, phòng học,... Phần chân đế thiết kế vững chãi cho phép thiết bị có thể đứng vững trên nhiều chất liệu mặt phẳng khác nhau. Hơn nữa, để tối ưu hơn cho không gian hẹp, người dùng hoàn toàn có thể treo tường giúp tiết kiệm diện tích.

 

Smart Tivi LED HD Samsung 32 inch 32N4300 kiểu dáng tinh tế, sang trọng

Thiết đẹp mắt, trang nhã cùng đường viền mỏng
 

Công nghệ Micro Dimming Pro tăng cường độ tương phản
Công nghệ Micro Dimming Pro của Samsung giúp tăng cường độ tương phản mang đến hình ảnh rõ nét với sắc đen sâu thẳm cùng sắc trắng tinh khiết. Nhờ vậy mà hình ảnh có chiều sâu hơn.

Công nghệ Clean View lọc nhiễu giảm nhòe hình ảnh
Công nghệ Clean View phân tích nội dung với một thuật toán tăng cường, lọc nhiễu, giảm nhòe, tạo sự đột phá vượt trội về chất lượng hình ảnh. Nhờ đó mà bạn và gia đình có thể thoải mái tận hưởng chất lượng hình ảnh rõ nét trong từng khung hình.

 

Smart Tivi LED HD Samsung 32 inch 32N4300 lọc nhiễu, giảm nhòe

Công nghệ Ultra Clean View tạo sự đột phá vượt trội về chất lượng hình ảnh
 

Hình ảnh sống động chân thực với PurColour
Cảm nhận màu sắc chân thực sống động trong từng khung hình với công nghệ PurColour. Bạn sẽ thấy mình đang lạc vào thế giới đầy màu sắc và tận hưởng từng khoảnh khắc sắc nét đến từng chi tiết.

 

Smart Tivi LED HD Samsung 32 inch 32N4300 sắc màu sống động

Màu sắc rực rỡ, sắc nét
 

Âm thanh Dolby Digital Plus
Smart Tivi Samsung 32N4300 trang bị công nghệ Dolby Digital Plus kết hợp với 2 loa có tổng công suất 10W, đem đến âm thanh ấn tượng. Giờ đây, bạn có thể thoải mái giải trí, thưởng thức các chương trình ca nhạc, thể thao tại nhà... sau những giờ làm việc căng thẳng, mệt mỏi.

 

Smart Tivi LED HD Samsung 32 inch 32N4300 mang đến cho bạn và gia đình những giây phút thư giãn thoải mái

Âm thanh trong trẻo tạo ra những bản nhạc sống động
 

Giải trí tại gia ấn tượng
Hãy kết nối tivi đến với các thiết bị nguồn phát, giải trí trong nhà để bạn và gia đình có thể tận hưởng hàng ngàn nội dung thú vị ngay trên chính màn hình tivi của mình như: Games, phim truyện hay chương trình truyền hình hấp dẫn...

Chia sẻ nội dung dễ dàng
Smart Tivi HD Samsung 32N4300 cho phép bạn chia sẻ nội dung lên màn hình tivi dễ dàng nhờ nhiều cổng kết nối đa dạng mà thiết bị được tích hợp. Với cổng HDMI, bạn có thể chia sẻ nội dung từ máy tính laptop, PC cá nhân lên màn hình, trình chiếu slideshow,... Kết nối USB, cho phép người dùng phát trực tiếp các nội dung định dạng hỗ trợ như trình chiếu ảnh, xem phim, nghe nhạc trực tiếp từ USB mà không cần qua thiết bị chuyển tiếp, mang lại trải nghiệm thú vị không kém so với các dòng TV khác trên thị trường hiện nay.', CAST(N'2019-10-10T00:00:00.000' AS DateTime), N'SmartTVHDSamsung32inch.jpg', N'SmartTVHDSamsung32inch1.jpg', N'SmartTVHDSamsung32inch2.jpg', 30, 2, 1, 5)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (20, N'Tivi LED Full HD LG 43 inch 43LK5000PTA ', CAST(6090000 AS Decimal(18, 0)), N'Thiết kế hiện đại, sang trọng

Tivi LED Full HD LG 43 inch 43LK5000PTA sở hữu thiết kế hiện đại, màu sắc tinh tế phù hợp lắp đặt trong mọi không gian nội thất. Bạn có thể lắp tivi cho phòng khách, phòng ngủ, phòng giải trí, hay phòng họp đều phù hợp. Thêm vào đó, tivi có thiết kế màn hình phẳng, phần chân đế có thể tháo rời giúp tối ưu diện tích lắp đặt, cho phòng lắp thêm tiện nghi.




Hình ảnh chất lượng Full HD

Tivi LED LG 43LK5000PTA trang bị màn hình kích thước 43 inch, độ phân giải Full HD, cho hình ảnh hiển thị rõ ràng, đầy đủ các chi tiết với độ nét cao. Nhờ đó, bạn có thể thoải mái thưởng thức các nội dung phim truyện và chương trình truyền hình với độ nét cao 1080p.




Âm thanh DTS Virtual: X

Tivi LG 43LK5000PTA sử dụng công nghệ DTS: X tạo hiệu ứng âm thanh ba chiều đem đến cho người dùng trải nghiệm giải trí ấn tượng. Kết hợp hệ thống loa tích hợp sẵn, tivi cung cấp âm thanh phong phú, sống động đến tai người nghe. 




Giải trí tại gia ấn tượng

Hãy kết nối tivi đến với các thiết bị nguồn phát, giải trí trong nhà để bạn và gia đình có thể tận hưởng hàng ngàn nội dung thú vị ngay trên chính màn hình tivi của mình như: Games, phim truyện hay chương trình truyền hình hấp dẫn...', CAST(N'2019-10-01T00:00:00.000' AS DateTime), N'TV_LEDFullHDLG43inch.jpg', N'TV_LEDFullHDLG43inch1.jpg', N'TV_LEDFullHDLG43inch2.jpg', 30, 2, 5, 5)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (21, N'Smart TV LED 4K HDR Sony 65 inch KD-65X7000G (2019)', CAST(25900000 AS Decimal(18, 0)), N'Thiết kế sang trọng, hiện đại
Smart TV LED 4K UHD HDR Sony 65 inch KD-65X7000G sở hữu kiểu dáng sang trọng, hiện đại với khung viền mỏng, đem đến cảm giác trải nghiệm hình ảnh rộng hơn. Thiết bị có thiết kế thông minh, cách bố trí dây cáp giấu dây gọn gàng giúp tối ưu không gian lắp đặt, tạo vẻ tiện nghi cho căn phòng. Thêm vào đó, phần chân đế vững chãi cho phép tivi có thể đứng vững trên mọi chất liệu mặt phẳng khác nhau. 

Smart TV LED 4K UHD HDR Sony 65 inch KD-65X7000G Thiết kế sang trọng, hiện đại
Thiết kế sang trọng, hiện đại


Hình ảnh với độ phân giải 4K Ultra HD
Smart Tivi Sony KD-65X7000G trang bị màn hình 65 inch với độ phân giải 4K Ultra HD sắc nét, cho hình ảnh chi tiết gấp 4 lần so với TV Full HD. Nhờ đó mà người dùng có thể thoải mái xem nhiều nội dung với chất lượng cao như các bộ phim bom tấn, chương trình thể thao, truyền hình,...


Video giới thiệu Sony BRAVIA - X70G/XG70 Series - 4K HDR TV


Công nghệ xử lý hình ảnh 4K X-Reality PRO
Với công nghệ xử lý hình ảnh 4K X-Reality PRO đặc biệt đến từ Sony giúp tăng cường độ sắc nét của hình ảnh, nâng cấp chất lượng hiển thị sao cho đến gần chuẩn 4K. Mọi khung hình được phân tích và tăng cường nhờ những bộ cơ sở dữ liệu độc đáo giúp tìm ra sắc độ, độ bão hòa và độ sáng chính xác, mang đến độ phân giải tuyệt đỉnh của TV 4K.

Smart TV LED 4K UHD HDR Sony 65 inch KD-65X7000G trang bị Công nghệ xử lý hình ảnh 4K X-Reality PRO
Công nghệ xử lý hình ảnh 4K X-Reality PRO


Hình ảnh tương phản rõ nét với công nghệ HDR
Công nghệ dải tần nhạy sáng cao (HDR) tăng cường dải tần rộng của hình ảnh, tăng độ tương phản giữa màu trắng sáng và màu đen tối. Mọi điểm ảnh sẽ được tái tạo chính xác hơn, bất kể độ phân giải, để từng khung hình trở nên thật sống động với độ chi tiết phong phú hơn. Phim và chương trình TV ở chế độ HDR sẽ có chất lượng gần với bản ghi gốc và mục đích của đạo diễn hơn với độ sáng, độ tương phản và màu sắc trung thực hơn, mang đến một trải nghiệm xem thật như cuộc sống.

Smart TV LED 4K UHD HDR Sony 65 inch KD-65X7000G Hình ảnh tương phản rõ nét với công nghệ HDR
Hình ảnh tương phản rõ nét với công nghệ HDR


Gam màu rộng hơn với công nghệ hiển thị TRILUMINOS
Sony KD-65X7000G tích hợp công nghệ hiển thị TRILUMINOS có khả năng tái tạo ưu việt màu đỏ, màu lục và màu lam - những màu nổi tiếng là khó hiển thị chính xác trên TV. Nhờ công nghệ này, từng sắc thái màu tinh tế đều được tái tạo để cho chất lượng hình ảnh đẹp mắt, chân thực.

Smart TV LED 4K UHD HDR Sony 65 inch KD-65X7000G Gam màu rộng hơn với công nghệ hiển thị TRILUMINOS
Gam màu rộng hơn với công nghệ hiển thị TRILUMINOS


Tận hưởng âm thanh ClearAudio+ chân thực
Công nghệ ClearAudio+ có trên TV Sony mang đến trải nghiệm nghe chân thực cho người dùng. ClearAudio+ tinh chỉnh âm thanh tivi giúp bạn chìm đắm và dâng tràn cảm xúc như thể mọi thứ đang diễn ra xung quanh bạn. Nhạc và lời thoại được phát rõ ràng, tách biệt hơn ở bất kỳ nội dung nào mà bạn đang xem.

Tận hưởng âm thanh ClearAudio+ chân thực trên Smart TV LED 4K UHD HDR Sony 65 inch KD-65X7000G
Tận hưởng âm thanh ClearAudio+ chân thực


Hệ điều hành Linux giao diện trực quan
Tivi LED Sony KD-65X7000G tích hợp hệ điều hành Linux với giao diện trực quan, thân thiện với người dùng, tích hợp sẵn kho ứng dụng phong phú với nhiều ứng dụng quen thuộc với người dùng. Bạn có thể thoải mái đọc báo, lướt web, xem phim trực tuyến ngay trên chính chiếc tivi này mà không cần phải dùng đến laptop hay smartphone.

Smart Tivi Sony KD-65X7000G chạy Hệ điều hành Linux 
Hệ điều hành Linux giao diện trực quan


Truy cập Youtube chỉ với 1 nút bấm
Smart Tivi 4K UHD Sony KD-65X7000G cho phép người dùng truy cập Youtube trực tiếp và thưởng thức tất cả video mà bạn yêu thích dễ dàng. Trên remote - điều khiển từ xa của tivi, bạn có thể duyệt tìm nội dung dễ dàng, hay có thể mở xem các đoạn clip với "tốc độ ánh sáng".

Smart Tivi 4K UHD Sony KD-65X7000G cho phép Truy cập Youtube chỉ với 1 nút bấm
Truy cập Youtube chỉ với 1 nút bấm


Tính năng Smart Plug and Play
Tất cả nội dung bạn yêu thích trên điện thoại thông minh hay ổ USB giờ đây có thể được thưởng thức trên màn hình lớn của TV với hình ảnh đẹp đến từng chi tiết. Tính năng Smart Plug and Play giúp bạn dễ dàng chia sẻ video, ảnh và nhạc từ nhiều thiết bị.

Smart Tivi Sony KD-65X7000G có Tính năng Smart Plug and Play
Tính năng Smart Plug and Play


Thiết kế giấu cáp cho không gian gọn gàng
Nhờ giải pháp giấu dây cáp, giúp thiết bị của bạn càng trở nên sang trọng và tinh tế hơn khi đặt trong không gian phòng. Với thiết kế giấu cáp đặc biệt bên trong chân đế, giờ đây không gian lắp đặt của phòng bạn sẽ không còn trông bừa bộn, lộn xộn bởi những sợi cáp thừa từ thiết bị điện tử nữa, thay vào đó là một không gian gọn gàng, sạch sẽ. Cáp nguồn và cáp màn hình sẽ được giấu gọn trong chân đế và cố định bằng giá đỡ cáp kèm theo máy.', CAST(N'2019-10-10T00:00:00.000' AS DateTime), N'SmartTVLED_4K_HDR_Sony65inch.jpg', N'SmartTVLED_4K_HDR_Sony65inch1.jpg', N'SmartTVLED_4K_HDR_Sony65inch2.jpg', 20, 2, 4, 5)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (22, N'Bàn chải đánh răng điện Philips Sonicare HX3130 Trắng phối hồng ', CAST(1299000 AS Decimal(18, 0)), N'Thiết kế công thái học, vừa vặn mọi bàn tay
Bàn chải đánh răng điện Philips Sonicare HX3130 thiết kế tay cầm công thái học, gọn, nhẹ, vừa vặn mọi kích cỡ lòng bàn tay. Bạn có thể thoải mái sử dụng tương tự như với bàn chải đánh răng bằng tay thông thường.

Bàn chải đánh răng điện Philips Sonicare HX3130 Thiết kế công thái học, vừa vặn mọi bàn tay
Thiết kế công thái học, vừa vặn mọi bàn tay


Loại bỏ mảng bám tốt hơn bàn chải bằng tay
Đánh răng bằng bàn chải tay thông thường khó có thể loại bỏ những mảng bám lâu ngày. Nhưng khi sử dụng với bàn chải điện Philips Sonicare HX3130, bạn sẽ thấy điều kỳ diệu xảy ra. Mảng bám sẽ nhanh chóng được loại bỏ nhờ chuyển động của bàn chải kết hợp hàng ngàn đầu cọ li ti chuyển động mỗi phút, giúp len lỏi sâu vào các vị trí khó vệ sinh.

Bàn chải đánh răng điện Philips Sonicare HX3130 Loại bỏ mảng bám tốt hơn bàn chải bằng tay
Loại bỏ mảng bám tốt hơn bàn chải bằng tay


Đầu bàn chải góc cạnh
Cổ góc cạnh độc đáo của đầu bàn chải đánh răng này giúp bạn dễ dàng sử dụng. Hơn nữa thiết kế của đầu chải đặc biệt giúp đầu cọ có thể đi sâu và loại bỏ mảng bám ở những khu vực khó tiếp cận như khu vực mặt trong nướu sâu bên trong răng số 6-7-8.

Bàn chải đánh răng điện Philips Sonicare HX3130 Đem lại nụ cười trắng sáng
Thiết kế gọn nhẹ, dễ dàng cầm nắm


Đánh răng chuẩn 2 phút theo lời khuyên chuyên gia nha khoa 
Bàn chải đánh răng điện Philips Sonicare HX3130 được cài đặt sẵn thời gian hoạt động 2 phút. Theo lời khuyên của các chuyên gia nha khoa thì: thời gian 2 phút đánh răng được coi là thời gian tiêu chuẩn cho mọi người dùng, giúp bạn loại bỏ vi khuẩn, mảng bám cũng như chất bẩn bám trong răng, nướu. Đánh răng với thời gian ít hơn, răng sẽ không được sạch mảng bám.

Bàn chải đánh răng điện Philips Sonicare HX3130 Đánh răng chuẩn 2 phút theo lời khuyên chuyên gia nha khoa 
Đánh răng chuẩn 2 phút theo lời khuyên chuyên gia nha khoa


Đem lại nụ cười rạng rỡ 
Đánh răng 2 lần một ngày với bàn chải Philips Sonicare HX3130 sẽ giúp bạn giảm nguy cơ mắc các bệnh răng miệng, sâu răng. Thêm vào đó, đánh răng và vệ sinh răng thường xuyên còn giúp răng giữ được độ bền màu, không bị xỉn, ố vàng, nhờ vậy bạn có thể tự tin nở nụ cười khi trò chuyện với người đối diện.

', CAST(N'2019-10-01T00:00:00.000' AS DateTime), N'BanchaiDienPhilipsSonicareTrangHong.jpg', N'BanchaiDienPhilipsSonicareTrangHong1.jpg', N'BanchaiDienPhilipsSonicareTrangHong2.jpg', 20, 2, 6, 10)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (23, N'Laptop Dell Inspiron 3580 70184569 15.6 inches Đen ', CAST(15990000 AS Decimal(18, 0)), N'Về thiết kế,
Thoạt nhìn Dell Inspiron 3580 và Dell Vostro 3580 có vẻ ngoài gần như giống nhau y hệt, chỉ khác nhau cái tên Vostro hay Inspiron mà thôi, ngay cả mã đuôi 3580 cũng giống nhau luôn.

Thiết kế mạnh mẽ nhưng có phần cổ điển

Thiết kế mạnh mẽ nhưng có phần cổ điển

Nhưng nếu nhìn kỹ vào họa tiết mặt lưng cũng như chiếu nghỉ của Dell Inspiron 3580 thì chúng ta sẽ thấy họa tiết vân hình thoi thay vì hình vuông như trên Vostro 3580. Tất nhiên, để tiết kiệm giá thành thì toàn bộ phần thân máy từ đầu tới cuối vẫn sử dụng chất liệu nhựa.

Họa tiết vân hình thoi là điểm phân biệt giữa Inspiron 3580 và Vostro 3580

Họa tiết vân hình thoi là điểm phân biệt giữa Inspiron 3580 và Vostro 3580

Tương tự như Vostro 3580 thì Inspiron 3580 cũng giữ lại thiết kế sử dụng ổ đĩa quang và có một chút khác biệt trong việc bố trí các cổng kết nối.

Inspiron 3580 cũng giữ lại thiết kế sử dụng ổ đĩa quang

Inspiron 3580 cũng giữ lại thiết kế sử dụng ổ đĩa quang

Cạnh trái lần lượt là cổng sạc, cổng HDMI, cổng LAN, 2 cổng USB 3.1 và cổng tai nghe 3.5 mm.

Cạnh trái của máy

Cạnh trái của máy

Cạnh phải lần lượt là ổ đĩa quang, cổng USB 3.1 và khe cắm thẻ nhớ SD.

Cạnh phải của máy

Cạnh phải của máy

Về màn hình,
Viền màn hình của Inspiron 3580 vẫn khá dày, chứ không giống như xu hướng siêu mỏng như hiện nay. Nếu so với màn hình của Vostro 3580 thì Inspiron 3580 tốt hơn nhiều. Màn hình 15.6 inch với độ phân giải FHD cho chất lượng hiển thị tốt, màu sắc tươi sáng.

Viền màn hình vẫn khá dày

Viền màn hình vẫn khá dày

Tuy nhiên điểm yếu của màn hình này là không có góc nhìn rộng. Bù lại khả năng chống chói của chiếc màn hình này khá tốt.

Bàn phím và Touchpad,
Tương tự như nhiều mẫu laptop Dell khác thì bàn phím vẫn là ưu điểm của dòng laptop này. Bàn phím trên Inspiron 3580 sở hữu những đặc điểm như bề mặt phím nhám, kích thước phím nhỏ, khoảng cách hợp lý và phím bấm nảy đều, cho cảm giác gõ thoải mái trong thời gian dài.

Bàn phím và touchpad vẫn luôn là ưu điểm của Dell

Bàn phím và touchpad vẫn luôn là ưu điểm của Dell

Bàn di chuột cũng tương tự như phím bấm, cũng có một bề mặt nhám, cho cảm giác di rất đã tay và đồng thời con trỏ chuột phía trên cũng hoạt động rất nhạy.', CAST(N'2019-10-15T00:00:00.000' AS DateTime), N'LaptopDellInspiron358015.6inch.jpg', N'LaptopDellInspiron358015.6inch1.jpg', N'LaptopDellInspiron358015.6inch2.jpg', 15, 3, 7, 3)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (24, N'Laptop Dell G3 15 3590 (N5I5518W) 15.6 inches (Đen)', CAST(23200000 AS Decimal(18, 0)), N'Cảm hứng thiết kế từ game thủ
Laptop Dell G3 15 3590 (N5I5518W) thuộc dòng sản phẩm G-series 2019 của Dell với thiết kế dựa trên những phản hồi tích cực từ game thủ. Sản phẩm trang bị màn hình 156 inch Full HD, tấm nền IPS với viền màn hình mỏng ở 3 cạnh. Lớp chống chói phủ ngoài bề mặt đảm bảo góc quan sát rộng, dễ nhìn trong các môi trường khác nhau.


Laptop Dell G3 15 3590 (N5I5518W)
Cảm hứng thiết kế từ game thủ


G3 3590 hướng đến giới trẻ và cũng là mẫu laptop game tầm trung đáng cân nhắc hiện nay. Sản phẩm mang dáng vẻ hiện đại, chất lượng phần cứng theo tiêu chuẩn của Dell cùng cấu hình đủ mạnh cho nhu cầu chơi game giải trí lẫn đáp ứng công việc hàng ngày.


Laptop Dell G3 15 3590 (N5I5518W)
Cấu trúc cứng cáp

Cấu hình mạnh mẽ, ổn định
Dell G3 được trang bị bộ vi xử lý Intel Core i5-9300H 2.4GHz up to 4.1GHz, 8MB, dung lượng RAM 8GB cùng đồ họa Nvidia GeForce GTX 1650 4GB GDDR5 đảm bảo xử lý được mọi tác vụ phức tạp cũng như giải quyết hầu hết các game nổi tiếng hiện nay mà không vấp phải bất kỳ khó khăn gì. Ổ cứng 512GB SSD cho bạn thoải mái lưu trữ dữ liệu cần thiết.


Laptop Dell G3 15 3590 (N5I5518W)
Hoạt động mạnh mẽ


Thiết kế bàn phím bền bỉ, thoải mái
Dell luôn tập trung phát triển vào thiết kế và chất lượng bàn phím của tất cả dòng laptop của hãng và chiếc bàn phím lần này cũng không làm cho người dùng phải thất vọng. Đây không hoàn toàn là một chiếc bàn phím chỉ dành cho chơi game mặc dù các phím được thiết kế nhô cao, có độ đàn hồi tốt và được bố trí hợp lý, tạo cảm giác thoải mái cho các gamers.', CAST(N'2019-10-10T00:00:00.000' AS DateTime), N'LaptopDellG3_15_3590_15.6inchesDen1.jpg', N'LaptopDellG3_15_3590_15.6inchesDen2.jpg', N'LaptopDellG3_15_3590_15.6inchesDen.jpg', 15, 3, 7, 3)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (25, N'Laptop Dell Vostro 5481 70175946 14 inches', CAST(24200000 AS Decimal(18, 0)), N'Thiết kế tinh tế
Laptop Dell Vostro 5481 sở hữu thiết kế đẹp mắt, chắc chắn với lớp vỏ ngoài cứng cáp, vuông vắn cùng màu sắc ấn tượng giúp tôn thêm vẻ hiện đại, sang trọng. Các góc cạnh được bo tròn tạo cảm giác chắc tay cho người dùng khi cầm nắm, có thể di chuyển đi mọi nơi mà không lo tốn diện tích hoặc mang vác nặng.

Laptop Dell Vostro 5481 V4I5229W 14 inches Kiểu dáng sang trọng 

Kiểu dáng sang trọng


Màn hình 14 inch
Dell Vostro 5481 sở hữu màn hình 14.0 inch giúp hiển thị hình ảnh Full HD (1920 x 1080) để xem mọi thứ tốt hơn đẹp và sắc nét, màu sắc tươi tắn, sống động cùng với tấm nền chống chói Anti-glare giúp bạn có thể trải nghiệm tốt hơn ở môi trường bên ngoài.

Laptop Dell Vostro 5481 V4I5229W 14 inches Màn hình với độ phân giải Full HD

Màn hình với độ phân giải Full HD

Bộ vi xử lý Intel Core i7
Được trang bị bộ vi xử lý Intel Core i7-8565U tốc độ lên đến 4.6GHz, đem lại cho máy một sức mạnh xử lý ổn định và tiết kiệm điện năng hiệu quả. Cùng bộ nhớ RAM DDR4 dung lượng 8GB cho hiệu suất xử lý tốt cũng như đáp ứng các tác vụ đa nhiệm mượt mà các ứng dụng. Chipset đồ họa GeForce MX130 2GB + UHD Graphics 620 hỗ trợ xử lý hiệu ứng hình ảnh 3D các công việc liên quan đến đồ hoạ, đáp ứng giải trí với game đồ họa nặng. Ngoài ra, Dell còn trang bị cho máy ổ cứng 1TB HDD 5400rpm và SSD 128GB giúp máy hoạt động mượt mà hơn, khởi động nhanh chóng hơn, cho phép bạn lưu trữ số lượng nội dung đáng kinh ngạc mà không phải lo lắng về hết dung lượng.

Laptop Dell Vostro 5481 V4I5229W Hiệu năng mạnh mẽ

Hiệu năng mạnh mẽ

USB Type C – tất cả trong một kết nối
Laptop Dell Vostro 5481 sở hữu cổng kết nối USB Type C đa dụng hiện nay, với thiết kế đồng đẳng giúp bạn có thể cắm cổng kết nối ở bất cứ chiều nào. Ngoài ra với công nghệ này sẽ cho tốc độ truyền tải dữ liệu nhanh gấp 10 lần so với các cổng kết nối cũ hiện nay.

Thời lượng pin lâu hơn
Được thiết kế để phù hợp với phong cách sống năng động hiện nay, Dell Vostro 5481 sẽ cung cấp cho bạn thời lượng pin để có thể sử dụng suốt cả ngày. Với công nghệ pin Lithium Polymer sẽ cho máy khả năng vận hành liên tục suốt nhiều giờ. Điểm đặc biệt của dòng pin Lithium Polymer có thể duy trì được năng lượng sạc lần đầu cho dù sau hàng trăm chu kỳ sạc, giúp bạn khỏi phải lo lắng về hao mòn hao mòn điện năng pin.', CAST(N'2019-10-10T00:00:00.000' AS DateTime), N'LaptopDellVostro5481_14inches.jpg', N'LaptopDellVostro5481_14inches1.jpg', N'LaptopDellVostro5481_14inches2.jpg', 15, 3, 7, 3)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (26, N'Laptop Asus Vivobook A512FA-EJ440T 15.6 inches Bạc ', CAST(15884000 AS Decimal(18, 0)), N'Điểm ấn tượng đầu tiên là ASUS đưa màu sắc trẻ trung vào lớp vỏ của sản phẩm, đánh mạnh vào nhu cầu tìm kiếm một chiếc laptop có sự nổi bật ngay từ cái nhìn đầu tiên của giới trẻ. Khác với gam màu Bạc và Xám truyền thống, ASUS VivoBook 14/15 còn có thêm lựa chọn Cam san hô và Xanh khổng tước trông khá bắt mắt.



Ngoài màu sắc, VivoBook năm nay nhanh chóng được thừa hưởng những ưu điểm từ dòng cao cấp như thiết kế viền màn hình mỏng NanoEdge giúp tỉ lệ màn hình/thân máy đạt 87%, bản lề ErgoLift hay thậm chí là tích hợp cả cảm biến vân tay để mở khóa máy nhanh.



VivoBook 14/15 năm nay có độ mỏng chỉ 19.5mm và nhẹ 1.5kg (A412) / 1.68kg (A512), giúp hành trang mỗi ngày của các bạn trẻ được gọn nhẹ hơn nhưng vẫn đảm bảo được sức mạnh xử lý cho nhiều tác vụ khác nhau.



VivoBook 14/15 được ASUS trang bị cấu hình tối ưu để giúp người dùng trẻ tăng tốc trong các tác vụ sáng tạo nội dung, giải trí đa phương tiện hay làm việc chuyên nghiệp mỗi ngày. Lần đầu tiên trên dòng máy tính phổ thông, ASUS trang bị tùy chọn SSD PCI-Express tốc độ cao dung lượng lên đến 512GB (tùy chọn từng cấu hình), đây được xem là cấu hình chỉ có trên những dòng máy cao cấp. Bạn có thể tùy chọn từ Core i3 đến i7 thế hệ thứ 8 của Intel, hoặc Ryzen Mobile R3/ R5/ R7 đến từ AMD, RAM DDR4 tối thiểu 4GB. ASUS cho biết, nếu người dùng không có đủ "hầu bao" vẫn có thể chọn model có ổ cứng HDD và sau này có thể nâng cấp thêm SSD (có slot M2 NVMe) khi có điều kiện.



Bản lề thông minh ErgoLift tự động nâng bàn phím lên 2 độ khi mở máy ở góc 135 độ, tạo nên góc đánh máy thoải mái nhất. Kết hợp cùng hành trình phím 1.4mm, trải nghiệm đánh máy trên VivoBook 14/15 dễ chịu hơn dù thời gian làm việc kéo dài.', CAST(N'2019-10-01T00:00:00.000' AS DateTime), N'LaptopAsusVivobook_A512FAEJ440T_15.6inchesBac.jpg', N'LaptopAsusVivobook_A512FAEJ440T_15.6inchesBac1.jpg', N'LaptopAsusVivobook_A512FAEJ440T_15.6inchesBac2.jpg', 16, 3, 8, 3)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (27, N'Laptop Asus X409FA-EK138T 14 inches (Bạc)', CAST(12890000 AS Decimal(18, 0)), N'Màn hiển thị NanoEdge
Cho dù là công việc hay giải trí, laptop Asus X409 là chiếc máy tính xách tay mang đến hiệu năng mạnh mẽ cùng hình ảnh chân thực. Màn hình NanoEdge của máy có góc nhìn rộng 178° và lớp phủ chống lóa mờ cho trải nghiệm thực sự hấp dẫn. Công nghệ NanoEdge trên Asus X409 mang đến một màn hình hiển thị rộng hơn cho trải nghiệm giải trí nhìn tuyệt vời phục vụ cho cả công việc lẫn giải trí. Tính năng góc nhìn rộng FHD của máy còn được bổ sung lớp phủ chống chói để giảm bớt những phiền nhiễu không mong muốn từ ánh sáng chói khó chịu và tia phản xạ, vì vậy bạn có thể thực sự tập trung vào những gì trước mắt bạn.


Laptop Asus X409FA-EK138T
Màn hình rộng với độ phân giải cao


Laptop Asus X409FA-EK138T
X409 nhỏ gọn và chỉ nhẹ 1.6kg


Âm thanh tinh chỉnh bởi chuyên gia
Với sức mạnh từ bộ xử lý Intel Core thế hệ thứ 8, laptop Asus X409 sẽ giúp bạn hoàn thành mọi công việc nhanh chóng và hiệu quả. Công nghệ ASUS SonicMaster là sự kết hợp hoàn hảo giữa phần cứng, phần mềm và khả năng tinh chỉnh âm thanh được thiết kế nhằm đem đến cho bạn trải nghiệm âm thanh tuyệt vời. Bộ mã code cấp chuyên gia đảm bảo mã hóa và giải mã âm thanh chính xác, trong khi đó, các bộ khuếch đại và các loa công suất lớn cùng với các buồng cộng hưởng phù hợp hoàn hảo với Laptop Asus X409 đảm bảo mang đến âm thanh mạnh mẽ và âm trầm sâu hơn. Quá trình xử lý và tinh chỉnh tín hiệu tăng cường giúp điều chỉnh từng chi tiết tinh tế, lọc bỏ tiếng ồn và nâng cao độ rõ nét của âm thanh để bạn thực sự đắm chìm trong không gian âm thanh.


Laptop Asus X409FA-EK138T
Thiết kế thông minh và kết nối linh hoạt


Thiết kế thông minh và kết nối linh hoạt
Cấu trúc liền khối cứng cáp, thiết kế mũ phím lõm công thái học và hành trình phím 1.4mm cho trải nghiệm gõ phím thoải mái. Laptop Asus X409 được trang bị cổng USB Type-C 3.1 cho phép kết nối hai chiều, hỗ trợ thiết kế hai mặt khiến cho việc kết nối các thiết bị trở nên dễ dàng. USB-C còn đem đến tốc độ truyền dữ liệu nhanh hơn đến 10 lần so với các chuẩn kết nối USB 2.0 trước đây. Ngoài ra còn có cổng USB 3.1 Thế hệ 1 và USB 2.0, đầu ra HDMI và đầu đọc thẻ MicroSD cho phép bạn kết nối dễ dàng với tất cả các thiết bị ngoại vi hiện tại, màn hình và máy chiếu mà không gặp phiền phức.', CAST(N'2019-10-10T00:00:00.000' AS DateTime), N'LaptopAsusX409FA_EK138T_14inchesBac1.jpg', N'LaptopAsusX409FA_EK138T_14inchesBac.jpg', N'LaptopAsusX409FA_EK138T_14inchesBac2.jpg', 16, 3, 8, 3)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (28, N'Apple Macbook Air (2018) MREF2 13.3 inches 256GB Vàng', CAST(32790000 AS Decimal(18, 0)), N'Thiết kế sang trọng
Với kích thước nhỏ hơn đáng kể, MacBook Air 2018 nhẹ hơn 17%, mỏng hơn 10%, dày 0.61 inch tại điểm dày nhất của nó, trọng lượng 1.25 kg, nhẹ hơn một phần tư so với thế hệ trước. MacBook Air 2018 được tạo ra từ 100% nhôm tái chế, nhờ hợp kim nhôm này mà giúp giảm lượng khí thải carbon của MacBook Air xuống gần 50%.



Màn hình Retina IPS 13.3″
Với màn hình hiển thị HD gấp 4 lần, màn hình Retina IPS 13.3″ cung cấp màu sắc hơn 48% so với thế hệ trước. Màn hình Retina có độ phân giải màn hình 2560 x 1600 và tỷ lệ co 16:10 cho 227 pixel mỗi inch (ppi) mang đến độ chi tiết và chân thực đáng kinh ngạc. Nội dung sắc nét và rõ ràng không khác gì như bạn đang đọc tài liệu, email hay báo được in. Với màu sắc phong phú và sống động, bạn sẽ cảm thấy yêu thích hơn những thứ bạn thấy trên màn hình.

Tích hợp cảm biến Touch ID
MacBook Air 2018 có tích hợp cảm biến Touch ID cho phép bạn mở khóa MacBook Air bằng vân tay và xác thực danh tính của mình. Khả năng bảo mật cao cho phép bạn mua hàng trực tuyến an toàn với Apple Pay. Kết hợp với chip bảo mật của Apple T2, Security Enclave của T2 sẽ bảo vệ thông tin Touch ID của bạn. Ngoài ra, T2 cũng có bộ điều khiển SSD với mã hóa dữ liệu on-the-fly cho tất cả mọi dữ liệu được lưu trữ trên SSD để quá trình khởi động của thiết bị luôn được an toàn.



Cấu hình và kết nối
Hệ thống này được trang bị bộ vi xử lý lõi kép Intel Core i5 1.6GHz thế hệ thứ 8 và có RAM 8GB LPDDR3 2133MHz và ổ SSD 256GB. Về khả năng kết nối, Macbook Air 2018 với internet qua Wi-Fi 5 (802.11ac) và sử dụng Bluetooth 4.2 để kết nối không dây với các thiết bị ngoại vi và phụ kiện tương thích. Hai cổng Thunderbolt 3 cung cấp băng thông cao lên đến 40 Gb/s và tính linh hoạt của USB Type-C.

Bàn phím, loa
MacBook Air 2018 sử dụng bàn phím cơ chế bướm của Apple để người dùng thao tác nhanh và chính xác hơn. Mỗi phím có đèn nền riêng và hoạt động với cảm biến ánh sáng xung quanh để chiếu sáng đồng đều hơn. Bạn cũng có thể sử dụng bảng cảm ứng Force Touch, lớn hơn 20% so với thế hệ trước và có khả năng cảm biến áp lực cũng như phản hồi xúc giác.', CAST(N'2019-10-10T00:00:00.000' AS DateTime), N'AppleMacbookAir_MREF2_13.3INCHESvANG.jpg', N'AppleMacbookAir_MREF2_13.3INCHESvANG1.jpg', N'AppleMacbookAir_MREF2_13.3INCHESvANG2.jpg', 10, 3, 2, 3)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (29, N'Apple Macbook Air 2019 MVFK2 Retina 13.3 inches 128GB Bạc', CAST(29990000 AS Decimal(18, 0)), N'MacBook Air mới có nhiều điểm tương đồng với MacBook Pro
Về mặt ngoại hình, MacBook Air 2019 trông rất giống với MacBook Pro. Máy không còn logo Apple phát sáng như thế hệ cũ, thay vào đó là logo được làm bằng thép. Người dùng sẽ có 3 màu sắc để chọn lựa là Space Grey (xám), Silver (bạc) và Gold (vàng).

Apple Macbook Air 2019 MVFK2 Retina 13.3 inches 128GB Bạc (Hàng nhập khẩu)

MacBook Air 13 inch 2019 có 2 kết nối Thunderbolt 3

Khi mở MacBook Air 2019 ra, người dùng sẽ còn được thấy nhiều điểm tương đồng với MacBook Pro hơn. Cả hai đều có màn hình Retina 13.3 inch độ phân giải 2560×1600 với viền màn hình màu đen và được làm mỏng hơn MacBook Air cũ. 

Apple Macbook Air 2019 MVFK2 Retina 13.3 inches 128GB Bạc (Hàng nhập khẩu)

MacBook Air 13 inch 2019 bảo mật Touch ID

Bàn phím của MacBook Air 13 inch 2019 cũng được chuyển sang dạng bàn phím bướm (butterfly) thế hệ thứ ba, tương tự như MacBook Pro 2018. Bàn rê cũng chuyển sang dạng Force Touch với kích thước lớn hơn 20%.

Apple cũng loại bỏ toàn bộ cổng kết nối cũ, thay vào đó là trang bị hai cổng USB-C trên MacBook Air mới. Hai cổng này còn đóng vai trò của cổng Thunderbolt 3, cho phép người dùng kết nối máy với eGPU (GPU rời), màn hình độ phân giải 5K hay ổ cứng gắn ngoài với băng thông lớn. Ở cạnh phải của máy là jack cắm tai nghe 3.5mm.

Hệ thống loa của MacBook Air mới cũng được thiết kế giống MacBook Pro với hai dải loa được đặt hai bên bàn phím. Apple cho biết hệ thống loa mới của MacBook Air cho âm lượng lớn hơn 25% và âm bass gấp 2 lần thế hệ cũ.

Apple Macbook Air 2019 MVFK2 Retina 13.3 inches 128GB Bạc (Hàng nhập khẩu)

MacBook Air 13 inch 2019 bàn phím thế hệ mới

Một điểm vượt trội của MacBook Air so với những chiếc MacBook khác trong cùng tầm giá là nó được trang bị cảm biến vân tay Touch ID. Dữ liệu vân tây của người dùng được bảo vệ bên trong con chip Apple T2 như MacBook Pro. Tuy nhiên, MacBook Air sẽ không có Touch Bar như MacBook Pro.

Trong buổi ra mắt, Apple công bố MacBook Air sử dụng chip Intel Core i5 thế hệ 8 với hai nhân. Với dòng chip tiết kiệm điện này sẽ hứa hẹn cho Macbook Air mới có một thời lượng pin vượt trội.', CAST(N'2019-10-10T00:00:00.000' AS DateTime), N'AppleMacbookAir2019MVFK2Retina_13.3inchesBac.jpg', N'AppleMacbookAir2019MVFK2Retina_13.3inchesBac1.jpg', N'AppleMacbookAir2019MVFK2Retina_13.3inchesBac2.jpg', 10, 3, 2, 3)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (30, N'Chuột không dây Logitech M590 (Đen)', CAST(568000 AS Decimal(18, 0)), N'Công nghệ Logitech Flow mới
Chuột không dây Bluetooth, Wireless Logitech M590 có thể truyền dữ liệu từ máy tính này sang máy khác nhờ công nghệ Logitech Flow mới. Chuột Logitech được thiết kế với nút nhấn êm ái, giảm đến 90% tiếng động trên nút chuột thông thường, tránh ảnh hưởng những người xung quanh.





Kích thước rất gọn nhẹ
Một trong những ưu điểm khác của chuột Logitech M590 chính là kích thước nhỏ gọn và khối lượng nhẹ. Điều này khiến người sử dụng cảm thấy rất thoải mái do thiết bị có những đường gò cong giúp ôm tay. Hơn nữa, với thiết kế không dây giúp bạn thuận tiện hơn rất nhiều trong việc di chuyển và sử dụng chuột ở bất cứ đâu. Con lăn trên chuột Logitech M590 có rãnh nhỏ trên mỗi milimet giúp cho việc cuộn trang web hay tài liệu dễ dàng và chính xác hơn.





Thiết kế cải tiến với hệ thống nút ấn
Chuột không dây Bluetooth, Wireless Logitech M590 được trang bị thêm 2 nút phụ bên hông trái chuột có thể foward hay backward nhanh chóng. Ngoài ra, 2 nút này có thể lập trình theo nhu cầu thông qua phần mềm Logitech Options™.





Tiết kiệm năng lượng
Chuột Logitech M590 có thể sử dụng lên đến 2 năm chỉ với 1 pin AA. Chế độ tự động nghỉ và công tắc On/Off tiết kiệm năng lượng, giúp người dùng sử dụng tiện lợi hơn.', CAST(N'2019-10-01T00:00:00.000' AS DateTime), N'ChuotLogitechM590Den.jpg', N'ChuotLogitechM590Den1.jpg', N'ChuotLogitechM590Den2.jpg', 25, 3, 9, 10)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (31, N'Bộ bàn phím và chuột không dây Logitech MK240 ', CAST(408000 AS Decimal(18, 0)), N'Công nghệ kết nối không dây tốc độ cao
Bộ bàn phím và chuột không dây Logitech MK240 sử dụng công nghệ kết nối không dây tốc độ cao 2.4GHz, không gây mất kết nối hoặc ngắt quãng cho khoảng cách kết nối lên đến 10m. Mã hóa bàn phím 128-bit AES giúp bảo vệ thông tin cho bạn bằng cách mã hóa dữ liệu từ bàn phím và bộ phận tiếp nhận.

Bàn phím được bố trí khoa học
Bàn phím có thiết kế các phím bấm với độ nổi thấp, độ phản hồi tốt, bề mặt phím cong với các cạnh bo tròn nhẹ nhàng. Trên đó còn có các phím điều khiển đa phương tiện cho phép bạn truy cập nhanh vào trình phát nhạc, trang chủ, nút chỉnh âm lượng... 
 

Bộ bàn phím và chuột không dây Logitech MK240
Bộ bàn phím và chuột không dây Logitech MK240
 

Chuột nhỏ gọn, vừa lòng bàn tay
Chuột được ốp lớp cao su mềm hai bên giúp bám chắc tay hơn. Thiết kế nhỏ gọn, ôm sát vào lòng bàn tay giúp bạn điều khiển dễ dàng và thoải mái. Cảm biến quang 1000dpi cho phép chuột di chuyển mượt, nhẹ nhàng và chính xác trên hầu hết mọi bề mặt. 

Sử dụng pin linh hoạt, thuận tiện
​Bàn phím sử dụng 2 viên pin AAA, chuột sử dụng 1 viên pin AA và có thể thay thế được nên rất thuận tiện trong quá trình sử dụng. Bộ bàn phím và chuột không dây Logitech MK240 có thời gian sử dụng pin lâu giúp tiết kiệm chi phí tối đa cho người dùng. Sản phẩm tương thích với hầu hết các phiên bản của hệ điều hành Windows.', CAST(N'2019-10-10T00:00:00.000' AS DateTime), N'BanphimChuotLogitechMK240.png', N'BanphimChuotLogitechMK2401.png', N'BanphimChuotLogitechMK2402.png', 24, 3, 9, 10)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (32, N'Bàn phím Dell KB216 Đen', CAST(160000 AS Decimal(18, 0)), N'Kiểu dáng đơn giản, hiện đại
Là bàn phím đúng chuẩn, Dell KB216 có kiểu dáng đơn giản với các đường cắt góc cạnh sát phím, thu gọn kích thước của sản phẩm. Được trang bị đầy đủ các phím nhấn cần thiết, các phím có trường phím ngắn tạo cảm giác thoải mái và giảm mỏi trong suốt quá trình gõ. Các chữ, số trên phím được khắc nổi bằng công nghệ cao nên không lo bị nhòe hay mất nét, bền bỉ với thời gian.

​Bàn phím Dell KB216
Bàn phím Dell KB216

Công nghệ chống tràn hiệu quả
Thiết kế của bàn phím Dell KB216 có khả năng chống nước cao với khay chứa nước phía dưới các phím, chống việc nước tràn ra bảng mạch. Đặc biệt, bạn có thể dễ dàng tháo lắp để vệ sinh, giữ bàn phím luôn sạch sẽ và không bám bụi.

​Bàn phím Dell KB216
​Bàn phím Dell KB216

Kết nối máy tính qua cổng USB tiện dụng
Sản phẩm ử dụng đầu cáp thông dụng dành cho máy tính để bàn, người dùng có thể kết nối bàn phím với máy tính và sử dụng ngay mà không cần phải cài đặt. Sản phẩm tương thích tốt với tất cả hệ điều hành Windows hiện nay.', CAST(N'2019-10-01T00:00:00.000' AS DateTime), N'BanphimDellKB216Den.jpg', N'BanphimDellKB216Den1.jpg', N'BanphimDellKB216Den2.jpg', 30, 3, 7, 10)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (33, N'Tai nghe máy tính Logitech H110', CAST(151000 AS Decimal(18, 0)), N'Tai nghe Logitech H110 có thiết kế đẹp mắt với kiểu dáng gọn nhẹ, tinh tế, thuận tiện cho người sử dụng. Micro được thiết kế tối ưu cho việc chống ồn. Kết nối qua jack 3.5mm tương thích với nhiều thiết bị. Sản phẩm rất thích hợp cho những người thường xuyên sử dụng voice call, hội nghị trực tuyến...', CAST(N'2019-10-10T00:00:00.000' AS DateTime), N'TaingheLogitechH110.jpg', N'TaingheLogitechH1101.jpg', N'TaingheLogitechH1102.jpg', 30, 3, 9, 4)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (34, N'Màn hình QLED 4K Samsung LU28H750UQEXXV 28 inches (Đen) ', CAST(13510000 AS Decimal(18, 0)), N'Hình ảnh chân thực, ấn tượng
Màn hình QLED 4K Samsung LU28H750UQEXXV có độ phân giải gấp 4 lần Full HD. Tận hưởng nội dung 4K sống động từng chi tiết, cuốn bạn vào thế giới giải trí thực sự. Màn hình lớn mở rộng không gian làm việc và lướt web, dễ dàng xem nhiều hình ảnh và nội dung mà không cần phải thao tác chuột nhiều lần.


Màn hình QLED 4K Samsung LU28H750UQEXXV cho hình ảnh chân thực

Màn hình QLED 4K Samsung LU28H750UQEXXV cho hình ảnh chân thực

Hiển thị màu sắc rực rỡ
Với công nghệ chấm lượng tử cực nhỏ cùng 1 tỷ sắc màu, màn hình Samsung LU28H750UQEXXV giữ trọn vẹn hình ảnh chân thực với màu sắc chính xác. Đặc biệt với sắc xanh và sắc đỏ không bị bão hòa, những gì bạn thấy sẽ trở nên sống động vượt ngoài giới hạn của khung hình.




Màu sắc trên Samsung QLED 4K sắc nét từng chi tiết

Thiết kế mỏng, hiện đại
Với thiết kế mỏng, viền cực mảnh cùng phần thân đen nhám và chân đế chữ Y kim loại sang trọng, màn hình QLED 4K Samsung LU28H750UQEXXV mang đến vẻ đẹp đồng nhất, hòa hợp hoàn hảo với bất kỳ không gian sống.

Màn hình QLED 4K Samsung LU28H750UQEXXV thiết kế hiện đại

Màn hình QLED 4K Samsung LU28H750UQEXXV thiết kế hiện đại

Tốc độ phản hồi nhanh chóng
Màn hình Samsung truyền tải trọn vẹn những thước phim hành động bùng nổ, từng màn game gây cấn và các trận đấu thể thao kịch tính nhờ vào tốc độ phản hồi 1ms. Bạn có thể cảm nhận chuyển động nhanh cực kỳ rõ nét, mượt mà, không bị mờ, rung hay có bóng hình ảnh.', CAST(N'2019-10-10T00:00:00.000' AS DateTime), N'ManhinhQLED4KSamsung28inchesDen3.jpg', N'ManhinhQLED4KSamsung28inchesDen.jpg', N'ManhinhQLED4KSamsung28inchesDen2.jpg', 20, 3, 1, 10)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (35, N'Bộ chuyển đổi âm thanh Logitech Bluetooth Audio Adapter', CAST(555000 AS Decimal(18, 0)), N'Phù hợp với nhiều thiết bị
Thiết bị nhận tín hiệu âm thanh không dây Bluetooth V3.0 từ Smartphone, Laptop, Tablet... để phát nhạc không dây ra loa đã được kết nối vào bluetooth audio adapter. Sản phẩm hỗ trợ bất kỳ các thiết bị thông minh được trang bị kết nối Bluetooth (iPhone, Android, Windows Phone), hầu hết các máy tính bảng, các thiết bị iPod Touch hoặc trên máy tính xách tay Mac và Windows để kết nối đến hệ thống loa tại nhà.


Kết nối dễ dàng

Công nghệ kết nối Bluetooth MultiPoint
Bộ chuyển đổi âm thanh mới của Logitech sử dụng công nghệ kết nối Bluetooth MultiPoint cho phép người dùng có thể kết nối hai thiết bị cùng một lúc. Bluetooth Audio Adapter cơ bản sẽ chuyển đổi dữ liệu không dây Bluetooth thành tín hiệu analog sau đó truyền đến loa thông qua dây cắm mà chất lượng từ nguồn phát gần như không thay đổi.


Chất lượng âm thanh không đổi

Hỗ trợ cả 2 đường tín hiệu âm thanh 3.5mm và RCA
Thiết bị hỗ trợ cả 2 đường tín hiệu âm thanh 3.5mm và RCA. Người dùng chỉ cần chọn biểu tượng Bluetooth ngay trên mặt thiết bị để kết nối với thiết bị di động là có thể thưởng thức âm nhạc ngay lập tức. Khoảng cách kết nối tối đa lên đến 15m, thoải mái kết nối ở nhiều vị trí. Sản phẩm có kích thước nhỏ gọn, thiết kế trực quan dễ sử dụng, dễ mang theo người để sử dụng.', CAST(N'2019-10-10T00:00:00.000' AS DateTime), N'LogitechBluetoothAudioAdapter.jpg', N'LogitechBluetoothAudioAdapter2.jpg', N'LogitechBluetoothAudioAdapter1.jpg', 12, 3, 9, 10)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (36, N'Sạc laptop Dell 19.5V 10.8A', CAST(669000 AS Decimal(18, 0)), N'Sạc laptop Dell 19.5V 10.8A được sản xuất trên dây chuyền hiện đại, tiên tiến, kiểm soát nghiêm ngặt tất cả các khâu để đem tới sản phẩm chất lượng cao cho người sử dụng. Sản phẩm tiết kiệm điện năng và tăng cao hiệu suất sạc pin tối ưu. Dùng cho các dòng máy gồm:

Dell Precision M4600 M4700 M6300 M6400
Vostro 360
Dell Precision M6600 M6700
Dell PowerEdge 2950
Dell Alienware M14X M15x M17x M17x R3 M17x R4
Dell XPS M2010,Dell XPS M1710', CAST(N'2019-10-01T00:00:00.000' AS DateTime), N'SaclaptopDell19.5V_10.8A.jpg', N'SaclaptopDell19.5V_10.8A1.jpg', N'SaclaptopDell19.5V_10.8A2.jpg', 10, 3, 7, 10)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (37, N'Sạc Laptop Asus X451C', CAST(390000 AS Decimal(18, 0)), N'Thiết bị tăng bảo vệ quá áp, quá tải, bảo vệ đoản mạch giúp cho laptop được bảo vệ an toàn khi sử dụng, hiệu suất sử dụng lâu dài.

- Sạc Laptop Asus X451C được sản xuất trên dây chuyền hiện đại, tiên tiến, kiểm soát nghiêm ngặt tất cả các khâu để đem tới sản phẩm chất lượng cao cho người sử dụng. Sản phẩm tiết kiệm điện năng và tăng cao hiệu suất sạc pin tối ưu. Dùng cho dòng máy Laptop Asus X451C

 ', CAST(N'2019-10-01T00:00:00.000' AS DateTime), N'SacLaptopAsusX451C.jpg', N'SacLaptopAsusX451C1.jpg', N'SacLaptopAsusX451C2.jpg', 10, 3, 8, 10)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (38, N'Máy giặt lồng ngang LG FC1408S4W2, 8kg, Inverter', CAST(86900000 AS Decimal(18, 0)), N'Thiết kế cửa trước hiện đại
Máy giặt lồng ngang LG FC1408S4W2 8kg có thiết kế cửa trước hiện đại, sắc trắng trung tính sẽ làm nổi bật lên vẻ đẹp sang trọng cho không gian nội thất của gia đình. Hơn nữa với kiểu lồng giặt ngang, bạn sẽ không phải khom lưng quá nhiều để bỏ vào hoặc lấy quần áo ra khỏi máy, giúp bảo vệ cột sống của bạn.


Công nghệ Inverter
Máy giặt LG FC1408S4W2 sử dụng công nghệ Inverter truyền động trực tiếp, giúp cho máy không bị rung lắc hay gây ra tiếng ồn khó chịu trong quá trình vận hành. Đồng thời, công nghệ này sẽ giúp cho gia đình bạn tiết kiệm được chi phí đáng kể.



Bảo vệ sức khỏe cho gia đình
Được trang bị công nghệ giặt hơi nước Spa Steam, máy giặt mang đến khả năng loại bỏ lên đến 99,9% bụi bẩn và các tác nhân gây dị ứng có trong sợi vải, bảo vệ tối ưu sức khỏe cho các thành viên trong gia đình bạn.




Chống dị ứng với sức mạnh của hơi nước
Chu trình chăm sóc dị ứng sử dụng nước và nhiệt để tạo ra một tia siêu khử trùng để làm sạch quần áo trong khi vẫn nhẹ nhàng trên đó. Điều này làm giảm 99,9% chất gây dị ứng, chẳng hạn như bụi bọ có thể gây dị ứng hoặc các vấn đề hô hấp. Cải thiện chất lượng cuộc sống của bạn bằng cách duy trì một môi trường lành mạnh, không gây dị ứng.

Công nghệ giặt 6 chuyển động
Khi sử dụng máy giặt LG FC1408S4W2, quần áo của bạn sẽ được chăm sóc nhẹ nhàng nhờ công nghệ giặt 6 chuyển động mô phỏng theo bàn tay con người. Nhờ đó quần áo không chỉ được giặt sạch hiệu quả mà còn được bảo vệ bền, đẹp với thời gian.

', CAST(N'2019-10-11T00:00:00.000' AS DateTime), N'MaygiatLG_FC1408S4W2.jpg', N'MaygiatLG_FC1408S4W21.jpg', N'MaygiatLG_FC1408S4W22.jpg', 30, 4, 5, 8)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (39, N'Điều hòa Sharp AH-X9VEW, 1 chiều, 1.0HP, Inverter', CAST(5935000 AS Decimal(18, 0)), N'Thiết kế hiện đại
Điều hòa Sharp AH-X9VEW, 1 chiều, 1.0HP, Inverter sở hữu thiết kế treo tường, kiểu dáng hiện đại, kết hợp với màu sắc tinh tế, phù hợp lắp đặt trong nhiều không gian nội thất khác nhau. Bạn có thể lắp đặt điều hòa cho phòng khách, phòng ngủ, phòng giải trí, hay lắp trong văn phòng, lớp học, cửa hàng nhỏ,...

Thiết kế hiện đại

Thiết kế hiện đại

Công suất hoạt động mạnh mẽ
Điều hòa Sharp AH-X9VEW cho khả năng động mạnh mẽ với công suất 1.0HP cho khả năng làm lạnh căn phòng nhanh chóng. Sản phẩm rất phù hợp lắp đặt cho phòng nhỏ có diện tích dưới 15m2, đem đến hiệu quả làm mát tối ưu cho không gian.

Công nghệ J-Tech Inverter tiết kiệm năng lượng
Điều hòa Sharp AH-X9VEW tích hợp công nghệ J-Tech Inverter hoạt động với công suất tối đa, ở chế độ tiết kiệm năng lượng có thể làm giảm lượng điện tiêu thụ đến 60% so với máy lạnh thông thường. Nhờ mạch điện đổi chiều, chúng điều chỉnh và duy trì nhiệt độ phòng bằng cách chuyển bộ phận nén giữa chế độ hoạt động cao và thấp, thay vì chuyển chúng giữa chế độ tắt và mở hoàn toàn như các loại điều hoà thông thường.

Công nghệ J-Tech Inverter tiết kiệm năng lượng

Công nghệ J-Tech Inverter tiết kiệm năng lượng​

Công suất làm lạnh với 15 cấp độ
Với điều hoà không khí Sharp, thiết bị thay đổi công suất làm lạnh với 15 cấp độ làm lạnh, nhiều hơn công nghệ Inverter thường chỉ với 7 cấp độ. Điều này giúp thiết bị điều chỉnh cấp độ vận hành để đáp ứng nhu cầu làm lạnh tương ứng hiệu quả và êm hơn, đem lại cảm giác thoải mái hơn.

 

Làm lạnh nhanh

Làm lạnh nhanh

Chế độ Baby Sleep giúp bé ngủ ngon
Baby Sleep là chế độ đặc biệt dành cho trẻ em, người sức khỏe yếu hoặc người lớn tuổi không chịu được nhiệt độ quá lạnh. Ở chế độ này luồng lạnh sẽ thổi hướng trần nhà, không hướng thẳng xuống đất. Ngoài ra, không khí lọc trong lành nhờ Plamacluster ion, vi khuẩn nấm mốc và các tác nhân gây hại sẽ bị tiêu diệt. Máy vận hành êm, không gây ồn, sẽ đem lại một giấc ngủ ngon.

Chế độ Best Sleep cho giấc ngủ sâu
Chế độ Best Sleep với làn gió mát nhẹ, đem đến cho bạn có 1 giấc ngủ ngon. Với chế độ Best Sleep, nhiệt độ phòng sẽ được tự động điều chỉnh một cách nhẹ nhàng đủ để cung cấp nhiệt độ tối ưu cho bạn có một giấc ngủ sâu trọn vẹn.

Chế độ Best Sleep cho giấc ngủ sâu

Chế độ Best Sleep cho giấc ngủ sâu

Chế độ Gentle Cool Air - luồng gió dịu êm
Luồng gió dịu êm cho giấc ngủ say nồng. Chế độ Gentle Cool Air thổi không khí lạnh hướng lên trần nhà thay vì hướng xuống đất, nơi có các em bé, phụ nữ mang thai, người già, hay những người có cơ thể không chịu được không khí quá lạnh. Chế độ gió này sẽ đem đến cho bạn những đêm ngon giấc, khi luồng gió nhẹ dỗ dành đưa bạn vào giấc ngủ, và không đánh thức bạn lúc nửa đêm.

Chế độ Gentle Cool Air - luồng gió dịu êm

Chế độ Gentle Cool Air - luồng gió dịu êm

Môi chất lạnh thế hệ mới R32 thân thiện môi trường
Điều hòa Sharp AH-X9VEW sử dụng môi chất lạnh thế hệ mới R32. Gas R32 góp phần giảm tiêu thụ điện năng gần đến 10% so với gas R22, thân thiện với môi trường, an toàn hơn trong quá trình sử dụng.', CAST(N'2019-10-11T00:00:00.000' AS DateTime), N'DieuhoaSharpAHX9VEW.jpg', N'DieuhoaSharpAHX9VEW1.jpg', N'DieuhoaSharpAHX9VEW2.jpg', 30, 4, 10, 9)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (40, N'Tủ lạnh Hitachi R-FG560PGV7(GBK), 450L, Inverter', CAST(14949000 AS Decimal(18, 0)), N'Thiết kế hiện đại, sang trọng
Tủ lạnh Hitachi R-FG560PGV7(GBK), 450L, Inverter sở hữu kiểu dáng truyền thống với thiết kế ngăn đông trên, ngăn lạnh ở dưới. Tủ có màu sắc phối kết hợp tinh tế đáp ứng sở thích nhiều đối tượng người dùng. Đồng thời, sản phẩm phù hợp lắp đặt trong mọi không gian nội thất nhà bếp từ cổ điển đến hiện đại, đem đến cho căn bếp của gia đình sự tiện nghi trong cuộc sống sinh hoạt hàng ngày.

Thoải mái bảo quản thực phẩm
Tủ lạnh Hitachi R-FG560PGV7(GBK) có dung tích sử dụng 450 lít với dung tích ngăn lạnh 333 lít, ngăn đông 117 lít, giúp bạn thoải mái bảo quản thực phẩm hàng ngày cho gia đình. Tủ rất thích hợp sử dụng cho gia đình đông người, có trên 7 thành viên.

Giữ ẩm cho rau củ đến khoảng 92% với ngăn rau củ chuyên biệt
Hitachi R-FG560PGV7(GBK) sử dụng ngăn rau củ chuyên biệt, giúp bạn có thể bảo quản được thực phẩm luôn tươi ngon. Theo như Hitachi thông báo, thì với ngăn này, rau củ quả sẽ giữ được độ ẩm lên đến 90%, cho thời gian bảo quản và tươi ngon lâu hơn.

Hệ thống quạt kép
Hệ thống quạt kép giúp làm lạnh độc lập và hiệu quả cho cả hai ngăn - ngăn lạnh và ngăn đá, không như những tủ lạnh thông thường khác chỉ có một quạt. Hệ thống quạt kép cải tiến mới mang đến hiệu quả tiết kiệm điện năng tốt hơn và làm lạnh cực mạnh, hỗ trợ bởi bộ đôi cảm biến nhiệt Eco được trang bị cho từng ngăn, giúp nhận biết sự thay đổi nhiệt độ tại mọi thời điểm.

Máy nén Inverter hiệu suất cao
Hitachi R-FG560PGV7(GBK) trang bị máy nén Inverter, có thể điều chỉnh chế độ làm lạnh theo nhiều cấp độ khác nhau, tiết kiệm điện năng hiệu quả. Hơn nữa, Inverter còn cho khả năng làm lạnh nhanh, mạnh và hoạt động ổn định. 

Cảm biến kép thông thông minh
Tủ lạnh Hitachi có hai cảm biến nhiệt Eco, một cho ngăn đá và một cho ngăn lạnh. Bộ đôi cảm biến nhận biết sự thay đổi nhiệt độ ở từng ngăn, cho phép duy trì nhiệt độ lý tưởng tại mọi thời điểm.

Màng lọc Nano Titanium kháng khuẩn, khử mùi hiệu quả
Hitachi R-FG560PGV7(GBK) tích hợp màng mọc Nano Titanium với chất xúc tác TiO2 có tác dụng vô hiệu hoá vi khuẩn và khử mùi hiệu quả, đem đến không khí trong lành bên trong khoang tủ. Với công nghệ kháng khuẩn và khử mùi này, bạn có thể an tâm bảo quản thực phẩm, đồ uống cho gia đình. Ngoài ra, màng lọc Nano Titanium là bộ phận được sử dụng vĩnh viễn, không cần thay thế, không cần bảo trì và không tiêu tốn điện năng khi sử dụng.

Bảng điều khiển cảm ứng ngoài tủ
Tủ lạnh Hitachi R-FG560PGV7(GBK) trang bị bảng điều khiển cảm ứng được đặt nằm ngay ngoài cánh tủ trên, cho phép người dùng thuận tiện điều khiển. Với giao diện cảm ứng thông minh minh, bạn chỉ cần chạm hoặc vuốt nhẹ là có thể thiết lập được chế độ hoạt động mới cho tủ lạnh.

Đèn LED chiếu sáng tiết kiệm năng lượng
Tủ lạnh Hitachi R-FG560PGV7(GBK) sử dụng hệ thống chiếu sáng bằng đèn LED ở ngăn lạnh giúp bạn dễ dàng tìm kiếm thực phẩm bên trong tủ trong trời tối. Hơn nữa, đèn LED còn cho ưu điểm tuổi thọ sử dụng cao và tiêu thụ ít năng lượng hơn so với đèn thông thường. 

Khay ngăn bằng kính chịu lực
Các khay ngăn sử dụng chất liệu kính chịu lực có thể chịu được sức nặng tới 100kg, được thiết kế trong suốt, giúp bạn dễ dàng nhận ra vết bẩn để vệ sinh, lau chùi. Đồng thời, các ngăn kính này cho phép bạn thay đổi vị trí dễ dàng để bạn có thể tùy biến sắp xếp thực phẩm trong tủ.

Môi chất lạnh R600a thân thiện môi trường
Tủ lạnh Hitachi R-FG560PGV7(GBK) sử dụng môi chất làm lạnh mới R600a cho hiệu quả tiết kiệm điện năng cao hơn so với các dòng sản phẩm ứng dụng loại gas cũ. Bên cạnh lợi ích kinh tế, gas R600a còn là nhiên liệu sạch với hàm lượng khí metan cao, thân thiện với môi trường. Do vậy, việc sử dụng tủ lạnh dùng gas R600a là bạn đã chung tay vào công cuộc chống biến đổi khí hậu, giảm hiệu ứng nhà kính và bảo vệ môi trường.', CAST(N'2019-10-11T00:00:00.000' AS DateTime), N'TulanhHitachiRFG560PGV7.jpg', N'TulanhHitachiRFG560PGV71.jpg', N'TulanhHitachiRFG560PGV72.jpg', 30, 4, 11, 7)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (41, N'Tủ lạnh Sharp SJFX631VSL, 626L, Inverter ', CAST(14290000 AS Decimal(18, 0)), N'Thiết kế hiện đại, sang trọng
Tủ lạnh Sharp SJ-FX631V-SL thuộc dòng tủ lạnh Double French - Premium của Sharp, có thiết kế sang trọng với cửa tủ side by side 4 cánh, màu sắc phối kết hợp tinh tế, phù hợp lắp đặt trong mọi không gian nội thất. Sản phẩm không những đáp ứng nhu cầu bảo quản thực phẩm hàng ngày cho gia đình bạn, còn góp phần tô điểm cho căn bếp thêm phần tiện nghi, hiện đại.

Tủ lạnh Sharp SJ-FX631V-SL thiết kế hiện đại, sang trọng
Thiết kế hiện đại, sang trọng

 

Thoải mái bảo quản thực phẩm với tổng dung tích 626 lít
Tủ lạnh Sharp SJ-FX631V-SL có tổng dung tích 626 lít, dung tích sử dụng 556 lít với 211 lít cho ngăn đông, 345 lít cho ngăn lạnh, giúp bạn thoải mái bảo quản thực phẩm với khối lượng lớn. Tủ rất thích hợp sử dụng cho gia đình đông người, có trên 7 thành viên.

Tủ lạnh Sharp SJ-FX631V-SL Thoải mái bảo quản với tổng dung tích 626 lít
Thoải mái bảo quản thực phẩm với tổng dung tích 626 lít

 

Công nghệ J-Tech Inverter tiết kiệm điện 
Công nghệ J-Tech Inverter của tủ lạnh Sharp SJ-FX631V-SL sở hữu lên đến 36 cấp độ làm lạnh, mang lại khả năng làm lạnh ổn định, bền bỉ và không gây ra tiếng động khó chịu. Đồng thời công nghệ này còn góp phần giảm thiểu chi phí tiêu thụ điện hằng tháng cho gia đình bạn.

Tủ lạnh Sharp SJ-FX631V-SL sử dụng công nghệ J-Tech Inverter tiết kiệm điện 
Công nghệ J-Tech Inverter tiết kiệm điện 

 

Bộ lọc phân tử Ag+Cu khử mùi hiệu quả
Tủ lạnh Sharp SJ-FX631V-SL trang bị bộ lọc phân tử Ag+Cu giúp khống chế và ngăn chặn sự phát triển của nấm mốc, vi khuẩn và mùi hôi phát tán trong không khí. Nhờ vậy mà tủ lạnh của gia đình bạn luôn có không khí trong lành, tươi mát mà không bị ám mùi lẫn lộn của nhiều loại thực phẩm khác nhau.

Tủ lạnh Sharp SJ-FX631V-SL trang bị bộ lọc phân tử Ag+Cu khử mùi hiệu quả
Bộ lọc phân tử Ag+Cu khử mùi hiệu quả

 

Hệ thống làm lạnh kép Hybrid Cooling
Hệ thống làm lạnh kép Hybrid Cooling giúp tăng cường khả năng giữ thực phẩm tươi lên đáng kể, ngăn ngừa sự mất nước ở thực phẩm, cũng như hạn chế tình trạng nhiệt độ quá lạnh và không đồng đều giữa các khu vực bên trong tủ. Nhờ vậy, thực phẩm khi bảo quản bên trong luôn được bảo quản với nhiệt độ ổn định giúp chúng luôn tươi ngon, đảm bảo giữ vị, trọn dinh dưỡng.

Tủ lạnh Sharp SJ-FX631V-SL với hệ thống làm lạnh kép Hybrid Cooling
Hệ thống làm lạnh kép Hybrid Cooling

 

Làm lạnh nhanh đồ uống
Đặc biệt, tủ còn có khả năng làm lạnh nhanh đồ uống trong thời gian ngắn mà bạn không cần phải ướp lạnh từ trước vài ngày. Với nhiệt độ làm lạnh lý tưởng từ 0 độ C đến 2 độ C, mọi thức uống giải khát của bạn và gia đình đều làm lạnh nhanh và giữ được độ lạnh lâu hơn.

Tủ lạnh Sharp SJ-FX631V-SL cho phép làm lạnh nhanh đồ uống
Làm lạnh nhanh đồ uống

 

Hệ thống chiếu sáng bằng đèn LED
Tủ lạnh SJ-FX631V-SL được Sharp trang bị hệ thống 14 đèn LED ở ngăn mát với độ rọi lên đến 482 Lux giúp tăng cường ánh sáng giúp tạo cảm giác không gian thoáng đãng. Hơn nữa, công nghệ LED còn rất tiết kiệm năng lượng và cho độ bền sử dụng cao.

Tủ lạnh Sharp SJ-FX631V-SL sử dụng hệ thống chiếu sáng bằng đèn LED
Hệ thống chiếu sáng bằng đèn LED

 

Khay ngăn bằng kính chịu lực
Các khay ngăn sử dụng chất liệu kính chịu lực, được thiết kế trong suốt, giúp bạn dễ dàng nhận ra vết bẩn để vệ sinh, lau chùi. Đồng thời, các ngăn kính này cho phép bạn thay đổi vị trí dễ dàng để bạn có thể tùy biến sắp xếp thực phẩm trong tủ.

Tủ lạnh Sharp SJ-FX631V-SL có khay ngăn bằng kính chịu lực
Khay ngăn bằng kính chịu lực

 

Môi chất lạnh R600a thân thiện môi trường
Tủ lạnh Sharp SJ-FX631V-SL sử dụng môi chất làm lạnh mới R600a cho hiệu quả tiết kiệm điện năng cao hơn so với các dòng sản phẩm ứng dụng loại gas cũ. Bên cạnh lợi ích kinh tế, gas R600a còn là nhiên liệu sạch với hàm lượng khí metan cao, thân thiện với môi trường. Do vậy, việc sử dụng tủ lạnh dùng gas R600a là bạn đã chung tay vào công cuộc chống biến đổi khí hậu, giảm hiệu ứng nhà kính và bảo vệ môi trường, giúp môi trường xanh, sạch hơn.', CAST(N'2019-10-11T00:00:00.000' AS DateTime), N'TulanhSharpSJFX631VSL.jpg', N'TulanhSharpSJFX631VSL1.jpg', N'TulanhSharpSJFX631VSL2.jpg', 30, 4, 10, 7)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (42, N'Máy giặt Hitachi SF-120XAV 220-VT, 12kg, Inverter ', CAST(9159000 AS Decimal(18, 0)), N'Thiết kế đơn giản, trang nhã
Máy giặt Hitachi SF-120XAV ​​220-VT sở hữu thiết kế đơn giản với lồng giặt đứng, cửa giặt nằm phía bên trên, giúp người dùng thuận tiện sử dụng. Sản phẩm có màu sắc phối kết hợp tinh tế, phù hợp lắp đặt trong nhiều không gian khác nhau. Thiết bị không những đáp ứng nhu cầu giặt giũ hàng ngày cho cả gia đình bạn, còn góp phần tô điểm cho không gian sống thêm vẻ tiện nghi.


Khối lượng giặt áo quần lên đến 12kg
Máy giặt Hitachi SF-120XAV 220-VT trang bị lồng giặt bằng thép không gỉ, có dung tích lớn, cho sức chứa áo quần khi giặt lên đến 12kg. Với khối lượng giặt này, bạn có thể thoải mái giặt quần áo cho cả gia đình đông người, có trên 6 thành viên mà không phải chia nhiều lần giặt.


Công nghệ giặt Dynamic-Stream Wash
Công nghệ Dynamic-Stream Wash có trên máy giặt Hitachi SF-120XAV 220-VT giúp đánh bay mọi vết bẩn từ sâu bên trong sợi vải mà không làm hỏng vải bằng sự luân chuyển hiệu quả của lượng nước lớn. Nhờ đó, quần áo sau khi giặt luôn trắng sáng và sạch sẽ như mới, không còn tình trạng vết bẩn còn lưu lại trên bề mặt vải. 


Giặt sâu 4 bước, đánh bay mọi vết bẩn
Máy giặt Hitachi SF-120XAV 220-VT có chức năng giặt sâu 4 bước, cho hiệu quả tiết kiệm bột giặt tối đa. Sau khi đổ bột giặt vào máy, máy giặt sẽ cô đặc xà phòng lại thành dạng lỏng, thẩm thấu sâu vào bề mặt vải, vì vậy quần áo không những được giặt sạch hơn mà còn lưu lại hương thơm của bột giặt.


Tính năng chống rối đồ giặt
Khi chu kỳ quay kết thúc, mâm giặt tiếp tục chuyển động theo chiều kim đồng hồ và ngược chiều kim đồng hồ để đồ giặt rơi khỏi thành lồng giặt nhờ đó gỡ rối chúng. Tính năng độc đáo này của máy giặt Hitachi SF-120XAV 220-VT giúp cho việc lấy đồ giặt ra khỏi lồng giặt dễ dàng hơn nhiều. Không bị rối đồng nghĩa với quần áo ít bị nhăn.


Cảm biến Eco 3 bước hoàn toàn mới
Máy giặt Hitachi SF-120XAV 220-VT tích hợp công nghệ cảm biến Eco hoàn toàn mới, với 3 bước hoạt động đơn giản, giúp máy giặt có thể tự động thiết lập chương trình giặt chính xác và hợp lý về khối nước sử dụng cũng như thời gian giặt giũ, giúp tiết kiệm hơn hẳn so với máy giặt thông thường không sử dụng cảm biến Eco này. 

Hoạt động của cảm biến Eco 3 bước là hoàn toàn đơn giản và dễ hiểu:

Bước 1: Đầu tiên, Eco sẽ cảm biến sơ khai về khối lượng quần áo đã được cho vào máy giặt. 
Bước 2: Cảm biến Eco điều chỉnh khối lượng đồ giặt cho phù hợp thông qua việc làm ướt hoàn toàn chúng.
Bước 3: Đây là bước cuối cùng của quá trình. Cảm biến Eco xác định chất liệu quần áo để rồi từ đó, dưa ra một chương trình giặt với thời gian giặt và lưu lượng nước thích hợp cũng như tiết kiệm nhất cho người dùng.

Hệ thống điều khiển thân thiện
Máy giặt Hitachi SF-120XAV 220-VT sử dụng phím bấm điều khiển điện tử và màn hình LED tích hợp ngay ở mặt trên của máy, cho phép người dùng thiết lập các thông số giặt giũ tiện lợi. Với màn hình LED trên máy giặt, bạn có thể dễ dàng theo dõi được thời gian giặt còn lại của máy trong chu trình giặt, xả.

', CAST(N'2019-10-11T00:00:00.000' AS DateTime), N'MaygiatHitachiSF_120XAV_220VT.jpg', N'MaygiatHitachiSF_120XAV_220VT1.jpg', N'MaygiatHitachiSF_120XAV_220VT2.jpg', 30, 4, 11, 8)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (43, N'Máy Lạnh Inverter LG V13APF (1.5HP)', CAST(11950000 AS Decimal(18, 0)), N'Thiết kế hiện đại, sang trọng
Máy Lạnh Inverter LG V13APF có thiết kế thanh lịch, mới mẻ kết hợp với vỏ ngoài màu trắng tinh tế, sản phẩm này chắc chắc sẽ mang đến vẻ đẹp tiện nghi, sang trọng, hiện đại cũng như dễ dàng kết hợp với nhiều không gian nội thất của nhà bạn.

Công suất làm lạnh 1.5 HP
Thiết bị được hoạt động mạnh mẽ với công suất làm lạnh 1.5HP, máy lạnh LG rất phù hợp với không gian phòng khách, phòng làm việc, phòng ngủ vừa và nhỏ có diện tích từ 15 - 20 m2. Ngoài ra, thiết bị có màn hình LED được tích hợp trên dàn lạnh cho phép bạn dễ dàng theo dõi chất lượng không khí trong phòng có tốt hay không và mức nhiệt hiện tại đang sử dụng, chức năng này sẽ được kích hoạt chỉ với thao tác nhấn đơn giản trên remote.





Công nghệ Dual Inverter làm lạnh nhanh
Đặc biệt, sản phẩm có chế độ làm lạnh nhanh giúp hơi lạnh lan tỏa đều trong phòng, bạn sẽ nhanh chóng được tận hưởng bầu không gian mát lạnh trong thời gian ngắn chỉ sau vài phút bật máy. Hơn nữa, máy lạnh LG còn được sử dụng công nghệ Dual Inverter trong vận hành, mang lại khả năng làm lạnh nhanh lên đến 40%, giảm rung lắc gây tiếng ồn khó chịu đến 88% nhưng vẫn đảm bảo tiết kiệm điện năng hiệu quả cho gia đình bạn.



Kết nối wifi, điều khiển bằng điện thoại
Máy Lạnh Inverter LG còn có chức năng kết nối wifi, bạn có thể điều khiển máy lạnh ở bất kỳ đâu bằng điện thoại thông minh của mình. Chức năng này rất tiện dụng khi bạn đã ra ngoài mà quên tắt máy lạnh hoặc bạn muốn khởi động máy lạnh trước khi về nhà để không phải chờ đợi lâu.



Bộ tạo ion lọc sạch không khí
Sản phẩm được tích hợp bộ lọc không khí có khả năng tạo ra ion để làm sạch luồng không khí, loại bỏ bụi bẩn, vi khuẩn và các tác nhân gây dị ứng khác, trả lại bầu không khí trong lành, thân thiện với sức khỏe của các thành viên trong gia đình.



Tích hợp 4 chế độ gió tiện dụng
Máy lạnh LG V13APF được trang bị 4 chế độ gió khác nhau để người dùng có thể chọn lựa tùy theo mục đích sử dụng. Cụ thể, với chức năng này, bạn có thể chủ động điều khiển khí lạnh tỏa ra trực tiếp theo hướng mình mong muốn (trên, dưới, trái, phải), tối ưu hóa công suất làm lạnh, cho hiệu quả làm lạnh lý tưởng nhất.', CAST(N'2019-10-11T00:00:00.000' AS DateTime), N'MayLanhInverterLG_V13APF.jpg', N'MayLanhInverterLG_V13APF1.jpg', N'MayLanhInverterLG_V13APF2.jpg', 30, 4, 5, 9)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (44, N'Tủ lạnh Samsung RT20HAR8DSA/SV, 216 lít, Inverter', CAST(4640000 AS Decimal(18, 0)), N'Thoải mái bảo quản thực phẩm
Tủ lạnh Samsung RT20HAR8DSA/SV là một lựa chọn lý tưởng dành cho không gian gia đình hiện đại nhờ thiết kế sang trọng, đẹp mắt cùng tông màu bạc tinh tế. Tủ có dung tích sử dụng là 216 lít, vì vậy rất phù hợp với gia đình từ 3 đến 5 người. Với dung tích này, bạn không còn phải lo lắng đi chợ mỗi ngày bởi thực phẩm tươi ngon cho cả nhà trong vài ngày đều có thể dễ dàng cho vào tủ lạnh, vừa tiện lợi lại tiết kiệm thời gian và công sức cho bạn.
Tủ lạnh Samsung RT20HAR8DSA/SV, 208 lít, Inverter

Công nghệ Inverter tiết kiệm điện năng
Tủ lạnh Samsung RT20HAR8DSA/SV tích hợp nghệ Digital Inverter tự động điều chỉnh tốc độ máy nén tùy theo nhu cầu làm lạnh với 7 cấp độ tuỳ chỉnh. Nhờ đó, giúp tiết kiệm năng lượng, giảm độ ồn, giảm hao mòn và tăng tuổi thọ máy.

Công nghệ inverter tiết kiệm điện năng

​Bộ lọc khử mùi kháng khuẩn​
Tủ lạnh Samsung RT20HAR8DSA/SV trang bị lọc khử mùi từ than hoạt tính giúp loại bỏ mùi khó chịu, giữ không khí trong tủ lạnh luôn tươi mát và thực phẩm trọn vị tươi ngon. Với bộ lọc khử mùi này, không khí bên trong khoang tủ sẽ được thanh trùng, khử mùi hôi hiệu quả.

Kháng khuẩn, khử mùi với bộ lọc độc đáo

Hệ thống Cool Pack giữ lạnh đến 8 tiếng
Cool Pack là một công nghệ giữ lạnh tại ngăn đông của tủ lạnh Samsung RT20HAR8DSA/SV. Bạn không phải lo lắng việc thực phẩm sẽ bị hỏng khi tủ lạnh mất điện. Khi mất điện, hệ thống trữ lạnh Cool Pack giúp duy trì thực phẩm đông lạnh lên đến 1 giờ và giúp ngăn đông giữ lạnh lên đến 8 giờ đảm bảo thực phẩm không bị bốc mùi hư hỏng.

Giữ lạnh nhiều giờ, bảo quản thực phẩm tươi ngon
Ngăn giữ ẩm tối ưu
Tủ lạnh Samsung RT20HAR8DSA/SV có giữ ẩm tối ưu kiểm soát sự lưu thông không khí để duy trì độ ẩm tối ưu, bảo quản hiệu quả các loại thực phẩm dễ hỏng, giữ thức ăn tươi ngon lâu hơn. Khi độ ẩm xuống quá thấp, ngăn giữ ẩm sẽ được khóa lại, hạn chế hơi ẩm thoát ra ngoài. Khi độ ẩm lên quá cao, ngăn giữ ẩm sẽ thoát bớt khí để duy trì độ ẩm.', CAST(N'2019-10-11T00:00:00.000' AS DateTime), N'TulanhSamsungRT20HAR8DSA_SV.jpg', N'TulanhSamsungRT20HAR8DSA_SV1.jpg', N'TulanhSamsungRT20HAR8DSA_SV2.jpg', 30, 4, 1, 7)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (45, N'Nồi cơm điện Sharp KSH-D06V 600ml 300W', CAST(455000 AS Decimal(18, 0)), N'Kiểu dáng hiện đại, đơn giản
Nồi cơm điện Sharp KSH-D06V có kiểu dáng hiện đại, đơn giản mà cứng cáp, thân nồi màu trắng trang nhã, trang trí hình bông hoa 5 cánh sinh động. Tay cầm, quai núm, hộp công tắc có màu sắc tươi sáng, trẻ trung, góp phần tô điểm thêm cho gian bếp nhà bạn thêm thời trang.





Dung tích 600ml
Nồi cơm điện Sharp KSH-D06V có dung tích 600ml đáp ứng đầy đủ nhu cầu nấu cơm cho gia đình từ 2 - 3 thành viên. Nồi có 1 mâm nhiệt phẳng, rộng giúp cơm chín nhanh, đều không bị nhão, tiết kiệm điện. Khả năng giữ ấm đến 5 giờ, giúp bạn luôn có cơm nóng sẵn sàng để thưởng thức.

Lòng nồi bằng hợp kim nhôm nấu cơm an toàn, dễ chùi rửa
Lòng nồi bằng hợp kim nhôm sáng bền, an toàn cho sức khoẻ, nấu cơm ngon, xốp, tiện lau chùi. Nồi cơm nắp rời điều khiển 2 chức năng nấu và giữ ấm dễ dàng với 1 nút gạt. Dây điện của nồi có thể tháo rời, cất gọn dễ dàng, tiện bảo quản và di chuyển nồi.', CAST(N'2019-10-11T00:00:00.000' AS DateTime), N'NoicomdienSharpKSHD06V.jpg', N'NoicomdienSharpKSHD06V1.jpg', N'NoicomdienSharpKSHD06V2.jpg', 35, 5, 10, 6)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (46, N'Bình đun siêu tốc Sharp EKJ-17VS-ST 1.7L 2200W (Bạc)', CAST(745000 AS Decimal(18, 0)), N'Chất liệu nhựa bền bỉ, an toàn
Bình đun siêu tốc Sharp EKJ-17VS-ST có vỏ ngoài được làm từ inox chất lượng cao, có khả năng chịu nhiệt tốt, đồng thời không chứa các hóa chất gây hại, đảm bảo an toàn với sức khỏe người dùng. Ngoài ra, đế bình còn có bộ điều khiển nhiệt hiện đại, đảm bảo an toàn cho người sử dụng.


Bình đun siêu tốc Sharp EKJ-17VS-ST
Thiết kế sang trọng


Nắp bật lò xo có bản lề
Chiếc bình có nút bấm mở nắp ấm vô cùng tiện lợi để bạn cho nước vào ấm một cách nhanh gọn và đơn giản. Bên cạnh đó, chiếc ấm có thiết kế miệng hình phễu để bạn rót nước sau khi đun ra khỏi ấm một cách dễ dàng mà không lo bị đổ nước ra ngoài hay bị bỏng.


Bình đun siêu tốc Sharp EKJ-17VS-ST
Đế xoay 360 độ


Thiết kế tiện dụng
Đèn báo hoạt động thuận tiện cùng vạch báo mực nước 2 bên được trang bị rõ ràng, thuận tiện cho cả người thuận tay phải và trái, giúp quan sát và châm nước vào bình thuận tiện hơn. Đế xoay 360 độ giúp bạn nhấc lên và đặt xuống được đơn giản. Dây điện có thể quấn lại quanh chân đế, tránh tình trạng mất ngăn nắp khi sử dụng.

An toàn khi sử dụng
Bạn có thể đun sôi nước một cách nhanh chóng mà không cần mất nhiều thời gian và công đoạn so với loại ấm thường. Đặc biệt, bình đun còn có hệ thống tự ngắt điện khi nước sôi và mực nước thấp, giúp tiết kiệm điện và không gây cháy nổ, an toàn cho người sử dụng.', CAST(N'2019-10-11T00:00:00.000' AS DateTime), N'BinhdunSharpEKJ_17VS_ST.jpg', N'BinhdunSharpEKJ_17VS_ST1.jpg', N'BinhdunSharpEKJ_17VS_ST2.jpg', 30, 5, 10, 6)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (47, N'Lò vi sóng cơ Sharp R-205VN-S 20L 800W (Bạc)', CAST(1229000 AS Decimal(18, 0)), N'Đa chức năng
Lò vi sóng cơ Sharp R-205VN-S 20L là sản phẩm tích hợp đa chức năng là hâm, nấu, rã đông, cho phép người dùng thỏa sức chế biến nhiều món ăn ngon cho gia đình mình. Đặc biệt, chức năng rã đông theo trọng lượng tương ứng với những khoảng thời gian nhất định, giúp người sử dụng dễ dàng chọn thời gian chế biến.
 

Lò vi sóng cơ Sharp R-205VN-S Thiết kế sang trọng

Thiết kế sang trọng
 

Bền bỉ, an toàn
Sản phẩm làm từ chất liệu hợp kim cao cấp được sơn tĩnh điện nên đặc biệt an toàn cho người sử dụng. Với công suất tối đa vào khoảng 800W cùng thời gian hẹn giờ chế biến lên đến 35 phút, lò phù hợp với những gia đình bận rộn. Khoang lò dung tích 20 lít, có đĩa xoay thủy tinh cùng đèn chiếu sáng bên trong lò. 
 

Lò vi sóng cơ Sharp R-205VN-S Dung tích 20L

Dung tích 20L
 

Hệ thống điều khiển hiện đại
Lò vi sóng sở hữu thiết kế bảng điều khiển bằng cơ giúp người sử dụng thao tác nhẹ nhàng. Nút vặn dễ điều chỉnh, giúp người dùng có thể dễ dàng điều chỉnh chế độ, công suất và thời gian thật phù hợp, cho chất lượng và hương vị món ăn hoàn hảo. Bạn có thể tùy chỉnh 1 trong 3 chức năng của lò là nấu, hâm nóng và rã đông với 5 mức công suất phù hợp, tối đa là 800 W giúp tiết kiệm nhiều thời gian nấu nướng.
 

Lò vi sóng cơ Sharp R-205VN-S Điều khiển cơ bền bỉ, dễ sử dụng

Điều khiển cơ bền bỉ, dễ sử dụng

Thiết kế sang trọng
Lò vi sóng cơ Sharp R-205VN-S 20L có màu sắc trang nhã cùng đường nét gọn gàng, tinh tế, giúp tô điểm cho không gian bếp mỗi gia đình thêm tinh tế, sang trọng. ', CAST(N'2019-10-11T00:00:00.000' AS DateTime), N'LovisongSharpR205VN_S.jpg', N'LovisongSharpR205VN_S1.jpg', N'LovisongSharpR205VN_S2.jpg', 30, 5, 10, 6)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (48, N'Nồi chiên Philips HD9643 (Đen) ', CAST(4274000 AS Decimal(18, 0)), N'Luồng nhiệt mạnh mẽ

Nồi chiên không dầu Philips HD9643 được cài đặt sẵn 4 chức năng chiên phổ biến: khoai tây chiên đông lạnh, thịt, cá và đùi gà, nhờ vậy bạn có thể dễ dàng nấu thức ăn chỉ với một lần nhấn nút. Nồi chiên tối đa được 0.8kg thực phẩm. Không chỉ tuyệt vời khi chiên rán, nồi chiên không dầu Philips HD9643 cải tiến với công nghệ TurboStar còn cho phép bạn nướng thịt, nướng bánh và quay những thực phẩm ưa thích trong một lần và giữ ấm cho mọi thời điểm dùng bữa trong ngày.

Nồi chiên Philips HD9643 sử dụng công nghệ TurboStar cho luồng nhiệt được truyền mạnh mẽ, ổn định giúp bạn tiết kiệm công sức, không phải lật trở nhiều ngay cả khi thức ăn chất chồng lên nhau, để thức ăn đạt được độ "giòn bên ngoài, mềm bên trong".

Nồi chiên Philips HD9643 sang trọng

Nồi chiên Philips HD9643 làm cho không gian bếp sang trọng hơn

Công suất hoạt động lớn
Nồi chiên Philips HD9643 với công suất hoạt động lên đến 1425W, giúp bạn sử dụng ngay lập tức sau khi khởi động và duy trì vận tốc cao trên toàn bộ quá trình nấu nướng, thích hợp cho nhu cầu sử dụng mỗi ngày. Nồi chiên Philips HD9643 trang bị giỏ Quickclean với dạng lưới được làm bằng chất liệu chống dính, có thể tháo rời, giúp bạn vệ sinh thật dễ dàng và nhanh chóng.

Nồi chiên không dầu Philips HD9643 kèm khay nướng

Nồi chiên không dầu Philips HD9643 kèm khay nướng

Điều chỉnh nhiệt độ dễ dàng
Nồi chiên Philips HD9643 có núm xoay QuickControl giúp bạn dễ dàng cài đặt nhiệt độ theo mong muốn, cùng chế độ hẹn giờ thông minh giúp canh chỉnh cho phù hợp với từng loại thực phẩm.', CAST(N'2019-10-11T00:00:00.000' AS DateTime), N'NoichienPhilipsHD9643Den.jpg', N'NoichienPhilipsHD9643Den1.jpg', N'NoichienPhilipsHD9643Den2.jpg', 30, 5, 6, 6)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (49, N'Nồi áp suất điện Philips HD2103 900W 5L (Đen xám)', CAST(1489000 AS Decimal(18, 0)), N'Công suất 900W
Nồi áp suất điện Philips HD2103 có công suất lớn giúp nhiệt độ sôi của nước cao, nhờ vậy rút ngắn thời gian nấu và giảm hao tốn điện năng.



14 chức năng nấu
Nồi có 14 chức năng nấu ăn thông dụng được cài đặt sẵn, giúp bạn chế biến được nhiều món ăn, đa dạng bữa ăn gia đình.

Chất liệu cao cấp, an toàn
Lòng nồi được làm bằng chất liệu hợp kim cao cấp, phủ 5 lớp chống dính siêu bền giúp dẫn nhiệt hiệu quả hơn, việc chế biến món ăn được nhanh chóng. Lớp phủ Whitford màu vàng đặc biệt giúp chống xước và chống dính, tránh tình trạng bám dính thức ăn, cũng như dễ dàng vệ sinh sản phẩm. Vỏ ngoài bằng thép không gỉ, mang lại giá trị sử dụng lâu bền, còn giúp làm sạch hiệu quả.



Thiết kế an toàn
Nồi trang bị van xả áp suất tự động, đảm bảo an toàn trong khi nấu ăn. An toàn khi sử dụng với tay cầm trên nắp và thân nồi làm từ chất liệu nhựa cách nhiệt tốt, bảo vệ tay không bị bỏng khi tiếp xúc.



Dễ dàng sử dụng
Nồi áp suất điện Philips HD2103 điều khiển bằng núm xoay, hiển thị rõ và đầy đủ các chức năng ngay bên ngoài thân nồi, bạn có thể sử dụng nồi một cách đơn giản và dễ dàng.



Thiết kế tiện dụng
Nắp đậy kín giúp hơi nước không thoát ra nhiều, cho thức ăn nhanh chín và không tiêu hao các chất bổ dưỡng trong thực phẩm. Cài đặt thời gian có thể điều chỉnh 0-30 phút để giữ áp suất. Van nhạy khóa nắp trên khi áp suất cao. Tự động giữ ấm để giữ thức ăn tươi ngon trong 6 tiếng. Bộ hẹn giờ dễ lập trình, khi nồi bắt đầu giữ áp suất, bộ hẹn giờ bắt đầu đếm ngược. Khi hết giờ, nồi tự động chuyển sang giữ ấm. Dây điện có thể tháo rời, thuận tiện lưu trữ sau khi sử dụng.', CAST(N'2019-10-11T00:00:00.000' AS DateTime), N'NoiapsuatDPhilipsHD2103.jpg', N'NoiapsuatDPhilipsHD21031.jpg', N'NoiapsuatDPhilipsHD21032.jpg', 30, 5, 6, 6)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (50, N'Máy xay sinh tố Philips HR2118 600W 1.5L (Trắng)', CAST(1188000 AS Decimal(18, 0)), N'Thiết kế hiện đại, kiểu dáng trang nhã
Máy xay sinh tố Philips HR2118 sở hữu thiết kế các phím chức năng ngay chính diện bầu máy với các thông số chỉ dẫn rõ nét, giúp việc thao tác sử dụng trở nên dễ dàng hơn, phù hợp với mọi thành viên trong gia đình. Vỏ máy làm từ nhựa PP cao cấp, cứng cáp và chắc chắn cho độ bền cao. Phần chân của máy phủ lớp cao su chống trơn trượt tốt cho phép máy có thể đứng vững vàng trên các bề mặt.

Thiết kế hiện đại, kiểu dáng trang nhã
Thiết kế hiện đại, kiểu dáng trang nhã

Lưỡi xay bằng thép không gỉ cao cấp
Philips HR2118 sử dụng lưỡi dao làm từ chất liệu thép không gỉ với lưỡi cắt hình răng cưa siêu sắc bén. Bộ lưỡi cắt này có thể tháo rời để vệ sinh một cách dễ dàng. Bộ phận lọc tiện lợi giúp bạn loại bỏ hạt và mắt trái cây ra khỏi nước ép, giúp ly nước ép trở nên ngon hơn, khi uống không bị cảm giác khó chịu.

Lưỡi xay bằng thép không gỉ cao cấp
Lưỡi xay bằng thép không gỉ cao cấp

Năm tốc độ nhồi tùy chỉnh
Sản phẩm có phương thức hoạt động xử lý theo nhiều tốc độ khác nhau và ở nhiều cấp độ khác nhau bằng các lựa chọn cài đặt, bạn có thể dễ dàng lựa chọn cho mình tốc độ phù hợp với nhu cầu sử dụng. Đặc biệt, nút làm sạch nhanh độc đáo chỉ với một lần chạm sẽ làm sạch bình và lưỡi cắt hiệu quả, tiết kiệm phần lớn thời gian và công sức vệ sinh của các bà nội trợ.

Năm tốc độ nhồi tùy chỉnh
Năm tốc độ nhồi tùy chỉnh

Công suất hoạt động tối đa 600W
Công suất hoạt động tối đa của Philips HR2118 lên tới 600W cho phép xay được hầu hết các loại rau củ, hoa quả cho phép bạn có được ly sinh tố thơm ngon theo sở thích của bản thân. 

Công suất hoạt động tối đa 600W
Công suất hoạt động tối đa 600W

Dung tích cối nhựa 1.5L
Dung tích cối nhựa lên tới 1.5L giúp bạn có thể xay cùng một lúc nhiều loại thực rau củ, hoa quả một lúc tiết kiệm nhiều thời gian. Đồng thời, với cối xay nhở bạn dễ dàng xay các thực phẩm khô như hạt tiêu, cà phê... 

Dung tích cối nhựa 1.5L
Dung tích cối nhựa 1.5L

Cách làm sinh tố dâu tây
Dâu tây là món ăn yêu thích của rất nhiều chị em không chỉ bởi hương vị ngọt dịu, màu sắc hấp dẫn mà còn bởi những tác dụng tuyệt vời cho cơ thể. Các nhà khoa học cho rằng, các chất dinh dưỡng có trong dâu đánh bật các choresterol có hại đồng thời hỗ trợ mạnh mẽ cho sức khỏe của tim, cung cấp chất xơ, đảm bảo hệ miễn dịch cho cơ thể. Dâu tây còn giúp duy trì vóc dáng rất hiệu quả vì không chứa chất béo hay lượng calo quá cao.

Cách làm sinh tố dâu tây
Cách làm sinh tố dâu tây

#Nguồn ảnh: Internet

Chọn nguyên liệu
- Dâu tây: Hiện nay trên thị trường có rất nhiều loại dâu tây do lấy giống từ những nơi khác nhau: Dâu tây Newealand, Pháp, Mỹ,… và các loại dâu có nguồn gốc từ Trung Quốc. Các giống dâu tây trồng tại Đà Lạt thường có kích thước quả không đồng đều, không nhẵn mịn, đỏ phần thân và dần trắng lên ở phần cuống. Trong khi đó, các loại dâu tây Trung Quốc thì thường đều đặn, đỏ thẫm, cứng và mịn màng.', CAST(N'2019-10-10T00:00:00.000' AS DateTime), N'MayxayPhilipsHR2118Trang.jpg', N'MayxayPhilipsHR2118Trang1.jpg', N'MayxayPhilipsHR2118Trang2.jpg', 30, 5, 6, 6)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (51, N'Máy pha cà phê Philips HD7447 1000W', CAST(1440000 AS Decimal(18, 0)), N'Máy pha cà phê Philips HD7447 1000W sở hữu thiết kế hiện đại với các chỉ báo mức nước cực kỳ thuận tiện và dễ sử dụng. Người dùng có thể đổ nước dễ dàng vào ngăn chứa sao cho phù hợp với nhu cầu sử dụng của bản thân.  

Sản phẩm còn được trang bị tính ngăn rò rỉ nước, không làm bẩn ra đĩa hâm. Tính năng đáng chú ý này sẽ giúp bạn dễ dàng phân chia hay pha nhiều tách cà phê theo nhu cầu mà không làm vương vãi xung quanh. Ngoài ra, tất cả các bộ phận của máy đều có thể rửa được bằng máy rửa chén, giúp làm sạch dễ dàng và thuận tiện trong việc cất giữ.

Máy pha cà phê Philips HD7447 1000W
Máy pha cà phê Philips HD7447 có kiểu dáng hiện đại, sang trọng
Bộ phận giữ bộ lọc của máy pha cà phê Philips HD7447 1000W có thể tháo rời, điều này giúp nạp cà phê hoặc làm sạch dễ dàng. Kèm theo đó là đèn báo LED cho biết máy đang hoạt động và tay cầm rộng rãi để bạn dễ di chuyển và rót cà phê ra tách. Sản phẩm sử dụng cà phê xay để pha. ', CAST(N'2019-10-01T00:00:00.000' AS DateTime), N'MayphacaphePhilipsHD7447.jpg', N'MayphacaphePhilipsHD74471.jpg', N'MayphacaphePhilipsHD74472.jpg', 30, 5, 6, 6)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (52, N'Máy làm bánh sandwich Philips HD2393 (Trắng phối xám)', CAST(579000 AS Decimal(18, 0)), N'Thiết kế hiện đại, nhỏ gọn
Máy làm bánh sandwich Philips HD2393 được thiết kế hiện đại, nhỏ gọn có thể đặt bất cứ đâu ở căn bếp của gia đình mà không chiếm quá nhiều diện tích. Máy dễ sử dụng, bạn có thể chế biến sandwich cho cả gia đình chỉ trong vài phút.

Máy làm bánh sandwich Philips HD2393 màu trắng trang nhã

Lớp phủ chống dính
Máy làm bánh sandwich Philips HD2393 sử dụng hệ thống khóa dễ dàng ấn xuống, chỉ cần ấn xuống là có thể đóng và khóa an toàn. Với lớp phủ chống dính, bánh không bị dính, cháy khét, giúp bạn dễ dàng lau chùi vệ sinh sản phẩm sau mỗi lần sử dụng.

Máy làm bánh sandwich Philips HD2393 lòng phủ chống dính

Hoạt động mạnh mẽ
Philips HD2393 có công suất mạnh mẽ 820W cho nhiệt độ hoạt động cao, những lát bánh mì sẽ chín đều và vàng hơn. Thiết kế khay chia bánh tiện lợi, đảm bảo phần nhân được đặt gọn bên trong bánh hot dog. 

Máy làm bánh sandwich Philips HD2393 công suất 820W

Đèn báo hoạt động trực quan
Ngăn cuốn bảo quản dây điện, bảo vệ dây điện tránh các tác động của môi trường làm hư hỏng thiết bị, tiết kiệm không gian khi cất giữ. Chân đế máy bằng cao su, hạn chế trơn trượt trong quá trình chế biến, đảm bảo an toàn khi sử dụng. Máy có đèn báo thông minh, tự động chuyển đèn từ màu đỏ sang màu xanh báo hiệu quy trình làm bánh đã hoàn tất.', CAST(N'2019-10-01T00:00:00.000' AS DateTime), N'MaySandwichPhilipisHD2393.jpg', N'MaySandwichPhilipisHD23931.jpg', N'MaySandwichPhilipisHD23932.jpg', 25, 5, 6, 6)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (53, N'Lò nướng điện Sharp EO-B46RCSV-BK 2000W 46L (Đen)', CAST(2000000 AS Decimal(18, 0)), N'Thiết kế nhỏ gọn
Lò nướng điện Sharp EO-B46RCSV-BK có thiết kế nhỏ gọn, tiết kiệm không gian và phù hợp với nhiều thiết kế nội thất nhà bếp khác nhau. Sử dụng chất liệu bền bỉ, cứng cáp, dễ dàng vệ sinh, lau chùi, giúp mang đến độ bền sử dụng lâu dài theo thời gian.


Lò nướng điện Sharp EO-B46RCSV-BK
Lò nướng điện Sharp EO-B46RCSV-BK

Lò nướng điện Sharp EO-B46RCSV-BK
Khoang lò rộng rãi

Lò nướng điện Sharp EO-B46RCSV-BK
Đèn lò tiện lợi


Chức năng nướng đối lưu
Hệ thống quạt đối lưu bên trong lò giúp lưu thông khí nóng làm cho thực phẩm chín đều, vàng đều và giòn đều. Ngoài ra, với cơ chế quay đều, các món nướng như gà quay, vịt quay sẽ trở nên dễ dàng hơn bao giờ hết. Bên cạnh đó, sự kết hợp giữa dàn nướng trên và dàn nướng dưới giúp bạn thực hiện được nhiều loại món ăn khác nhau với độ chín đều hoàn hảo.


Lò nướng điện Sharp EO-B46RCSV-BK
Chế độ nướng đối lưu

Lò nướng điện Sharp EO-B46RCSV-BK
Chế độ nướng xiên quay trên và dưới


Chế độ hẹn giờ tiện lợi
Sharp EO-B46RCSV-BK có chức năng hẹn giờ lên đến 120 phút, cài đặt thời gian nướng phù hợp sẽ giúp các món ăn được thực hiện với độ ngon hoàn hảo. Trong suốt thời gian nướng, bạn có thể dành thêm thời gian để thực hiện các công việc nhà và chăm sóc con cái.


Lò nướng điện Sharp EO-B46RCSV-BK
Hẹn giờ tiện lợi


Công suất cao
Lò nướng Sharp EO-B46RCSV-BK có công suất 2000W mạnh mẽ sẽ giúp các món ăn được thực hiện nhanh chóng với độ giòn tuyệt hảo, tiết kiệm thời gian cho người nội trợ bận rộn.', CAST(N'2019-10-01T00:00:00.000' AS DateTime), N'LonuongSharpEOB46RCSV_BK.jpg', N'LonuongSharpEOB46RCSV_BK1.jpg', N'LonuongSharpEOB46RCSV_BK2.jpg', 35, 5, 10, 6)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (54, N'Camera HD 720p Dahua HAC-HDW1000MP-S3 (Trắng)

', CAST(340000 AS Decimal(18, 0)), N'Thiết kế hỗ trợ quay ngoài trời
Camera IP HD 720p Dahua HAC-HDW1000MP-S3 là một thiết bị an ninh được thiết kế để đảm bảo sự an toàn cho người dùng. Với kiểu dáng phù hợp với mọi không gian quay ngoài trời, nhỏ gọn, chất liệu vỏ plastic cao cấp cùng tính năng chống nước mang độ bền bỉ cao cho sản phẩm.

Góc quan sát rộng 83.4 độ
Thiết bị trang bị độ phân giải HD 720p với ống kính 2.8mm, góc nhìn quan sát ngang rộng tới 83.4 độ điều chỉnh được, cho phép người dùng có thể xem được nhiều chi tiết chân thật nhất. Ngoài ra, sản phẩm có đèn LED hồng ngoại ban đêm nhìn xa 20m, giúp mang đến sự hỗ trợ tối đa trong quá trình sử dụng.

Thuận tiện kết nối và lưu trữ dữ liệu
Camera hoạt động tốt trong môi trường làm việc từ -30°C~+60°C, khoảng cách truyền tải trên cáp đồng trục lên đến 800m với cáp 75-3 ôm. Hỗ trợ chế độ ngày đêm (ICR), tự động cân bằng trắng (AWB), tự động bù sáng (AGC), chống ngược sáng (BLC), chống nhiễu (3D-DNR).', CAST(N'2019-10-01T00:00:00.000' AS DateTime), N'CameraDahuaHAC_HDW1000MP_S3.jpg', N'CameraDahuaHAC_HDW1000MP_S31.jpg', N'CameraDahuaHAC_HDW1000MP_S32.jpg', 35, 6, 12, 11)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (55, N'Camera IP hồng ngoại 1.0 Megapixel Dahua DS2130FIP', CAST(740000 AS Decimal(18, 0)), N'Camera Thân IP DAHUA DS2130FIP là camera thân IP  cao cấp của Dahua, cho dự án công trình vừa và nhỏ lắp những nơi có tình hình an ninh phức tạp. Ngoài ra camera có khả năng quan sát chống ngược sáng,Tự động điều chỉnh ánh sáng, tự động lấy nét,cho hình ảnh thật.Chức năng định vị 3D thông minh.', CAST(N'2019-10-03T00:00:00.000' AS DateTime), N'CameraHongngoaiDahuaDS2130FIP.jpg', N'CameraHongngoaiDahuaDS2130FIP1.jpg', N'CameraHongngoaiDahuaDS2130FIP2.jpg', 35, 6, 12, 11)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (56, N'Camera IP Wifi Dahua IPC-C15P 1.3MP (Trắng)', CAST(980000 AS Decimal(18, 0)), N'Quan sát phạm vi rộng lớn
Camera IP Wifi Dahua IPC-C15P là dòng camera IP không dây "Home-use Series" của Dahua, được thiết kế hiện đại và chắc chắn cho chất lượng hình ảnh nổi bật với độ phân giải cao. Thiết bị sử dụng ống kính cố định 2.3mm, góc nhìn 120 độ, cung cấp những góc quan sát rộng và chi tiết để bạn có thể kiểm soát trong phạm vi mong muốn.
 

Camera IP Wifi Dahua IPC-C15P
Thiết kế tinh tế, sang trọng
 

Cho hình ảnh chất lượng rõ ràng
Cảm biến 1/3'''' 1.3 Megapixel CMOS với độ phân giải 1.3MP cho hình ảnh sắc nét, rõ ràng. Ngoài ra, camera còn trang bị nhiều chức năng hiện đại như: chế độ ngày đêm (ICR), chống ngược sáng (DWDR), tự động cân bằng trắng (AWB), tự động bù sáng (AGC), chống ngược sáng (BLC), chống nhiễu (3D-DNR), giúp hình ảnh luôn có chất lượng tối đa.

Tính năng hiện đại
Tầm xa hồng ngoại 10 mét với công nghệ hồng ngoại thông minh đủ để bao phủ toàn bộ không gian của những căn phòng thông thường như phòng khách, phòng ngủ... Vỏ thiết bị được làm bằng nhựa bền đẹp, phù hợp lắp đặt trong nhà.
 

Camera IP Wifi Dahua IPC-C15P
Cấu tạo chắc chắn, khoa học
 

Thuận tiện lưu trữ
Với loa và micro tích hợp sẵn, bạn có thể trò chuyện 2 chiều với gia đình, bạn bè một cách rõ ràng, chất lượng âm thanh trung thực. Thiết bị còn hỗ trợ khe cắm thẻ nhớ Micro SD tối đa 128GB, giúp việc lưu trữ dữ liệu dễ dàng, thuận tiện hơn. Là sản phẩm ứng dụng công nghệ hiện đại, Dahua IPC-C15P có tích hợp Wifi và hỗ trợ Easy4ip Cloud.', CAST(N'2019-10-03T00:00:00.000' AS DateTime), N'CameraIPWifiDahuaIPCC15P.jpg', N'CameraIPWifiDahuaIPCC15P1.jpg', N'CameraIPWifiDahuaIPCC15P2.jpg', 35, 6, 12, 10)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (57, N'Camera AHD Elitek ECA-L10813 (Trắng)', CAST(299000 AS Decimal(18, 0)), N'Camera AHD Elitek ECA-L10813 sử dụng cảm biến hình ảnh siêu nhạy giúp cho máy thu được những hình ảnh chất lượng cao. Camera có độ phân giải 1.3MP, chuẩn hình ảnh HD 1280 x 960 Pixels. Sản phẩm còn được trang bị ống kính 3,6mm lens, F2.0, góc nhìn lớn, đường truyền tốc cao hỗ trợ khoảng cách lên tới 500-700m không bị suy hao, nhờ vậy mà máy có khả năng bao quát tốt để có thể giám sát trong một khoảng không gian rộng hơn những loại camera khác. Dải nhiệt hoạt động từ -30 - 65 độ C, cho phép máy hoạt động ổn định trong những điều kiện thời tiết khắc nghiệt. Sản phẩm thích hợp sử dụng tại hộ gia đình, siêu thị, cửa hàng tạp hóa...', CAST(N'2019-10-03T00:00:00.000' AS DateTime), N'CameraAHDElitek_ECAL10813.jpg', N'CameraAHDElitek_ECAL108131.jpg', N'CameraAHDElitek_ECAL108132.jpg', 35, 6, 13, 11)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (58, N'Camera IP giám sát kiêm báo động Elitek 8710 1.0MP dùng phần mềm Xmeye (Trắng)', CAST(599000 AS Decimal(18, 0)), N'Giúp giám sát an ninh hiệu quả
Camera IP giám sát kiêm báo động Elitek 8710 1.0MP dùng phần mềm Xmeye có khả năng quan sát mọi góc nhìn trong nhà bạn và sẽ báo động ngay vào điện thoại cho bạn có kẻ lạ xâm nhập vào nhà khi bạn không ở nhà. Với chiếc camera hiện đại này, bạn có thể giám sát an ninh nhà mình, quan sát mọi việc ở nhà, biết được hôm nay con yêu đang làm gì hoặc thú cưng ở nhà thế nào và nhiều vấn đề hơn nữa mỗi khi đi vắng, ngoài ra còn có thể liên hệ với người thân bên nước ngoài.
 

Camera IP giám sát kiêm báo động Elitek 8710 1.0MP
Nhỏ gọn, dễ sử dụng
 

Tính năng camera quan sát
Tính năng camera quan sát giúp bạn quan sát từ xa, mọi lúc mọi nơi thông qua điện thoại di động. Camera Xmeye Elitek 8710 hỗ trợ động cơ xoay thông minh có thể xem góc đứng 120 độ và góc ngang 355 độ giúp bạn quan sát toàn bộ không gian nhà bạn mà không cần phải lắp thêm một chiếc camera nào nữa.
 

Camera IP giám sát kiêm báo động Elitek 8710 1.0MP dùng phần mềm Xmeye
Chức năng hiện đại

 

Tính năng báo động khi có chuyển động
Là một trong những tính năng nổi bật của chiếc camera Xmeye Elitek 8710, máy có thể phát hiện chuyển động trong vòng 10m và lập tức thông báo đến điện thoại của bạn. Ngoài ra, Xmeye Elitek 8710 còn hỗ trợ kết nối với các thiết bị báo động như hồng ngoại, công tắc từ, remote, báo cháy... Bạn có thể mua thêm những thiết bị này để kết nối vào Xmeye Elitek 8710 nhằm tăng thêm hiệu quả báo động và cảnh báo cho nhà bạn.
 ', CAST(N'2019-10-03T00:00:00.000' AS DateTime), N'CameraIPElitek8710.jpg', N'CameraIPElitek87101.jpg', N'CameraIPElitek87102.jpg', 35, 6, 13, 11)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [NgayCapNhat], [AnhBia], [AnhMoTa1], [AnhMoTa2], [SoLuongTon], [MaCD], [MaNSX], [MaLoai]) VALUES (59, N'Bộ 4 Camera AHD Elitek ECA-50913(Trắng) - Đầu ghi Elitek + Ổ cứng 250GB', CAST(3034000 AS Decimal(18, 0)), N'Camera AHD Elitek ECA-L50913 sử dụng cảm biến hình ảnh siêu nhạy giúp cho máy thu được những hình ảnh chất lượng cao. Camera có độ phân giải 1.3MP, chuẩn hình ảnh HD 1280 x 960 Pixels. Sản phẩm còn được trang bị ống kính 3,6mm lens, F2.0, góc nhìn lớn, đường truyền tốc cao hỗ trợ khoảng cách lên tới 500-700m không bị suy hao, nhờ vậy mà máy có khả năng bao quát tốt để có thể giám sát trong một khoảng không gian rộng hơn những loại camera khác. Dải nhiệt hoạt động từ -30 - 65 độ C, cho phép máy hoạt động ổn định trong những điều kiện thời tiết khắc nghiệt. Sản phẩm thích hợp sử dụng tại hộ gia đình, siêu thị, cửa hàng tạp hóa...', CAST(N'2019-10-03T00:00:00.000' AS DateTime), N'CameraAHDElitek_ECA509131.jpg', N'CameraAHDElitek_ECA50913.jpg', N'CameraAHDElitek_ECA509132.jpg', 35, 6, 13, 11)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_DonHang] FOREIGN KEY([MaDH])
REFERENCES [dbo].[DonHang] ([MaDH])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_DonHang]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_SanPham]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_KhachHang]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_ChuDe] FOREIGN KEY([MaCD])
REFERENCES [dbo].[ChuDe] ([MaCD])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_ChuDe]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_Loai] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[Loai] ([MaLoai])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_Loai]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaSanXuat] FOREIGN KEY([MaNSX])
REFERENCES [dbo].[NhaSanXuat] ([MaNSX])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaSanXuat]
GO
USE [master]
GO
ALTER DATABASE [QL_BanHangDienTu] SET  READ_WRITE 
GO
